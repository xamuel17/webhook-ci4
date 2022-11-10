<?php
namespace App\Models;

use CodeIgniter\Model;

class LuxWebhookModel extends Model
{
    protected $table = 'LUX_MERCHANT_TRANSACTIONS';
    protected $primaryKey = 'ID';
    protected $allowedFields = ['PAN', 'RRN', 'STAN', 'AMOUNT', 'SETTLED_AMOUNT', 'REFERENCE', 'CARD_EXPIRY',
        'ACCOUNT_NUMBER', 'PROCESSOR', 'CARD_TYPE', 'CARD_BANK', 'MERCHANT_ID', 'TERMINAL_ID',
        'STATUS_CODE', 'TRANSACTION_TYPE', 'SERIAL_NUMBER', 'STATUS_DESCRIPTION', 'TRANSACTION_DATE',
        'HASH_VALUE', 'CREDIT_STATUS', 'NOTIFICATION_STATUS', 'TRANSACTION_TIME'];
}
