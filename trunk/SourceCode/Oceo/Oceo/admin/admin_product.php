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
/// Implementations of slarticles represent a Article
///
/// </summary>
chdir("..");
/* TODO: Add code here */
require('config/globalconfig.php');
require('include/_permission_admin.inc');
include_once('class/model_articletype.php');
include_once('class/model_user.php');
include_once('class/model_product.php');
include_once('class/model_property.php');
include_once('class/model_productproperty.php');
include_once('class/model_retailer.php');
include_once('class/model_status.php');
include_once('class/model_city.php');
include_once('class/model_property.php');
include_once('class/model_productprice.php');
include_once('class/model_productproperty.php');
include_once('class/model_propertygroup.php');
include_once('class/model_datatype.php');
include_once('class/model_manufactory.php');
include_once('class/model_city.php');
$objProduct = new Model_Product($objConnection);
$objCity = new Model_City($objConnection);
$objProductProperty = new Model_ProductProperty($objConnection);
$objArticleType = new Model_ArticleType($objConnection);
$objProductPrice = new Model_ProductPrice($objConnection);
$objProperty = new Model_Property($objConnection);
$objManufactory = new Model_Manufactory($objConnection);
$objRetailer = new Model_Retailer($objConnection);

$page = $_pgR["p"]? $_pgR["p"]:1;

$catID = $_pgR["cid"];
$manu = $_pgR["manu"];
$allCats = $objArticleType->getAllArticleType(0,null,'',null);
$allCities = $objCity->getAllCity();
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
if($manu)
{
	if($search)
	{
		$search .= ' and (`'.global_mapping::ManufactoryID.'` = '.global_common::escape_mysql_string($manu).')' ;
	}
	else
	{
		$search .= '(`'.global_mapping::ManufactoryID.'` = '.global_common::escape_mysql_string($manu).')' ;
	}
}

$products = $objProduct->getAllProduct(1,'*',$search,null,$total);
$allManuFactories = $objManufactory->getAllManufactory(0);
?>
<?php
$_SESSION[global_common::SES_C_CUR_PAGE] = "admin/admin_product.php";
include_once('include/_admin_header.inc');

?>

<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_retailer.js');?>"></script>
<div id="admin-article">
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Quản lý sản phẩm
			</h3>
		</div>
	</div>
	 <div class="row-fluid">	
            <div class="span12">
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
		<div class="portlet-body">
<form method="get" id="admin_product" style="display: inline-flex" onclick="return core.util.resetSearchForm('admin_product')">
<select class="" name="cid" id="id" style="height:25px" onchange="core.util.bindChosen(this,'manu','CategoryID');">
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
<select class="" name="manu" id="manu" style="height:25px;width:150px">
	<option value="0"  CategoryID='0'>Choose Manufactory</option>
<?php
foreach($allManuFactories as $item)
{
	$display ='';
	if($item[global_mapping::CategoryID] != $catID)
	{
		$display = 'display:none';
	}
	
	if($item[global_mapping::ManufactoryID] == $manu)
	{
		echo '			<option style="'.$display.'" value="'.$item[global_mapping::ManufactoryID].'" CategoryID="'.$item[global_mapping::CategoryID].'" selected="selected" >'.$item[global_mapping::ManufactoryName].'</option>';
	}
	else
		echo '			<option style="'.$display.'" value="'.$item[global_mapping::ManufactoryID].'" CategoryID="'.$item[global_mapping::CategoryID].'" >'.$item[global_mapping::ManufactoryName].'</option>';
}
?>
</select>	
<input type="submit" value="Search" style="height:24px;margin:0 10px" />	
<input type="hidden"  name="p" id="p" value="<?php echo ($page) ?>" />	
</form>		
<div style="float:right;color:black">
<?php echo 'Total:'.($total?$total:0); ?>
</div>
<?php
//print_r($allRetailers);
if($products)
{
    echo global_common::getPagingHTMLByNum($page,Model_Product::NUM_PER_PAGE,$total, 'core.util.changePage','admin_product');
	echo '<table class="table table-striped">';
	echo '<thead>';
	echo '<th>';
	echo 'Tên sản phẩm';		
	echo '</th>';
	echo '<th>';
	echo 'Người tạo';		
	echo '</th>';
	echo '<th>';
	echo 'Ngày tạo';		
	echo '</th>';
	echo '<th>';
	echo 'Ngày cập nhật';		
	echo '</th>';
	echo '<th>';
	echo 'Action';		
	echo '</th>';
	echo '</thead>';
	foreach($products as $item)
	{
	
		echo '<tr>';
		echo '<td>';
		echo $item[global_mapping::ProductName];		
		echo '</td>';
		echo '<td>';
		echo $item[global_mapping::CreatedBy][global_mapping::UserName];		
		echo '</td>';
		echo '<td>';
		echo global_common::formatDateTimeVN($item[global_mapping::CreatedDate]);		
		echo '</td>';
		echo '<td>';
		echo global_common::formatDateTimeVN($item[global_mapping::ModifiedDate]);		
		echo '</td>';
		echo '<td style="padding:0;width:180px">';
		echo '<a href="'.global_common::buildRetailerLink($item[global_mapping::RetailerID], true).'" target="_blank" class="btn btn-mini"> View</a> ';	
		if(	$item[global_mapping::StatusID] == global_common::STATUS_INACTIVE)
		{
			echo '<a href="javascript:retailer.activateRetailer(\''.$item[global_mapping::RetailerID].'\','.global_common::STATUS_ACTIVE.', retailer.AdminPage)" class="btn btn-mini">Bán lại</a>';
		}
		else
		{
			echo '<a href="javascript:retailer.activateRetailer(\''.$item[global_mapping::RetailerID].'\','.global_common::STATUS_INACTIVE.', retailer.AdminPage)" class="btn btn-mini">Dừng bán</a>';
		}	
		echo '</td>';
		echo '</tr>';
		
	}
	echo '</table>';
	echo global_common::getPagingHTMLByNum($page,Model_ProductPrice::NUM_PER_PAGE,$total, 'core.util.changePage','admin_product');
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