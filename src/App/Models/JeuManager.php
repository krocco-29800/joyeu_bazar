<?php
namespace App\Models;

use App\Models\Jeu;
use App\Services\Database;

class JeuManager extends AbstractManager
{
    public function __construct(){
        self::$db = new Database();
        self::$tableName = 'jeu';
        self::$obj = new Jeu();
    }
}