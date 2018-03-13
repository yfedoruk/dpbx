<?php
//http://stackoverflow.com/questions/5373780/how-to-catch-this-error-notice-undefined-offset-0
require_once APPPATH . 'models/egt/egt_error_code.php';
require_once APPPATH . 'controllers/internal/games.php';
error_reporting(E_ALL & ~E_NOTICE);

/**
 * To test controllers is bad idea in general =)
 * But it can be implemented in tricky way. To suppress E_Warnings 'session already send headers', that is thrown
 * somewhere in depth of core framework files, can use
 * error_reporting(E_ALL & ~E_NOTICE);
 * (or maybe try configure set_error_handler callback function, I not test it):
 *
 * set_error_handler('exceptions_error_handler');
 * function exceptions_error_handler($severity, $message, $filename, $lineno) {
 *     if ($severity) {
 *         throw new ErrorException($message, 0, $severity, $filename, $lineno);
 *     }
 * }
 *
 * WARNING!
 * In controller action may be some funny commands at end: die() or exit().
 * Then tests are not available at all.
 *
 * @property CI_Session $session
 */
class EgtTestCtrl extends CITestCase
{
    const PLAYER_ID = 1452325;

    public function __construct()
    {
        parent::__construct();
        $this->CI->load->library('session');
    }

    function testEgt(){
        $CI =& get_instance();
        /**
         * @var Games $CI
         */
        $CI = new Games();
        ob_start();
        $CI->game('new', 'Batman2');
        $x = ob_get_contents();
        ob_end_clean();
        var_dump(json_decode($x));
    }
}