<?php

/**
 * Gertakaria filter form.
 *
 * @package    gerkud
 * @subpackage filter
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormFilterTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class GertakariaFormFilter extends BaseGertakariaFormFilter
{
  public function configure()
  {


        //Testu librerako bilaketa
        $this->widgetSchema['librea'] = new sfWidgetFormFilterInput(array('with_empty' => false));
        $this->validatorSchema['librea'] = new sfValidatorPass(array(
                'required' => false
        ));

/*
        $this->widgetSchema['mapa'] = new sfWidgetFormChoice(array(
  		'choices'  => array(1=>'Bai',0=>'Ez'),
		'expanded' => true,
		'default' => 'Ez',
		'renderer_options' => array('template' => '%options%'),
	));
*/


        $this->widgetSchema['id'] = new sfWidgetFormFilterInput(array(
                'with_empty' => false,
                ));
        $this->validatorSchema['id'] = new sfValidatorPass(array(
                'required' => false
        ));



        $this->widgetSchema['barrutia_id'] = new sfWidgetFormDoctrineChoice(array(
                'model'     => 'Barrutia',
                'add_empty' => '--',
                ));

        $this->widgetSchema['kalea_id'] = new sfWidgetFormDoctrineChoice(array(
                    'model'     => 'Kalea',
//                    'depends'   => 'Barrutia',
                    'add_empty' => '--',
		    'order_by' => array('izena','asc')
                ));

        $this->widgetSchema['kale_zbkia'] = new sfWidgetFormFilterInput(array(
		'with_empty' => false,
		));
        $this->validatorSchema['kale_zbkia'] = new sfValidatorPass(array(
                'required' => false
        ));


        $this->widgetSchema['mota_id'] = new sfWidgetFormDoctrineChoice(array(
                'model'     => 'Mota',
                'add_empty' => '--',
                ));

//        $this->widgetSchema['azpimota_id'] = new sfWidgetFormDoctrineDependentSelect(array(
        $this->widgetSchema['azpimota_id'] = new sfWidgetFormDoctrineChoice(array(
                    'model'     => 'Azpimota',
//                    'depends'   => 'Mota',
                    'add_empty' => '--',
                ));



        $this->widgetSchema['klasea_id'] = new sfWidgetFormDoctrineChoice(array(
                'model'     => 'Klasea',
                'add_empty' => '--',
                'query'     => Doctrine::getTable('Klasea')->createQuery('k')->leftJoin('k.Translation kt')->orderBy('kt.izena ASC')
                ));
        $this->widgetSchema['egoera_id'] = new sfWidgetFormDoctrineChoice(array(
                'model'     => 'Egoera',
                'add_empty' => '--',
                'query'     => Doctrine::getTable('Egoera')->createQuery('e')->leftJoin('e.Translation et')->orderBy('et.izena ASC')
                ));
        $this->widgetSchema['saila_id'] = new sfWidgetFormDoctrineChoice(array(
                'model'     => 'Saila',
                'add_empty' => '--',
                'query'     => Doctrine::getTable('Saila')->createQuery('s')->leftJoin('s.Translation st')->orderBy('st.name ASC')
                ));

        $this->widgetSchema['eraikina_id'] = new sfWidgetFormDoctrineChoice(array(
                'model'     => 'Eraikina',
                'add_empty' => '--',
                'order_by' => array('izena','asc')
                ));

/*
        $this->widgetSchema['jatorrizkosaila_id'] = new sfWidgetFormDoctrineChoice(array(
                'model'     => 'JatorrizkoSaila',
                'add_empty' => '--',
                'order_by' => array('izena','asc')
                ));
*/
  }

}
