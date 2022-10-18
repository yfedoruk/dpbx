1. index.php 

//add
include APPPATH.'core/MY_Common.php';
//before 
require_once BASEPATH.'core/CodeIgniter.php';
/* End of file index.php */

2. application/core/MY_Common.php
3. application/libraries/MY_Log.php


Example:
$this->logDirName = 'ld';
log_message('error', $message, false, $this->logDirName . '/transaction-error', 'html');
//create file 
application/logs/ld/transaction-error-log-2016-04-19.html
