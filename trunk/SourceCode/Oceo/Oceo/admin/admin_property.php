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
/// Implementations of Property represent a Property
///
/// </summary>
chdir("..");
/* TODO: Add code here */
require('config/globalconfig.php');
require('include/_permission_admin.inc');
include_once('class/model_user.php');
include_once('class/model_property.php');
include_once('class/model_propertygroup.php');
include_once('class/model_adtype.php');
include_once('class/model_articletype.php');
include_once('class/model_datatype.php');

$objArticleType = new Model_ArticleType($objConnection);

$objProperty = new Model_Property($objConnection);
$objAdType = new Model_AdType($objConnection);
$objDataType = new Model_Datatype($objConnection);
$objGroup = new Model_PropertyGroup($objConnection);

$allCats = $objArticleType->getAllArticleType(0,null,'',null);

if ($_pgR["act"] == Model_Property::ACT_ADD || $_pgR["act"] == Model_Property::ACT_UPDATE)
{
	//get user info
	$c_userInfo = $_SESSION[global_common::SES_C_USERINFO];
	
	$propertyName = $_pgR[global_mapping::PropertyName];
	$propertyName = html_entity_decode($propertyName,ENT_COMPAT ,'UTF-8' );
	
	$dataTypeID = html_entity_decode($_pgR[global_mapping::DataTypeID],ENT_COMPAT ,'UTF-8' );
	$propertyGroupID = html_entity_decode($_pgR[global_mapping::PropertyGroupID],ENT_COMPAT ,'UTF-8' );
	$propertyValue = html_entity_decode($_pgR[global_mapping::PropertyValue],ENT_COMPAT ,'UTF-8' );
	
	$order = html_entity_decode($_pgR[global_mapping::Order],ENT_COMPAT ,'UTF-8' );	
	$status = 1;
	if($_pgR["act"] == Model_Property::ACT_ADD)
	{
		$createdBy = $c_userInfo[global_mapping::UserID];
		
		$resultID = $objProperty->insert($propertyGroupID,$propertyName,$propertyValue,$dataTypeID,$order,$createdBy,$status);
		if ($resultID)
		{
			$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
			echo global_common::convertToXML(
					$arrHeader, array("rs", "inf"), 
					array(1, 'Tạo mới thành công'), 
					array( 0, 1 )
					);
			return;
		}
		else
		{
			echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Input data is invalid"), array(0,1));
			return;
		}
	}
	else
	{
		$modifiedBy = $c_userInfo[global_mapping::UserID];
		$propertyID = html_entity_decode($_pgR[global_mapping::PropertyID],ENT_COMPAT ,'UTF-8' );
	//	$currentProperty = $objProperty->getPropertyByID($propertyID);
		$resultID = $objProperty->update($propertyID,$propertyGroupID,$propertyName,$propertyValue,$dataTypeID,$order,$modifiedBy,$status);
		if ($resultID)
		{
			$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
			echo global_common::convertToXML(
					$arrHeader, array("rs", "inf"), 
					array(1, 'Cập nhật thành công'), 
					array( 0, 1 )
					);
			return;
		}
		else
		{
			echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Input data is invalid"), array(0,1));
			return;
		}
	}
	return;
}
elseif($_pgR['act'] == Model_Property::ACT_SHOW_EDIT)
{
	
	$propertyID = $_pgR['id'];
	$property =  $objProperty->getPropertyByID($propertyID);
	if($property)
	{
	
		echo global_common::convertToXML($strMessageHeader, 
				array("rs","content"),array(1,json_encode($property)), array(0,1));
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Data is invalid. Pleae try again later"), array(0,1));
	}
	
	return ;
}
elseif($_pgR['act'] == Model_Property::ACT_DELETE)
{
    $c_userInfo = $_SESSION[global_common::SES_C_USERINFO];
	$deletedBy = $c_userInfo[global_mapping::UserID];
	$propertyID = $_pgR[global_mapping::PropertyID];
	$status = $_pgR[global_mapping::Status];
	$result = global_common::updateDeleteFlag($propertyID,global_mapping::PropertyID,$deletedBy,
                    Model_Property::TBL_SL_PROPERTY,$status,$objConnection);
	if ($result)
	{
		$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
		echo global_common::convertToXML(
				$arrHeader, array("rs", "inf"), 
				array(1, ($status?'Xóa':'Deactivate').' thành công'), 
				array( 0, 1 )
				);
		return;
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,($isActivate?'Xóa':'Deactivate').' unsuccessfully'), array(0,1));
		return;
	}
}
$catID = $_pgR["cid"];
$page = $_pgR["p"];
/*
if($catID == 0)
{
	$allCatIDs ='';
}
else
{
	$allSubCats = $objArticleType->getAllArticleType(0,null,'ParentID='.$catID,null);
	//print_r($allSubCats);
	if(count($allSubCats)<=0)
	{
		$allCatIDs = $catID;
	}
	else
	{
		$allCatIDs = global_common::getArrayColumn($allSubCats,global_mapping::ArticleTypeID);
	}
}

if($allCatIDs)
{
	$search ='`'.global_mapping::CatalogueID.'` IN ( '. global_common::convertToQueryIN($allCatIDs).' )';
}
if($keyword)
{
	if($search)
	{
		$search .= ' and (`'.global_mapping::ProductName.'` like \'%'.global_common::escape_mysql_string($keyword).'%\' or `'.global_mapping::Description.'` like \'%'.global_common::escape_mysql_string($keyword).'%\')' ;
	}
	else
	{
		$search .= '(`'.global_mapping::ProductName.'` like \'%'.global_common::escape_mysql_string($keyword).'%\' or `'.global_mapping::Description.'` like \'%'.global_common::escape_mysql_string($keyword).'%\')' ;
	}
}
*/
if($catID)
{
    $searchGroup = global_mapping::ArticleTypeID.'= \''.$catID.'\'';
}
$allProperties = $objProperty->getPropertyByCat($catID,0,$total);
$allDataTypes = $objDataType->getAllDatatype();
$allGroups = $objGroup->getAllPropertyGroup(0,'',$searchGroup,'');

