<?php

/**
 * fitxategia actions.
 *
 * @package    gerkud
 * @subpackage fitxategia
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class fitxategiaActions extends sfActions
{

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
  protected function processForm(sfWebRequest $request, sfForm $form)
  {
    $form->bind($request->getParameter($form->getName()), $request->getFiles($form->getName()));
    if ($form->isValid())
    {
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
