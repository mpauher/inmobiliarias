<?php

class DBConnection{
    private $host;
    private $user;
    private $pass;
    private $db;
    private $link;

    function __construct($host, $user, $pass, $db){
        $this->host = $host;
        $this->user = $user;
        $this->pass = $pass;
        $this->db = $db;
    }

    function connect(){
        $this->link = mysqli_connect($this->host,$this->user, $this->pass, $this->db);
        // Check connection
        if($this->link === false){
            die("ERROR: Could not connect. " . mysqli_connect_error());
        }
        // Print host information
        echo "Connect Successfully. Host info: " . mysqli_get_host_info($this->link);
    }

    function query($query){

        $res = $this->link->query($query);

        if(is_bool($res)){
            return $res;
        } else {
            $obj = $res->fetch_object();
            if($obj){
                return $obj;
            }
            echo 'Unexpected error in query : ' .$query;
            return null;
        }
    }
}