<?php

/**
 * Barrutia
 * 
 * This class has been auto-generated by the Doctrine ORM Framework
 * 
 * @package    gerkud
 * @subpackage model
 * @author     Your name here
 * @version    SVN: $Id: Builder.php 7490 2010-03-29 19:53:27Z jwage $
 */
class Barrutia extends BaseBarrutia
{
 public function __toString()
  {
/*
        if (sfContext::getInstance()->getConfiguration()->getApplication()=='es')
        {
            return $this->getSituacion();
        }
        else
        {
*/
            return $this->getIzena();

//        }
 }






}
