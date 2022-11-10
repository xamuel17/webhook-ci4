<?php
namespace App\Filters;

use CodeIgniter\Filters\FilterInterface;
use CodeIgniter\HTTP\Exceptions\HTTPException;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;


class BasicAuthFilter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null){
       if(empty($_SERVER['PHP_AUTH_USER'])){

        $response = service('response');
        $response->setStatusCode(401);
        return $response;
       }else{
        $username = $_SERVER['PHP_AUTH_USER'];
        $password = $_SERVER['PHP_AUTH_PW'];
        if($username != 'admin' && $password != 'password123'){
            $response = service('response');
            $response->setStatusCode(401);
            return $response;
        }
       }
    }


    public function after( RequestInterface $request,  ResponseInterface $response, $arguments = null ){
   
    }

}