?>
<?php
$_SESSION[global_common::SES_C_CUR_PAGE] = "admin/admin_property.php";
include_once('include/_admin_header.inc');
?>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_property.js');?>"></script>
<div id="admin-property" class="admin-page">
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Manage Property
			</h3>
		</div>
	</div>
	
	 <div class="row-fluid">	
            <div class="span12">
				<input type="hidden" id="adddocmode" name="adddocmode" value="" />
				<input type="hidden" id="PropertyID" name="PropertyID" value="" />
			<a href='javascript:property.showPopupAdd("modal-add")' class="btn" title="Add new advertising"><i class="icon-plus"></i> Add New</a>
            <a href='admin_propertygroup.php' class="btn" title="Manage Group Property"><i class="icon-arrow-right"></i> Manage Group Property</a>
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
		<form method="get" id="admin_advert" style="display: inline-flex" onclick="return core.util.resetSearchForm('admin_advert')">
<select class="" name="cid" id="id" style="height:25px" onchange="">
<option value="0">Choose Category</option>
<?php
foreach($allCats as $parent)
{
	//print_r($currentTypes);
	if($parent[global_mapping::ParentID] == 0)
	{
		echo '			<option disabled="disabled" value="'.$parent[global_mapping::ArticleTypeID].'" >'.$parent[global_mapping::ArticleTypeName].'</option>';
		foreach($allCats as $item)
		{
			$isSelect = false;
			if($item[global_mapping::ParentID] == $parent[global_mapping::ArticleTypeID])
			{
				if($item[global_mapping::ArticleTypeID] == $catID)
				{
					$isSelect=true;
				}
				if($isSelect)
					echo '			<option selected="selected" value="'.$item[global_mapping::ArticleTypeID].'" >- '.$item[global_mapping::ArticleTypeName].'</option>';
				else
					echo '			<option value="'.$item[global_mapping::ArticleTypeID].'" >- '.$item[global_mapping::ArticleTypeName].'</option>';
			}
		}
	}
}
?>		
</select>	
<input type="submit" value="Search" style="height:24px;margin:0 10px" />	
<input type="hidden"  name="p" id="p" value="<?php echo ($page) ?>" />	
</form>	
		<?php echo 'Total:'.($total?$total:0); ?>							
