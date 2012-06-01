<?php

/**
 * fitxategia actions.
 *
 * @package    gerkud
 * @subpackage fitxategia
 * @author     Pasaiako Udala
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class fitxategiaActions extends sfActions
{
  public function executeIndex(sfWebRequest $request)
  {
    $this->fitxategias = Doctrine::getTable('fitxategia')
      ->createQuery('a')
      ->execute();
  }

  public function executeShow(sfWebRequest $request)
  {
    $this->fitxategia = Doctrine::getTable('fitxategia')->find(array($request->getParameter('id')));
    $this->forward404Unless($this->fitxategia);
  }

  public function executeNew(sfWebRequest $request)
  {
    $this->form = new fitxategiaForm();
  }

  public function executeCreate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST));

    $this->form = new fitxategiaForm();

    $this->processForm($request, $this->form);

    $this->setTemplate('new');
  }

  public function executeEdit(sfWebRequest $request)
  {
    $this->forward404Unless($fitxategia = Doctrine::getTable('fitxategia')->find(array($request->getParameter('id'))), sprintf('Object fitxategia does not exist (%s).', $request->getParameter('id')));
    $this->form = new fitxategiaForm($fitxategia);
  }

  public function executeUpdate(sfWebRequest $request)
  {
    $this->forward404Unless($request->isMethod(sfRequest::POST) || $request->isMethod(sfRequest::PUT));
    $this->forward404Unless($fitxategia = Doctrine::getTable('fitxategia')->find(array($request->getParameter('id'))), sprintf('Object fitxategia does not exist (%s).', $request->getParameter('id')));
    $this->form = new fitxategiaForm($fitxategia);

    $this->processForm($request, $this->form);

    $this->setTemplate('edit');
  }

  public function executeDelete(sfWebRequest $request)
  {
    $request->checkCSRFProtection();

    $this->forward404Unless($fitxategia = Doctrine::getTable('fitxategia')->find(array($request->getParameter('id'))), sprintf('Object fitxategia does not exist (%s).', $request->getParameter('id')));
    $fitxategia->delete();

    $this->redirect('fitxategia/index');
  }

  protected function processForm(sfWebRequest $request, sfForm $form)
  {


    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
//      $fitxategia = $form->save();
//      $this->redirect('fitxategia/edit?id='.$fitxategia->getId());

        $fitxategia = $form->save();
        //Iruzkina gehituko dugu:
        $iruzkina = new Iruzkina();
        $iruzkina->setGertakariaId($fitxategia->getGertakariaId());
        $iruzkina->setEkintzaId(4);
        $iruzkina->setLangileaId($fitxategia->getLangileaId());

        $testua="'".$fitxategia->getDeskribapena()."' fitxategia gehitu da";
        $iruzkina->setTestua($testua);
        $iruzkina->save();

        $this->redirect('gertakaria/show?id='.$fitxategia->getGertakariaId());

    }
  }
}
