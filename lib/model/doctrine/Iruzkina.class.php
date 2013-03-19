<?php

/**
 * Iruzkina
 *
 * This class has been auto-generated by the Doctrine ORM Framework
 *
 * @package    gerkud
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class Iruzkina extends BaseIruzkina
{

  public function getGertakaria()
  {
	  $q = Doctrine_Query::create()
	    ->from('Gertakaria g')
	    ->where('g.id = ?', $this->getGertakariaId());
	    return $q->execute();
  }

  public function getSaila($sailaId)
  {
          $q = Doctrine_Query::create()
            ->from('Saila s')
            ->where('s.id = ?', $sailaId);
            return $q->execute();


  }

  public function save(Doctrine_Connection $conn = null)
  {
	$conn = $conn ? $conn : Doctrine_Core::getTable('Iruzkina')->getConnection();
	$conn->beginTransaction();
	try
	{
	        $ret = parent::save($conn);
	        $conn->commit();

		$gertakariak = $this->getGertakaria();
		$erab = Doctrine::getTable('langilea')->find(array($gertakariak[0]->getLangileaId()));
                $nork = Doctrine::getTable('langilea')->find(array($this->getLangileaId()))->getName();

		if ($erab->getOhartarazteaId()!=1)
		{
			$mailer = sfContext::getInstance()->getMailer();
                        $mezua = Swift_Message::newInstance();
                        $mezua->setFrom(sfConfig::get('app_abisuak_nork'));
                        $mezua->setTo($erab->getEmailAddress());
			$cid = $mezua->embed(Swift_Image::fromPath('./images/logoa_mail.jpg'));

			$mezua->setSubject(sprintf('%s %d: %s', $this->getEkintza(), $gertakariak[0]->getId(), $gertakariak[0]->getLaburpena()));

			$ekintza = __('Aldaketa');
			$aldaketa = '';
			switch ($this->getEkintzaId())
			{
				case 1: //Iruzkina
					$ekintza = __('Iruzkina');
					$aldaketa = $this->getTestua();
					break;
				case 2: //Esleipena
				case 4: //Fitxategia
					$aldaketa = $this->getTestua();
					break;
				case 3: //Berrirekitzea
					$aldaketa = __('Berrireki da');
					break;
				case 5: //Egoera aldatzea
					$aldaketa = __('%egoera% egoeran jarri da', array('%egoera%' => $gertakariak[0]->getEgoera()));
					break;
				case 6: //Ixtea
					$aldaketa = __('Itxita');
					break;
				default:
					echo '<script>alert("Ez du mota irakurri")</script>';
			}

			$html = sprintf('<table border=0><tr><td colspan=2><img src="%s" /></td></tr>', $cid)
			 . '<tr><th colspan=2><hr><br></th></tr>'
			 . sprintf('<tr><th align=left><b>%s:</b></th><td>%d</td></tr>', __('Gertakariaren kodea'), $gertakariak[0]->getId())
			 . sprintf('<tr><th colspan=2 align=left><b>%s:</b></th></tr>', __('Gertakariaren deskribapena'))
			 . sprintf('<tr><td colspan=2>%s</td></tr></table><br>', $gertakariak[0]->getDeskribapena())
			 . sprintf('<p>%s:</p>', __('Zuk zabaldutako gertakari honek ondorengo aldaketa izan du'))
			 . '<table border=0>'
			 . sprintf('<tr><th align=left><b>%s:</b></th><td>%s</td></tr>', $ekintza, $aldaketa)
			 . sprintf('<tr><th align=left><b>%s:</b></th><td>%s</td></tr>', __('Nork egin du'), $this->getLangilea()->getName())
			 . '</table><br><br>'
			 . sprintf('<hr><p>%s</p>', __('EZ ERANTZUN MEZU HONI. Mezu hau automatikoki bidali dizu GERKUD gertakarien kudeaketa aplikazioak zuk horrela konfiguratuta daukazulako. Ez baduzu horrelako mezurik jaso nahi, aldatu konfigurazioa "nire datuak" atalean'));
			$mezua->setBody($html);
			$mezua->setContentType('text/html');

			if ($aldaketa != '' && ($erab->getOhartarazteaId() == 3 || $this->getEkintzaId() >= 5))
				$mailer->send($mezua);
                }
	        return $ret;
	}
	catch (Exception $e)
	{
//	        $conn->rollBack();
	        throw $e;
	}
}



}
