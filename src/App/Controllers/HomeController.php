<?php
namespace App\Controllers;

use App\Controllers\AbstractController;
use App\Models\JeuManager;

class HomeController extends AbstractController{
    public function index(){
        $title = "Hello OOP World";
        $p = new JeuManager();
        $jeux = $p->getAll(3);
        
        $template = './views/template_home.phtml';
        $this->render($template,[
            'title'=>$title,
            'jeux'=>$jeux]);
    }

}