<?php
namespace App\Controllers;

use App\Controllers\AbstractController;
use App\Models\JeuManager;
use App\Models\UserManager;


class GalleryController extends AbstractController
{
    public function index(){
        $title = "Hello this is the GalleryController ;)";
        $dbJeu = new JeuManager();
        $jeux = $dbJeu->getAll(null,"SELECT jeu.*,contact.prenom,contact.nom FROM jeu,contact WHERE jeu.user_id=contact.user_id ORDER BY id ASC");
        
        $dbUser = new UserManager();
        $users = $dbUser->getAll();

        $template = './views/template_gallery.phtml';

        $this->render($template,[
            'title'=>$title,
            'jeux'=>$jeux,
            'users'=>$users
        ]);
    }

}