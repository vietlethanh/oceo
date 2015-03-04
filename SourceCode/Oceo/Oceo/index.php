<?php

/* TODO: Add code here */
require('config/globalconfig.php');

include_once('class/model_articletype.php');
include_once('class/model_product.php');
include_once('class/model_user.php');
include_once('class/model_article.php');
include_once('class/model_manufactory.php');
include_once('class/model_adtype.php');

?>
<?php
$objArticleType = new model_ArticleType($objConnection);
$objProduct = new Model_Product($objConnection);

$_arrCategories =  $objArticleType->getAllArticleType(0,null,'`ParentID`=0','Level');



?>
<?php
if($_pgR["cid"])
{
	
}
include_once('include/_header.inc');
include_once('include/_menu.inc');

?>


<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_article.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_user.js');?>"></script>


<?php 
//left side
//include_once('include/_slogan.inc');
?>
	<div class="tab-content">      
<?php
$default = 'active';
foreach($_arrCategories as $parentCat)
{
	$_parentCatID = $parentCat[global_mapping::ArticleTypeID];
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
	$default='';
			}?>
	
	</div>
<?php 
//footer
include_once('include/_footer.inc');
?>
