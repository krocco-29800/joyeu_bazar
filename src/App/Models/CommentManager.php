<?php
namespace App\Models;

use App\Models\Comment;
use App\Services\Database;

class CommentManager extends AbstractManager
{
    public function __construct(){
        self::$db = new Database();
        self::$tableName = 'comment';
        self::$obj = new Comment();
    }

    public function deleteComments($jeu_id = null)
    {
        if (!is_null($jeu_id)){
            self::$db->query("DELETE FROM ".self::$tableName." WHERE jeu_id=?",[$jeu_id]);
            return true;
        }
        return false;
    }
}