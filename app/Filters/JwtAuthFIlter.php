<?php
namespace App\Filters;

use CodeIgniter\Filters\FilterInterface;
use CodeIgniter\HTTP\RequestInterface;
use CodeIgniter\HTTP\ResponseInterface;


class JwtAuthFIlter implements FilterInterface
{
    public function before(RequestInterface $request, $arguments = null){
       if(empty($_SERVER['HTTP_AUTHORIZATION'])){
        $response = service('response');
        $response->setStatusCode(401);
        return $response;
       }else{
        $token = $_SERVER['HTTP_AUTHORIZATION'];
        if($token != 'Bearer qwertykeyboard'){
            $response = service('response');
            $response->setStatusCode(401);
            return $response;
        }
  
       }
    }


    public function after( RequestInterface $request,  ResponseInterface $response, $arguments = null ){
   
    }

}