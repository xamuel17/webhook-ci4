<?php namespace App\Controllers;
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;
use App\Models\WalletWebhookModel;

class WalletController extends ResourceController
{


    use ResponseTrait;



        // No Authentication
        public function NonAuthWebhook() {
            $model = new WalletWebhookModel();
            $data = [
                'account_no' => $this->request->getVar('account_no'),
                'amount'  => $this->request->getVar('amount'),
                'originator_account_name'  => $this->request->getVar('originator_account_name'),
                'originator_account_no'  => $this->request->getVar('originator_account_no'),
                'originator_bank'  => $this->request->getVar('originator_bank'),
                'originator_narration'  => $this->request->getVar('originator_narration'),
                'reference'  => $this->request->getVar('reference'),
                'timestamp'  => $this->request->getVar('timestamp')
            ];
            $response =null;
            try {
                $model->insert($data);
                $response = [
                  'status'   => 200,
                  'message'    => 'notified successfully'
              ];
              return $this->respondCreated($response);
            } catch (\Throwable $th) {
                return $this->failServerError(406, "failed");
            }

        }



        //Basic Authentication
        public function basicAuthWebhook(){
            $model = new WalletWebhookModel();
            $data = [
                'account_no' => $this->request->getVar('account_no'),
                'amount'  => $this->request->getVar('amount'),
                'originator_account_name'  => $this->request->getVar('originator_account_name'),
                'originator_account_no'  => $this->request->getVar('originator_account_no'),
                'originator_bank'  => $this->request->getVar('originator_bank'),
                'originator_narration'  => $this->request->getVar('originator_narration'),
                'reference'  => $this->request->getVar('reference'),
                'timestamp'  => $this->request->getVar('timestamp')
            ];
            $response =null;
            try {
                $model->insert($data);
                $response = [
                  'status'   => 200,
                  'message'    => 'notified successfully'
              ];
              return $this->respondCreated($response);
            } catch (\Throwable $th) {
                return $this->failServerError(406, "failed");
            }

        }

       // JWT Authentication 
        public function jwtAuthWebhook(){
            $model = new WalletWebhookModel();
            $data = [
                'account_no' => $this->request->getVar('account_no'),
                'amount'  => $this->request->getVar('amount'),
                'originator_account_name'  => $this->request->getVar('originator_account_name'),
                'originator_account_no'  => $this->request->getVar('originator_account_no'),
                'originator_bank'  => $this->request->getVar('originator_bank'),
                'originator_narration'  => $this->request->getVar('originator_narration'),
                'reference'  => $this->request->getVar('reference'),
                'timestamp'  => $this->request->getVar('timestamp')
            ];
            $response =null;
            try {
                $model->insert($data);
                $response = [
                  'status'   => 200,
                  'message'    => 'notified successfully'
              ];
              return $this->respondCreated($response);
            } catch (\Throwable $th) {
                return $this->failServerError(406, "failed");
            }

        }
}