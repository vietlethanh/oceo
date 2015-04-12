<?php
/*
 * This file was automatically generated By Code Smith 
 * Modifications will be overwritten when code smith is run
 *
 * PLEASE DO NOT MAKE MODIFICATIONS TO THIS FILE
 * Date Created 5/6/2012
 *
 */

/// <summary>
/// Implementations of slAdvertising represent a Advertising
///
/// </summary>
chdir("..");
/* TODO: Add code here */
require('config/globalconfig.php');
require('include/_permission_admin.inc');
include_once('class/model_user.php');
include_once('class/model_city.php');

$objUser = new Model_User($objConnection);


if($_pgR['act'] == Model_User::ACT_SET_ROLE)
{
    if (global_common::isAdmin())
    {                        	
    	$userID = $_pgR[global_mapping::UserID];
    	$isAdmin = $_pgR[global_mapping::RoleID];
    	$result = $objUser->setRoleAdmin($userID, $isAdmin);
    	if ($result)
    	{
    		$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
    		echo global_common::convertToXML(
    				$arrHeader, array("rs", "inf"), 
    				array(1,'Update successfully'), 
    				array( 0, 1 )
    				);
    		return;
    	}
    	else
    	{
    		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Update failed'), array(0,1));
    		return;
    	}
    }
    else
    {
        echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Update failed. You have no permision to perform this'), array(0,1));
    		return;
    }
}
elseif($_pgR['act'] == Model_User::ACT_SET_PASWORD)
{
    if (global_common::isAdmin())
    {                  	
    	$userID = $_pgR[global_mapping::UserID];
    	$password = $_pgR[global_mapping::Password];
        $confirmedPassword = $_pgR['ConfirmedPassword'];
        if($password == $confirmedPassword)
        {
        	$result = $objUser->changeResetPassword($userID, $password);
        	if ($result)
        	{
        		$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
        		echo global_common::convertToXML(
        				$arrHeader, array("rs", "inf"), 
        				array(1,'Update successfully'), 
        				array( 0, 1 )
        				);
        		return;
        	}
        	else
        	{
        		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Update failed'), array(0,1));
        		return;
        	}
        }
        else
        {
            echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Update failed. Password not matched'), array(0,1));
        		return;
        }
    }
    else
    {
        echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Update failed. You have no permision to perform this'), array(0,1));
    		return;
    }
}
 else if ($_pgR["act"] == Model_User::ACT_GET)
{
	$userID = $_pgR[global_mapping::UserID];
	$userInfo =  $objUser->getUserByID($userID);
	if($userInfo)
	{       		
		echo global_common::convertToXML($strMessageHeader, 
				array("rs","content"),array(1,json_encode($userInfo)), array(0,1));
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Data is invalid. Pleae try again later"), array(0,1));
	}
	
	return ;
}
//$catID = $_pgR["cid"];
$page = $_pgR["p"];
if(!$page)
{
    $page=1;
}
$keyword = $_pgR["keyword"];
if($keyword)
{	
	$search = ' `'.global_mapping::UserName.'` like \'%'.global_common::escape_mysql_string($keyword).'%\' or `'.global_mapping::FullName.'` like \'%'.global_common::escape_mysql_string($keyword).'%\' or `'.global_mapping::Email.'` like \'%'.global_common::escape_mysql_string($keyword).'%\'' ;
}

$allUsers = $objUser->getAllUser($page,'',$search,'',$total);

?>
<?php
$_SESSION[global_common::SES_C_CUR_PAGE] = "admin/admin_advertising.php";
include_once('include/_admin_header.inc');
?>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_user.js');?>"></script>
<div id="admin-user">
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Manage User
			</h3>
		</div>
	</div>
	
	 <div class="row-fluid">	
            <div class="span12">
				<input type="hidden" id="adddocmode" name="adddocmode" value="" />
				<input type="hidden" id="UserID" name="UserID" value="" />		
	<div class="portlet box">
		<div class="portlet-title hide">
			<div class="caption">
				<!--i class="icon-reorder"></i-->
			</div>
			
			<div class="tools">                                
				<!--a href="#config-form" data-toggle="modal" class="config"></a-->
				<!--a href="javascript:;" class="reload" title="Reload"></a-->
			</div>
			<div class="actions">									
				
			</div>
		</div>
		<!---->
		<div class="portlet-body" style="text-align:center">
		<form method="get" id="admin_user" style="display: inline-flex" onclick="return core.util.resetSearchForm('admin_user')">
<input type="textbox" placeholder="Keyword to search" width="200px" id="keyword" name="keyword" value="<?php echo $keyword ?>" />	
<input type="submit" value="Search" style="height:24px;margin:0 10px" />	
<input type="hidden"  name="p" id="p" value="<?php echo ($page) ?>" />	
</form>	
		<?php echo 'Total:'.($total?$total:0); ?>							
