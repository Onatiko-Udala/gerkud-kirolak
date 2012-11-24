<?php

/**
 * BaseGeo
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @property integer $gertakaria_id
 * @property double $longitudea
 * @property double $latitudea
 * @property string $testua
 * @property integer $geometria_id
 * @property Gertakaria $Gertakaria
 * @property Geometria $Geometria
 * 
 * @method integer    getGertakariaId()  Returns the current record's "gertakaria_id" value
 * @method double     getLongitudea()    Returns the current record's "longitudea" value
 * @method double     getLatitudea()     Returns the current record's "latitudea" value
 * @method string     getTestua()        Returns the current record's "testua" value
 * @method integer    getGeometriaId()   Returns the current record's "geometria_id" value
 * @method Gertakaria getGertakaria()    Returns the current record's "Gertakaria" value
 * @method Geometria  getGeometria()     Returns the current record's "Geometria" value
 * @method Geo        setGertakariaId()  Sets the current record's "gertakaria_id" value
 * @method Geo        setLongitudea()    Sets the current record's "longitudea" value
 * @method Geo        setLatitudea()     Sets the current record's "latitudea" value
 * @method Geo        setTestua()        Sets the current record's "testua" value
 * @method Geo        setGeometriaId()   Sets the current record's "geometria_id" value
 * @method Geo        setGertakaria()    Sets the current record's "Gertakaria" value
 * @method Geo        setGeometria()     Sets the current record's "Geometria" value
 * 
 * @package    gerkud
 * @subpackage model
 * @author     Pasaiako Udala
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
abstract class BaseGeo extends sfDoctrineRecord
{
    public function setTableDefinition()
    {
        $this->setTableName('geo');
        $this->hasColumn('gertakaria_id', 'integer', null, array(
             'type' => 'integer',
             'notnull' => true,
             ));
        $this->hasColumn('longitudea', 'double', 18, array(
             'type' => 'double',
             'scale' => 6,
             'notnull' => true,
             'length' => 18,
             ));
        $this->hasColumn('latitudea', 'double', 18, array(
             'type' => 'double',
             'scale' => 6,
             'notnull' => true,
             'length' => 18,
             ));
        $this->hasColumn('testua', 'string', 50, array(
             'type' => 'string',
             'length' => 50,
             ));
        $this->hasColumn('geometria_id', 'integer', null, array(
             'type' => 'integer',
             'notnull' => true,
             ));
    }

    public function setUp()
    {
        parent::setUp();
        $this->hasOne('Gertakaria', array(
             'local' => 'gertakaria_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE'));

        $this->hasOne('Geometria', array(
             'local' => 'geometria_id',
             'foreign' => 'id',
             'onDelete' => 'CASCADE'));
    }
}