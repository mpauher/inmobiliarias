<?php

class AgencyRepository{
    private $connection;

    function __construct($connection){
        $this->connection = $connection;
    }

    function create($id,$name){
        $query = "INSERT INTO agencias (id,nombre) VALUES ($id,'$name');";
        $res = $this->connection->query($query);
        return $res;
    }

    function read($id){
        $query = "SELECT * FROM agencias where id=$id;";
        $res = $this->connection->query($query);
        return $res;
    }

    function update($id,$name){
        $query = "UPDATE agencias SET nombre='$name' WHERE id=$id; ";
        $res = $this->connection->query($query);
        return $res;
    }

    function delete($id){
        $query = "DELETE FROM agencias WHERE id=$id";
        $res = $this->connection->query($query);
        return $res;
    }
}

?>