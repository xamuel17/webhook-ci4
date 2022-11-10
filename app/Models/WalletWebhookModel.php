<?php 
namespace App\Models;
use CodeIgniter\Model;
class WalletWebhookModel extends Model
{
    protected $table = 'webhooks';
    protected $primaryKey = 'id';
    protected $allowedFields = ['account_no', 'amount', 'originator_account_name', 'originator_account_no','originator_bank','originator_narration','reference','timestamp' ];
}
