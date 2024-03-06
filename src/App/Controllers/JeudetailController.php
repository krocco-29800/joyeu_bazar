<?php

namespace App\Controllers;

use App\Models\JeuManager;
use App\Models\CommentManager;
use App\Controllers\AbstractController;
use App\Services\Utils;

class jeudetailController extends AbstractController
{
    public function index()
    {
        // On récup l'id du jeu
        $jeu_id = (int)$_GET['id'];
        // On charge les infos du jeu
        $p_manager = new JeuManager();
        $sql = "SELECT jeu.*,contact.prenom,contact.nom FROM jeu,contact WHERE jeu.id=? AND jeu.user_id=contact.user_id LIMIT 1";
        $jeu = $p_manager->getOne($sql, [$jeu_id]);
        // On charge tous les commentaires correspondants
        $sql = "SELECT comment.*,contact.prenom,contact.nom FROM comment,contact WHERE comment.jeu_id='" . $jeu_id . "' AND comment.user_id=contact.user_id ORDER BY id DESC";
        $c_manager = new CommentManager();
        $comments = $c_manager->getAll(null, $sql);
        $template = './views/template_jeudetail.phtml';
        $this->render($template, [
            "article" => $jeu,
            "jeu_id" => $jeu_id,
            "comments" => $comments
        ]);
    }

    // ?page=jeudetail&action=add_comment&id
    public function add_comment()
    {
        // On récup l'id du jeu
        $jeu_id = (int)$_GET['id'];
        $user_id = $_SESSION['user']['id'];
        if (isset($_POST['comment']) && !empty($_POST['comment'])) {
            $c_manager = new CommentManager();
            $comment = Utils::inputCleaner($_POST['comment']);
            $insert = $c_manager->insert([$jeu_id,$user_id,$comment]);
            header("Location:?page=jeudetail&id=".$jeu_id);
        }
    }
}
