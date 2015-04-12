<?php

/* TODO: Add code here */
require('config/globalconfig.php');

include_once('class/model_articletype.php');
include_once('class/model_product.php');
include_once('class/model_user.php');
include_once('class/model_article.php');
include_once('class/model_manufactory.php');
include_once('class/model_property.php');
include_once('class/model_productproperty.php');
include_once('class/model_propertygroup.php');
include_once('class/model_datatype.php');
include_once('class/model_adtype.php');
include_once('class/model_city.php');
//get catId from _article.inc
//$catID = $_pgR['cid'];
$objCity = new Model_City($objConnection);

$allCities = $objCity->getAllCity();
$page = $_pgR["p"]? $_pgR["p"]:1;
if (!$_pgR["cid"])
{
	global_common::redirectByScript("index.php"); 
}
$keyword =  $_pgR['kw'];
?>
<?php
$objArticleType = new model_ArticleType($objConnection);
$objProduct = new Model_Product($objConnection);
$objProductProperty = new Model_ProductProperty($objConnection);
$objManufactory = new Model_Manufactory($objConnection);
$catID = $_pgR['cid'];
//Just get from "article_list.php"

//$district = $_pgR['ds'];
$keyword =  $_pgR['kw'];
$manu =  $_pgR['manu'];
$properties =  $_pgR['property'];

$filterProperty ='';

foreach($properties as $key => $info)
{
	//echo $key;
	if($info)
	{
		
		$filterProperty .= '(GROUP_CONCAT(\'&&\',propertyid, propertyvalue,\'&&\') LIKE \'%&&'.$key.$info.'&&%\') And ';
	}
}

if($filterProperty)
{
	$filterProperty = global_common::cutLast($filterProperty,4);
	$filterProperty = '1=1 GROUP BY productid HAVING '.$filterProperty;
	//echo $filterProperty;
	$productProperties = $objProductProperty->getAllProductProperty(0,global_mapping::ProductID,$filterProperty);
	$productIDs = global_common::getArrayColumn($productProperties, global_mapping::ProductID);
	
	$productInIDs = global_common::convertToQueryIN($productIDs);
}

$search = '';
$_arrCategories =  $objArticleType->getAllArticleType(0,null,'`ParentID`=0','Level');
//echo $catID;
$cat = $objArticleType->getArticleTypeByID($catID);
//print_r($cat);
$_currentParentCatID = $catID;

if($cat)
{
	$_currentParentCatID = $cat[global_mapping::ParentID];
	
	$search ='`'.global_mapping::CatalogueID.'` = '.$catID.' ';
}
if($city)
{
	if($search)
	{
		$search = 'ProductID IN( select ProductID where CityID =`'.global_mapping::CityID.'` = '.$city.') ';
	}
	else
	{
		$search = ' and `'.global_mapping::CityID.'` = '.$city.' ';
	}
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
if($productInIDs)
{
	if($search)
	{
		$search .= ' and (`'.global_mapping::ProductID.'` IN ('.$productInIDs.'))' ;
	}
	else
	{
		$search .= '(`'.global_mapping::ProductID.'` IN ('.$productInIDs.'))' ;
	}
}
//echo 'search:'. $search;
if($search)
	$products = $objProduct->getAllProduct($page,'*',$search,null,$total);
//echo $total;

//print_r($topProperties);

?>
<?php
if($_pgR["cid"])
{
	$catID = $_pgR["cid"];
	$_SESSION[global_common::SES_C_CUR_PAGE] = "products.php?cid=".$catID;
}
include_once('include/_header.inc');
include_once('include/_menu.inc');

?>


<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_product.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_user.js');?>"></script>


<?php 
//left side
//include_once('include/_slogan.inc');
?>
	<div class="tab-content">      
<?php
$default = '';
foreach($_arrCategories as $parentCat)
{
	$default = '';
	$_parentCatID = $parentCat[global_mapping::ArticleTypeID];
	if($_currentParentCatID == $parentCat[global_mapping::ArticleTypeID])
	{
		$default = 'active';
	}
	?>
	<div id="tab<?php echo $parentCat[global_mapping::ArticleTypeID] ?>" class="tab-pane <?php echo $default ?>" >
	<?php 
	//left side
	include('include/_left_side.inc');
?>
	<?php 
	//right side
	include('include/_right_side.inc');
?>
	</div>
	<?php 
			}?>
	
	</div>
<?php 
//search box
include_once('include/_search_box.inc');
?>
<?php 

//article list
include_once('include/_company_list.inc');
?>
<?php 
if($products)
{
	//article list
	include_once('include/_product_list.inc');
    include_once('include/_post_list.inc');
}
else
{
	//keyword list
	//include_once('include/_keyword_list.inc');
}
?>
<?php 
//footer
include_once('include/_footer.inc');
?>
