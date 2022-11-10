<?php namespace App\Controllers;

use App\Models\LuxWebhookModel;
use CodeIgniter\RESTful\ResourceController;
use CodeIgniter\API\ResponseTrait;


class LuxController extends ResourceController
{

    use ResponseTrait;

    public function luxWebhook() {
        $model = new LuxWebhookModel();
  

        $data = [
            'AMOUNT' => $this->request->getVar('amount'),
            'SERIAL_NUMBER'  => $this->request->getVar('serialNumber'),
            'CARD_TYPE'  => $this->request->getVar('cardType'),
            'TERMINAL_ID'  => $this->request->getVar('terminalId'),
            'RRN'  => $this->request->getVar('rrn'),
            'REFERENCE'  => $this->request->getVar('reference'),
            'TRANSACTION_TYPE'  => $this->request->getVar('transactionType'),
            'STATUS_DESCRIPTION'  => $this->request->getVar('statusDescription'),
            'MERCHANT_ID'  => $this->request->getVar('merchantId'),
            'STAN'  => $this->request->getVar('stan'),
            'STATUS_CODE'  => $this->request->getVar('statusCode'),
            'TRANSACTION_DATE'  => $this->request->getVar('transactionDate'),
            'HASH'  => $this->request->getVar('hash'),
            'PAN'  => $this->request->getVar('pan'),
            'SETTLED_AMOUNT' => $this->request->getVar('settledAmount'),
            'CARD_EXPIRY'  => $this->request->getVar('cardExpiry')
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