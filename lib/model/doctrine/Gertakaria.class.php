<?php

/**
 * Gertakaria
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    gerkud
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class Gertakaria extends BaseGertakaria
{
	const TXANTILOIAK_PATH = '../txantiloiak';

	const TXANTILOIA_FITXATEGIA_LANGILEAK = 'langileak';
	const TXANTILOIA_FITXATEGIA_HORKONPON = 'herritarrak';

	const TXANTILOIA_LOGOTIPOA = '[logotipoa]';

	const TXANTILOIA_DATUAK_ID = '[id]';
	const TXANTILOIA_DATUAK_LABURPENA = '[laburpena]';
	const TXANTILOIA_DATUAK_DESKRIBAPENA = '[deskribapena]';
	const TXANTILOIA_DATUAK_EKINTZA = '[ekintza]';
	const TXANTILOIA_DATUAK_ALDAKETA = '[aldaketa]';
	const TXANTILOIA_DATUAK_LANGILEA = '[langilea]';
	const TXANTILOIA_DATUAK_SORTZE_DATA = '[sortze_data]';
	const TXANTILOIA_DATUAK_IZENBURUA = '[izenburua]';
	const TXANTILOIA_DATUAK_ERAKUNDEA = '[erakundea]';

	const TXANTILOIA_CSS_ALDAKETA = '[css-aldaketa]';

	public function save(Doctrine_Connection $conn = null)
	{
		$berria = $this->isNew();

		$conn = $conn ? $conn : Doctrine_Core::getTable('Gertakaria')->getConnection();
		$conn->beginTransaction();
		try
		{
			$ret = parent::save($conn);
			$conn->commit();

			// eskaera berria bada, bidali mezua saileko langileei
			if ($berria)
				$this->ohartarazi();

			return $ret;
		}
		catch (Exception $e)
		{
			$conn->rollBack();
			throw $e;
		}
	}

	public function getAbisuaNork()
	{
		if ($this->getKontaktua()->has_data())
			return $this->getKontaktua();
		else
			return $this->data['abisuaNork'];
	}

	public function getRealAbisuaNork()
	{
		return $this->data['abisuaNork'];
	}

	public function getFitxategiak()
	{
		$q = Doctrine_Query::create()
			->from('Fitxategia f')
			->where('f.gertakaria_id = ?', $this->getId());

		return $q->execute();
	}

	public function getIruzkinak()
	{
		$q = Doctrine_Query::create()
			->from('Iruzkina i')
			->where('i.gertakaria_id = ?', $this->getId())
			->orderBy('created_at');

		return $q->execute();
	}

	public function getKoordenadak()
	{
		$q = Doctrine_Query::create()
			->from('geo g')
			->where('g.gertakaria_id = ?', $this->getId());

		return $q->execute();
	}

	public function getEgoeraKolorea()
	{
		$q = Doctrine_Query::create()
			->from('Egoera e')
			->where('e.id = ?', $this->getEgoeraId());
		return $q->execute();
	}

	public function getLehentasunaKolorea()
	{
		$q = Doctrine_Query::create()
			->from('Lehentasuna l')
			->where('l.id = ?', $this->getLehentasunaId());
		return $q->execute();
	}

	public function getIruzkinakCount()
	{
		$count = 0;

		foreach ($this->getIruzkinak() as $iruzkina)
			if ($iruzkina->getEkintzaId() == 1)
				$count++;

		return $count;
	}

	/*
	 * Gertakariaren oharra jaso behar duten langile guztien e-mailak itzuli
	 */
	public function getAbisuaNori($langilea, $egoera_aldaketa)
	{
		$nori = array();

		$erabiltzaileak = null;

		$saila = $this->getSaila();
		$mota = $this->getMota();
		if ($this->getSailaId() != null)
			$erabiltzaileak = $saila->getLangileak();
		else
			$erabiltzaileak = $mota->getLangileak();

		// gertakariaren sortzailea gehitu
		if ($this->getLangileaId())
			array_push($erabiltzaileak, $this->getLangileaId());

		// gertakariaren bikoizketen langileak gehitu
		$bikoiztuenLangileak = $this->getBikoiztuenLangileak();
		foreach ($bikoiztuenLangileak as $erab)
		{
			array_push($erabiltzaileak, $erab);
		}

		foreach ($erabiltzaileak as $erab_id)
		{
			// ez mezurik bidali ekintza sortu duen langileari
			if ($langilea && $langilea->getId() == $erab_id)
				continue;

			$erab = Doctrine_Core::getTable('langilea')->find($erab_id);

			$ohartarazi = true;
			switch ($erab->getOhartarazteaId())
			{
				// ez ohartarazi
				case 1:
					$ohartarazi = false;
					break;
				// ohartarazi egoera aldaketekin bakarrik
				case 2:
					$ohartarazi = $egoera_aldaketa;
					break;
			}

			if (!$ohartarazi)
				continue;

			if (!in_array($erab->getEmailAddress(), $nori))
				array_push($nori, $erab->getEmailAddress());
		}

		return $nori;
	}
	protected function ohartarazi()
	{
		$langilea = $this->getLangilea();
		$nori = $this->getAbisuaNori($langilea, true);
		$ekintza = __('Eskaera berria');
		$aldaketa = $this->getDeskribapena();
		$mezua = $this->mezuaSortu(self::TXANTILOIA_FITXATEGIA_LANGILEAK, $langilea, $ekintza, $aldaketa);
		$gaia = sprintf('[%s #%d] %s (%s)', __('Gertakaria'), $this->getId(), $this->getLaburpena(), $ekintza);
		$this->mezuaBidali($nori, $gaia, $mezua, true);
	}
	public function ohartaraziKontaktua()
	{
		if (!sfConfig::get('gerkud_api_ohartarazi_kontaktua'))
			return;

		$kontaktuak = array();

		$kontaktua = $this->getKontaktua();
		if ($kontaktua && $kontaktua->getPosta() !== null)
			$kontaktuak[] = $kontaktua;

		$bikoiztuak = $this->getBikoiztuak();
		foreach ($bikoiztuak as $gertakaria)
		{
			$kontaktua = $gertakaria->getKontaktua();
			if ($kontaktua && $kontaktua->getPosta() !== null)
				$kontaktuak[] = $kontaktua;
		}

		foreach ($kontaktuak as $kontaktua)
		{
			// cambiar temporalmente el idioma de usuario para poder enviar
			// la notificacion al ciudadano en el idioma correcto
			$culture = sfContext::getInstance()->getUser()->getCulture();
			if (!empty($kontaktua->getHizkuntza()))
				sfContext::getInstance()->getUser()->setCulture($kontaktua->getHizkuntza());

			$gaia = __('HorKonpon: ohartarazpena');
			$mezua = $this->mezuaSortu(self::TXANTILOIA_FITXATEGIA_HORKONPON, null, null, null);

			sfContext::getInstance()->getUser()->setCulture($culture);

			$nori = array();
			$nori[] = $kontaktua->getPosta();
			$this->mezuaBidali($nori, $gaia, $mezua, false);
		}
	}
	public function mezuaSortu($fitxategia, $langilea, $ekintza, $aldaketa)
	{
		$culture = sfContext::getInstance()->getUser()->getCulture();

		$mezua = file_get_contents(sprintf('%s/%s_%s.template', self::TXANTILOIAK_PATH, $fitxategia, $culture));

		$mezua = str_replace(self::TXANTILOIA_DATUAK_ID, $this->getId(), $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_LABURPENA, $this->getLaburpena(), $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_DESKRIBAPENA, $this->getDeskribapena(), $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_EKINTZA, $ekintza, $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_ALDAKETA, $aldaketa, $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_SORTZE_DATA, date(sfConfig::get('gerkud_data_formatoa'), strtotime($this->getCreatedAt())), $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_LANGILEA , $langilea ? $langilea->getName() : '', $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_IZENBURUA , sfConfig::get('gerkud_izenburua'), $mezua);
		$mezua = str_replace(self::TXANTILOIA_DATUAK_ERAKUNDEA , sfConfig::get('gerkud_erakundea'), $mezua);

		if (!empty($ekintza))
			$mezua = str_replace(self::TXANTILOIA_CSS_ALDAKETA, 'inherit', $mezua);
		else
			$mezua = str_replace(self::TXANTILOIA_CSS_ALDAKETA, 'none', $mezua);

		return $mezua;
 	}
	public function mezuaBidali($nori, $gaia, $gorputza, $izkutua)
	{
		// ez du inorrek abisua jaso nahi
		if (count($nori) == 0)
			return;

		$mezua = Swift_Message::newInstance();
		$mezua->setContentType('text/html');

		if ($izkutua)
			$mezua->setBcc($nori);
		else
			$mezua->setTo($nori);

		$mezua->setFrom(sfConfig::get('gerkud_abisuak_nork'));
		$mezua->setSubject($gaia);

		// Mezuaren gorputzan logotipoa ezarri bada, fitxategia erantsi
		// eta helbidea berrezarri
		if (strpos($gorputza, self::TXANTILOIA_LOGOTIPOA ) !== false)
		{
			$cid = $mezua->embed(Swift_Image::fromPath('./images/logoa_mail.jpg'));
			$gorputza = str_replace(self::TXANTILOIA_LOGOTIPOA , $cid, $gorputza);
		}

		$mezua->setBody($gorputza);

		$mailer = sfContext::getInstance()->getMailer();

		try
		{
			$mailer->send($mezua);
		}
		catch (Swift_TransportException $e)
		{
			sfContext::getInstance()->getLogger()->crit('Errorea mezua bidaltzerakoan:');
			sfContext::getInstance()->getLogger()->crit($e);

			echo '<script>alert("Errorea abisua bidaltzean")</script>';
		}
		catch (Exception $e)
		{
			echo '<script>alert("Errorea abisua bidaltzean")</script>';
		}
	}
	public function getBikoiztuak()
	{
		$amaiera_id = $this->getId();

		$sql = 'SELECT hasiera_id FROM erlazioak WHERE amaiera_id = :amaieraId';
		$cn = Doctrine_Manager::getInstance()->connection();
		$cmd = $cn->prepare($sql);
		$parametroak = array
		(
			':amaieraId' => $amaiera_id
		);
		$cmd->execute($parametroak);
		$bikoiztuenGertakariaId = $cmd->fetchAll(PDO::FETCH_COLUMN, 0);
		$cmd->closeCursor();

		$bikoiztuak = array();

		foreach ($bikoiztuenGertakariaId as $bakoitza)
		{
			$gertakaria = Doctrine_Core::getTable('gertakaria')->find($bakoitza);
			if ($gertakaria)
				array_push($bikoiztuak, $gertakaria);
		}

		return $bikoiztuak;
	}
	protected function getBikoiztuenLangileak()
	{
		$bikoiztuenLangileak = array();
		$bikoiztuak = $this->getBikoiztuak();

		foreach ($bikoiztuak as $gertakaria)
			if ($gertakaria->getLangileaId())
				array_push($bikoiztuenLangileak, $gertakaria->getLangileaId());

		return $bikoiztuenLangileak;
	}
}
