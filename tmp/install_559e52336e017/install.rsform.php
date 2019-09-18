<?php
/**
* @version 1.2.0
* @package RSform!Pro 1.2.0
* @copyright (C) 2007-2009 www.rsjoomla.com
* @license GPL, http://www.gnu.org/copyleft/gpl.html
*/

// no direct access
defined( '_JEXEC' ) or die( 'Restricted access' );

// This is going to be redone, but for the time being, it's working as it is

//Init RS Adapter
require_once(dirname(__FILE__).'/../../../components/com_rsform/controller/adapter.php');
require_once(dirname(__FILE__).'/../../../components/com_rsform/controller/functions.php');

$RSadapter = new RSadapter();
$GLOBALS['RSadapter'] = $RSadapter;

//require backend language file
require_once(_RSFORM_FRONTEND_ABS_PATH.'/languages/'._RSFORM_FRONTEND_LANGUAGE.'.php');

$message = '';

//Update Administrator Menu
//$db = JFactory::getDBO();

//$db->setQuery("UPDATE #__components SET admin_menu_img='../administrator/components/com_rsform/images/rsformpro.gif' WHERE admin_menu_link='option=com_rsform'");
//$db->query();

//Create RSform!Pro tables
//$result = RSparse_mysql_dump(_RSFORM_BACKEND_ABS_PATH.'/tmp/rsform-install.sql');
//if($result=='ok') $message .= _RSFORM_INSTALLER_TABLES_OK;
//else $message .= sprintf(_RSFORM_INSTALLER_TABLES_ERROR,$result);

$message .= _RSFORM_INSTALLER_TABLES_OK;

//Try setting directories permissions
//$result = @chmod(_RSFORM_BACKEND_ABS_PATH.'/tmp/',0777);
//if($result==true) $message .= sprintf(_RSFORM_INSTALLER_PERMISSIONS_OK,_RSFORM_BACKEND_ABS_PATH.'/tmp/','0777');
//else $message .= sprintf(_RSFORM_INSTALLER_PERMISSIONS_ERROR,_RSFORM_BACKEND_ABS_PATH.'/tmp/','0777');

$result = @chmod(_RSFORM_FRONTEND_ABS_PATH.'/uploads/',0777);
if($result==true) $message .= sprintf(_RSFORM_INSTALLER_PERMISSIONS_OK,_RSFORM_FRONTEND_ABS_PATH.'/tmp/','0777');
else $message .= sprintf(_RSFORM_INSTALLER_PERMISSIONS_ERROR,_RSFORM_FRONTEND_ABS_PATH.'/uploads/','0777');

//Add sample forms
//$result = RSparse_mysql_dump(_RSFORM_BACKEND_ABS_PATH.'/tmp/sample-install.sql');
//if($result=='ok') $message .= _RSFORM_INSTALLER_DB_OK;
//else $message .= sprintf(_RSFORM_INSTALLER_DB_ERROR,$result);

$message .= _RSFORM_INSTALLER_DB_OK;

?>
<div align="left" width="100%">
	<img src="../components/com_rsform/images/rsform-pro.jpg" alt="RSform!Pro Logo"/>
</div>
<br/>
<table class="adminform">
	<tr>
		<td align="left">
		<?php echo _RSFORM_INSTALLER_WELCOME;?>
		</td>
	</tr>
</table><br/>
<table class="adminform">
	<tr>
		<td align="left">
		<?php echo $message;?>
		</td>
	</tr>
</table><br/><br/>
<div align="left" width="100%"><b>RSForm! Pro <?php echo _RSFORM_VERSION;?> Installed</b></div>