<?php
//print_r($allProperties);
if($allProperties)
{
	echo '<table class="table table-striped">';
	echo '<thead>';
	echo '<th>';
	echo 'Property';		
	echo '</th>';
	echo '<th>';
	echo 'Group';		
	echo '</th>';
	echo '<th>';
	echo 'Default value';		
	echo '</th>';
	echo '<th>';
	echo 'Order';		
	echo '</th>';
	echo '<th>';
	echo 'Action';		
	echo '</th>';
	echo '</thead>';
	foreach($allProperties as $group)
	{
	   foreach($group["Properties"] as $item)
       {
        
    		echo '<tr>';
    		echo '<td>';
    		echo $item[global_mapping::PropertyName];		
    		echo '</td>';
    		echo '<td style="">';
    		echo $group[global_mapping::PropertyGroupName];		
    		echo '</td>';
    		echo '<td style="">';
    		echo $item[global_mapping::PropertyValue];		
    		echo '</td>';
    		echo '<td style="">';
    		echo $item[global_mapping::Order];
            echo '</td>';    	
    		echo '<td style="padding:0;width:180px">';
    		echo '<a href="javascript:property.showPopupEdit(\''.$item[global_mapping::PropertyID].'\',\'modal-add\')" class="btn btn-mini">Edit</a> ';	
    		if(	!$item[global_mapping::IsDeleted])
    		{
    			echo '<a href="javascript:property.delete(\''.$item[global_mapping::PropertyID].'\',1)" class="btn btn-mini">Delete</a> ';	
    		}
    		else
    		{
    			echo '<a href="javascript:property.delete(\''.$item[global_mapping::PropertyID].'\',0)" class="btn btn-mini">Restore</a>';	
    		}	
    		echo '</td>';
    		echo '</tr>';
        }
	}
	echo '</table>';
	//echo global_common::getPagingHTMLByNum($page,Model_Advertising::NUM_PER_PAGE,$total, 'core.util.changePage','admin_advert');
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


<div id="modal-add" class="modal hide fade" tabindex="-1" data-width="800" data-keyboard="false"  aria-hidden="true" data-backdrop="static">
    <div class="modal-header">
        <!--button type="button" class="close" data-dismiss="modal" aria-hidden="true">
        </button-->
        <h3 class="popup-title">Add new property
        </h3>
    </div>
    <div class="modal-body">
		
		 <!-- BEGIN FORM-->
        <form class="form-horizontal" action="#">
		<div class="control-group">
			<div class="controls">
				<!--label class="m-wrap">(*) là thông tin bắt buộc</label-->
			</div>
		</div>
        <div class="control-group">
            <label class="control-label">
               Property Name</label>
            <div class="controls">
                <input type="text" id="txtProName" class="span5">
            </div>
        </div>
		 <div class="control-group">
            <label class="control-label">
                Group Name 
            </label>
            <div class="controls">
                <select tabindex="1" class="span5" id="cmdGroup">
<?php
foreach($allGroups as $item)
{
	echo '			<option value="'.$item[global_mapping::PropertyGroupID].'" >'.$item[global_mapping::PropertyGroupName].'</option>';
	
}
?>
                </select>
            </div>
         <div class="control-group">
            <label class="control-label">
                Data Type 
            </label>
            <div class="controls">
                <select tabindex="1" class="span5" id="cmDataType">
<?php
foreach($allDataTypes as $item)
{
	echo '			<option value="'.$item[global_mapping::DataTypeID].'" >'.$item[global_mapping::DataTypeName].'</option>';	
}
?>
                </select>
            </div>
        <div class="control-group">
            <label class="control-label">
                Default Value
            </label>
            <div class="controls">
                 <input id="txtPropertyValue" type="text" class="span5">
            </div>
        </div>
		<div class="control-group">
            <label class="control-label">
                Order </label>
            <div class="controls">
                <input type="text" id="txtOrder" class="span5">
            </div>
        </div>	
       
        </form>
        <!-- END FORM-->
	</div>
	 <div class="modal-footer">
		<div class="pull-right">
			<a href="javascript:property.addProperty();" class="btn" id="btnSave">Save</a>
			<a href="javascript:;" class="btn btn-mini" data-dismiss="modal"   aria-hidden="true">Cancel</a>        
		</div>
		 <div class="controls pull-right">
			<label class="checkbox ckCreateOther">
				<div class="checker">
					<span class="">
						<input type="checkbox" id="ckCreateOther" value=""></span>
				</div>
				Create another
			</label>
		</div>
	</div>
</div>