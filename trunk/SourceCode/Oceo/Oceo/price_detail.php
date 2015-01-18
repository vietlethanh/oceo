<?php

/* TODO: Add code here */
require('config/globalconfig.php');
include_once('class/model_articletype.php');
include_once('class/model_article.php');
include_once('class/model_comment.php');
include_once('class/model_user.php');
include_once('class/model_product.php');
include_once('class/model_retailer.php');
include_once('class/model_status.php');
include_once('class/model_property.php');
include_once('class/model_productprice.php');
include_once('class/model_productproperty.php');
include_once('class/model_propertygroup.php');
include_once('class/model_datatype.php');
include_once('class/model_manufactory.php');
$objProduct = new Model_Product($objConnection);
$objProductProperty = new Model_ProductProperty($objConnection);
$objArticleType = new Model_ArticleType($objConnection);
$objProductPrice = new Model_ProductPrice($objConnection);
$objProperty = new Model_Property($objConnection);
$objComment = new Model_Comment($objConnection);
$objManufactory = new Model_Manufactory($objConnection);
$objRetailer = new Model_Retailer($objConnection);

{
	$_currentProductID = $_pgR["pid"];
	$city = $_pgR['ct'];
	$_SESSION[global_common::SES_C_CUR_PAGE] = 'product_detail.php?pid='.$_currentProductID;
}
$_arrCategories =  $objArticleType->getAllArticleType(0,null,'`ParentID`=0','Level');
//$_currentParentCatID = $catID;
if ($_pgR["pid"])
{
	$_currentProduct = $objProduct->getProductByID($_currentProductID);
	$catID = $objArticleType->getArticleTypeByID($_currentProduct[global_mapping::CatalogueID]);
	$_currentParentCatID = $catID[global_mapping::ParentID];
}
?>
<?php
include_once('include/_header.inc');
include_once('include/_menu.inc');
//include_once('include/_cat_list.inc');

?>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_article.js');?>"></script>
<script type="text/javascript"> 

</script>
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
//article
include_once('include/_price.inc');
?>

<?php 
//footer
include_once('include/_footer.inc');
?>

<?php
//include_once('include/_header.inc');
//include_once('include/_menu.inc');
//include_once('include/_article.inc');
//echo '<div id= "comment-list">';
//include_once('include/_comment_list.inc');
//echo '</div>';
//include_once('include/_comment_editor.inc');

?>


