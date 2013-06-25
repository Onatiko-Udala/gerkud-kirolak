<?php

/**
 * Gertakari zerrendatua
 *
 * @package    gerkud
 * @subpackage form
 * @author     Kubbit Information Technology
 * @version    SVN: $Id: BaseForm.class.php 20147 2009-07-13 11:46:57Z FabianLange $
 */
class ZerrendatuaForm extends sfForm
{
	public static $sailkapena = array(-1 => '--', 1 => 'Saila', 2 => 'Auzoa', 3 => 'Mota');

	public function configure()
	{
		$culture = sfContext::getInstance()->getUser()->getCulture();

		$this->setWidgets(array
		(
			'sailkapena' => new sfWidgetFormSelect(array
			(
				'choices' => self::$sailkapena
			)),
			'hasiera' => new sfWidgetFormData(array
			(
			)),
			'amaiera' => new sfWidgetFormData(array
			(
			)),
			'klasea' => new sfWidgetFormDoctrineChoice(array
			(
				'model' => 'Klasea',
				'add_empty' => '--',
				'query' => Doctrine::getTable('Klasea')->createQuery('k')
					->leftJoin('k.Translation t WITH t.lang = ?', $culture)
					->orderBy('t.izena ASC')
			)),
			'saila' => new sfWidgetFormDoctrineChoice(array
			(
				'model' => 'Saila',
				'add_empty' => '--',
				'query' => Doctrine::getTable('Saila')->createQuery('s')
					->leftJoin('s.Translation t WITH t.lang = ?', $culture)
					->orderBy('t.name ASC')
			)),
			// el plugin sfDependentSelectPlugin requiere que los widgets tengan el como identificador <nombre_tabla>_id
			'mota_id' => new sfWidgetFormDoctrineChoice(array
			(
				'model' => 'Mota',
				'add_empty' => '--',
				'query' => Doctrine::getTable('Mota')->createQuery('m')
					->leftJoin('m.Translation t WITH t.lang = ?', $culture)
					->orderBy('t.izena ASC')
			)),
			'azpimota_id' => new sfWidgetFormDoctrineDependentSelect(array
			(
				'model' => 'Azpimota',
				'depends' => 'Mota',
				'add_empty' => '--',
				'table_method' => 'getAzpimotaQuery',
				'order_by' => array('izena', 'ASC')
			)),
			'barrutia' => new sfWidgetFormDoctrineChoice(array
			(
				'model' => 'Barrutia',
				'add_empty' => '--',
				'query' => Doctrine::getTable('Barrutia')->createQuery('b')
					->orderBy('b.izena ASC')
			)),
			'kalea' => new sfWidgetFormDoctrineChoice(array
			(
				'model' => 'Kalea',
				'add_empty' => '--',
				'query' => Doctrine::getTable('Kalea')->createQuery('k')
					->orderBy('k.izena ASC')
			)),
			'eraikina' => new sfWidgetFormDoctrineChoice(array
			(
				'model' => 'Eraikina',
				'add_empty' => '--',
				'query' => Doctrine::getTable('Eraikina')->createQuery('e')
					->orderBy('e.izena ASC')
			)),
			'egoera' => new sfWidgetFormDoctrineChoice(array
			(
				'model' => 'Egoera',
				'add_empty' => '--',
				'query' => Doctrine::getTable('Egoera')->createQuery('e')
					->leftJoin('e.Translation t WITH t.lang = ?', $culture)
					->orderBy('e.id ASC')
			)),
		));

		$this->validatorSchema['sailkapena1'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['sailkapena2'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['sailkapena3'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['hasiera'] = new sfValidatorDataOrdua(array('required' => false));
		$this->validatorSchema['amaiera'] = new sfValidatorDataOrdua(array('required' => false));
		$this->validatorSchema['klasea'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['saila'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['mota_id'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['azpimota_id'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['barrutia'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['kalea'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['eraikina'] = new sfValidatorString(array('required' => false));
		$this->validatorSchema['egoera'] = new sfValidatorString(array('required' => false));

		$this->widgetSchema->setNameFormat('zerrendatu[%s]');
	}
}

?>