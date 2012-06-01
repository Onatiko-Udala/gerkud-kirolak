<?php

/**
 * BaseKlasea
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property string $izena
 * @property Doctrine_Collection $Gertakaria
 * 
 * @method string              getIzena()      Returns the current record's "izena" value
 * @method Doctrine_Collection getGertakaria() Returns the current record's "Gertakaria" collection
 * @method Klasea              setIzena()      Sets the current record's "izena" value
 * @method Klasea              setGertakaria() Sets the current record's "Gertakaria" collection
 * 
 * @package    gerkud
 * @subpackage model
 * @author     Pasaiako Udala
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseKlasea extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('klasea');
        $this->hasColumn('izena', 'string', 255, array(
             'type' => 'string',
             'notnull' => true,
             'length' => 255,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasMany('Gertakaria', array(
             'local' => 'id',
             'foreign' => 'klasea_id'));
    }
}