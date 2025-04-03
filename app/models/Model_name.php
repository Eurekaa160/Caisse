<?php 


namespace app\models;

use PDO;


class Model_name
{
    private $db;

    public function __construct($db)
    {
        $this->db = $db;
    }

    public function listerImmo()
    {
        $stmt = $this->db->prepare("SELECT * FROM immobilier");

        $stmt->execute();

        $immos = $stmt->fetchall(PDO::FETCH_ASSOC); //constante FETCH_ASSOC

        if($immos)
        {
            return $immos;
        }else{
            return false;
        }
    }

}


?>