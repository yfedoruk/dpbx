<?php  if ( ! defined('BASEPATH')) exit('No direct script access allowed');

/**
* Error Logging Interface
*
* We use this as a simple mechanism to access the logging
* class and send messages to be logged.
*
* @access	public
* @return	void
*/
if ( ! function_exists('log_message'))
{
	function log_message($level = 'error', $message, $php_error = FALSE, $file_name = '', $file_extension='php')
	{
		static $_log;

		if (config_item('log_threshold') == 0)
		{
			return;
		}

		$_log =& load_class('Log', 'libraries', 'MY_');
		$_log->write_log($level, $message, $php_error, $file_name, $file_extension);
	}
}
/* End of file MY_Common.php */
/* Location: ./application/core/MY_Common.php */