<?php
//print_r($advertising);
if($allUsers)
{
    echo global_common::getPagingHTMLByNum($page,Model_User::NUM_PER_PAGE,$total, 'core.util.changePage','admin_user');
	echo '<table class="table table-striped">';
	echo '<thead>';
	echo '<th>';
	echo 'FullName';		
	echo '</th>';
	echo '<th>';
	echo 'UserName';		
	echo '</th>';
	echo '<th>';
	echo 'Email';		
	echo '</th>';
	echo '<th>';
	echo 'Address';		
	echo '</th>';
	echo '<th>';
	echo 'Phone';		
	echo '</th>';
	echo '<th>';
	echo 'BirthDay';		
	echo '</th>';
	echo '<th>';
	echo 'Sex';		
	echo '</th>';
	echo '<th>';
	echo 'Action';		
	echo '</th>';
	echo '</thead>';
	foreach($allUsers as $item)
	{
		echo '<tr>';
		echo '<td>';
		echo $item[global_mapping::FullName];		
		echo '</td>';
		echo '<td style="">';
		echo $item[global_mapping::UserName];		
		echo '</td>';
		echo '<td style="">';
		echo $item[global_mapping::Email];		
		echo '</td>';
		echo '<td style="">';
		echo $item[global_mapping::Address];		
		echo '</td>';
		echo '<td style="">';
		echo  $item[global_mapping::Phone];		
		echo '</td>';
		echo '<td>';
		echo global_common::formatDateVN($item[global_mapping::BirthDate]);		
		echo '</td>';
		echo '<td>';
		echo $item[global_mapping::Sex]?'Male':'Female';			
		echo '</td>';
		echo '<td style="padding:0;width:180px">';
		echo '<a href="javascript:user.showPopupEdit(\''.$item[global_mapping::UserID].'\',\''.$item[global_mapping::UserName].'\',\'modal-add\')" class="btn btn-mini">Edit</a> ';	
		if(	!$item[global_mapping::IsDeleted])
		{
			echo '<a href="javascript:user.Delete(\''.$item[global_mapping::UserID].'\',1)" class="btn btn-mini">Delete</a> ';	
		}
		else
		{
			echo '<a href="javascript:user.Delete(\''.$item[global_mapping::UserID].'\',0)" class="btn btn-mini">Restore</a>';	
		}	
		echo '</td>';
		echo '</tr>';
	}
	echo '</table>';
	echo global_common::getPagingHTMLByNum($page,Model_User::NUM_PER_PAGE,$total, 'core.util.changePage','admin_user');
}
?>
				</div>
					</div>
		</div>
	</div>
</div>
<?php
include_once('include/_admin_footer.inc');
?>


<div id="modal-add" class="modal hide fade" tabindex="-1" data-width="650" data-keyboard="false"  aria-hidden="true" data-backdrop="static">
    <div class="modal-header">
        <!--button type="button" class="close" data-dismiss="modal" aria-hidden="true">
        </button-->
        <h3 class="popup-title">Edit User: <span id="spanUserName"></span>
        </h3>
        <input type="hidden" id="hdUserID" />
    </div>
    <div class="modal-body" style="padding:0">	
            <div class="span12 tabbable tabbable-custom">
				<ul class="nav nav-tabs">
					<li class="active"><a href="#change-role" data-toggle="tab">Role</a></li>				
				
					<li class=""><a href="#change-password" data-toggle="tab">Thay đổi mật khẩu</a></li>
                </ul>
                <div class="tab-content">
					<div id="change-role" class="active tab-pane">
                            <form action="#">
								<div class="control-group">
								
									<div class="controls">
									
                                        	<label class="radio " style="">
										<input type="checkbox" name="ckAdmin" id="ckAdmin"  
										<?php echo ($currentUser[global_mapping::UserName]?'checked="checked"':'')?> />
										 Admin
									</label>
										<div class="help-inline message"></div>
									</div>
								</div>
                            </form>
                    </div>
                    <!-- End Change role-->
                    <div id="change-password" class="tab-pane">
                           
								<div class="control-group">
									<label class="control-label">
										Mật khẩu mới</label>                                                                													
									<div class="controls">
										<input type="password" id="txtPassowrd" class="m-wrap span4" name="txtPassowrd">
										<div class="help-inline message"></div>
									</div>
								</div>
								<div class="control-group">
									<label class="control-label">
										Nhắc lại mật khẩu mới</label>
									<div class="controls">
									    <input type="password" id="txtConfirmPass" class="m-wrap span4" />
										<div class="help-inline message"></div>
									</div>
                             	</div>                            
                         
                    <!-- End Change Password-->
                    </div>  
                   <!-- End Tab Content-->                    
                 </div>
            </div>
     </div>
	 <div class="modal-footer">
		<div class="pull-right">
			<a href="javascript:user.editUserAdmin();" class="btn" id="btnSave">Save</a>
			<a href="javascript:;" class="btn btn-mini" data-dismiss="modal"   aria-hidden="true">Close</a>        
		</div>
		 <!--div class="controls pull-right">
			<label class="checkbox ckCreateOther">
				<div class="checker">
					<span class="">
						<input type="checkbox" value=""></span>
				</div>
				Create another
			</label>
		</div-->
	</div>
</div>