<?php

/* TODO: Add code here */
require('config/globalconfig.php');
include_once('class/model_articletype.php');
include_once('class/model_article.php');
include_once('class/model_comment.php');
include_once('class/model_user.php');
include_once('class/model_product.php');

$objProduct = new Model_Product($objConnection);
$objComment = new Model_Comment($objConnection);
if ($_pgR["pid"])
{
	$productID = $_pgR["pid"];
	$_SESSION[global_common::SES_C_CUR_PAGE] = 'product_detail.php?pid='.$productID;
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
include_once('include/_slogan.inc');
?>
<?php 
//left side
include_once('include/_left_side.inc');
?>
<?php 
//right side
include_once('include/_right_side.inc');
?>
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


