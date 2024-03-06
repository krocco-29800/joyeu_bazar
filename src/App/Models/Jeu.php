<?php
namespace App\Models;

use App\Models\AbstractTable;

class Jeu extends AbstractTable
{
    protected ?int $user_id = null;
    protected ?string $nom = null;
    protected ?string $image = null;
    protected ?int $editeur_id = null;
    protected ?int $joueurs_min = null;
    protected ?int $joueurs_max = null;
    protected ?int $duree = null;
    protected ?int $age_min = null;
    protected ?string $style = null;
    protected ?string $difficulte = null;
    protected ?string $univers = null;
    protected ?string $mot_clef = null;

    
    public function setUserId($user_id){
        $this->user_id = $user_id;
    }
    public function setNom($nom){
        $this->nom = $nom;
    }

    public function setImage($image){
        $this->image = $image;
    }

    public function setEditeur_id($editeur_id){
        $this->editeur_id = $editeur_id;
    }

    public function setJoueurs_min($joueurs_min){
        $this->joueurs_min = $joueurs_min;
    }

    public function setJoueurs_max($joueurs_max){
        $this->joueurs_max = $joueurs_max;
    }

    public function setDuree($duree){
        $this->duree = $duree;
    }

    public function setAge_min($age_min){
        $this->age_min = $age_min;
    }

    public function setStyle($style){
        $this->style = $style;
    }

    public function setDifficulte($difficulte){
        $this->difficulte = $difficulte;
    }

    public function setUnivers($univers){
        $this->univers = $univers;
    }

    public function setMot_clef($mot_clef){
        $this->mot_clef = $mot_clef;
    }   
    
    public function toArray(){
        $jeuArray = [
            $this->user_id,
            $this->nom,
            $this->image,
            $this->editeur_id,
            $this->joueurs_min,
            $this->joueurs_max,
            $this->duree,
            $this->age_min,
            $this->style,
            $this->difficulte,
            $this->univers,
            $this->mot_clef
        ];
        return $jeuArray;
    }

}