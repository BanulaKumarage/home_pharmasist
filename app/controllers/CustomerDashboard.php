<?php 

class CustomerDashboard extends Controller{
    public function __construct($controller,$action)
    {
        parent::__construct($controller,$action);
    }

    public function indexAction() {
        $this->view->render('user/dashboard');
    }

    public function searchAction(){
        $this->view->render('search/select_search');
    }
}