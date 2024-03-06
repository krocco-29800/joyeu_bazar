<?php

namespace App\Controllers;

use App\Services\Utils;
use App\Models\JeuManager;
use App\Models\CommentManager;
use App\Services\Authenticator;
use App\Controllers\AbstractController;

class AdminjeuController extends AbstractController
{


    public function __construct()
    {
        if (!Authenticator::isRole("ROLE_ADMIN")) {
            header("Location:?page=home");
            die();
        }
    }

    public function index()
    {

        $template = './views/template_admin_jeu_add.phtml';
        $this->render($template, []);
    }
    public function create()
    {
    }
    public function update()
    {
        $post_id = (int)$_GET['id'];
        $manager = new JeuManager();
        if (isset($_POST['nom'])){
            $nom = Utils::inputCleaner($_POST['nom']);
            $image = Utils::inputCleaner($_POST['image']);
            $editeur_id = Utils::inputCleaner($_POST['editeur_id']);
            $joueurs_min = Utils::inputCleaner($_POST['joueurs_min']);
            $joueurs_max = Utils::inputCleaner($_POST['joueurs_max']);
            $duree = Utils::inputCleaner($_POST['duree']);
            $age_min = Utils::inputCleaner($_POST['age_min']);
            $style = Utils::inputCleaner($_POST['style']);
            $difficulte = Utils::inputCleaner($_POST['difficulte']);
            $univers = Utils::inputCleaner($_POST['univers']);
            $mot_clef = Utils::inputCleaner($_POST['mot_clef']);
            $update = $manager->update($jeu_id,[
            $_SESSION['user']['id'],
            $nom,
            $image,
            $editeur_id,
            $joueurs_min,
            $joueurs_max,
            $duree,
            $age_min,
            $style,
            $difficulte,
            $univers,
            $mot_clef,
            date("Y-m-d H:i:s")
            ]);
        }
        $jeu = $manager->getOneById($jeu_id);
        $template = './views/template_admin_jeu_update.phtml';
        $this->render($template, [
            'jeu_id' => $jeu_id,
            'le_jeu' => $jeu
        ]);
    }

    public function delete()
    {
        $post_id = (int)$_GET['id'];
        // ATTENTION SUPPRESSION DE TOUS LES COMMENTAIRES DU POST $post_id;
        $manager = new CommentManager();
        $deleteComment = $manager->deleteComments($post_id);
        // ATTENTION SUPPRESSION DU POST $post_id;
        $manager = new PostManager();
        $delete = $manager->delete($post_id);
        header("Location:?page=admin");
    }
}
