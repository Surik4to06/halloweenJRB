<?php

namespace db;

use PDO;
use PDOException;

class Database
{
    private $host = 'sql303.infinityfree.com';
    private $db_name = 'if0_37454816_halloweenjrb';
    private $username = 'if0_37454816';
    private $password = 'ezIsq1Ok9qMcXi';
    private $conn;

    public function connect()
    {
        $this->conn = null;

        try {
            $this->conn = new PDO("mysql:host=" . $this->host . ";dbname=" . $this->db_name, $this->username, $this->password);
            $this->conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        } catch (PDOException $e) {
            throw new PDOException("Erro de conexão: " . $e->getMessage());
        }

        return $this->conn;
    }
}
