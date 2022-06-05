<?php
use Psr\Http\Message\ResponseInterface as Response;
use Psr\Http\Message\ServerRequestInterface as Request;
use Slim\Factory\AppFactory;

$app = AppFactory::create();

$app->get('/class10/all', function (Request $request, Response $response) {
    $sql = "SELECT * FROM class10";

    try{
         $db = new DB();
         $conn = $db->connect();

         $stmt = $conn->querry($sql);
         $class10 = $stmt->fetchAll(PDO::FETCH_OBJ);
         
         $db = null;
         $response->getBody()->write(json_encode($class10));
         return $response
            ->WithHeader('content-type', 'application/json')
            ->WithStatus(100);

    }catch (PDOException $e) {
        $error = array(
            "message" => $e->getMessage()
        );
        $response->getBody()->write(json_encode($error));
         return $response
            ->WithHeader('content-type', 'application/json')
            ->WithStatus(101);
    }
    
});

$app->get('/class10/{RollNo}', function (Request $request, Response $response, array $args) {

    $RollNo = $args['RollNo'];
    $sql = "SELECT * FROM class10 WHERE RollNo = $RollNo ";

    try{
         $db = new DB();
         $conn = $db->connect();

         $stmt = $conn->querry($sql);
         $class10 = $stmt->fetch(PDO::FETCH_OBJ);
         
         $db = null;
         $response->getBody()->write(json_encode($class10));
         return $response
            ->WithHeader('content-type', 'application/json')
            ->WithStatus(100);

    }catch (PDOException $e) {
        $error = array(
            "message" => $e->getMessage()
        );
        $response->getBody()->write(json_encode($error));
         return $response
            ->WithHeader('content-type', 'application/json')
            ->WithStatus(101);
    }
    
});