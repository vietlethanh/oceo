<?php 
include_once('class/model_city.php');
include_once('class/model_district.php');
//get catId from _article.inc
//$catID = $_pgR['cid'];
$objCity = new Model_City($objConnection);
$objDistrict = new Model_District($objConnection);

$allCities = $objCity->getAllCity();
//echo 'get city:';
//echo($allCities);
$allDistricts = $objDistrict->getAllDistrict();

//Just get from "article_list.php"
//$city = $_pgR['ct'];
//$district = $_pgR['ds'];
//$keyword =  $_pgR['kw'];
$selectCityID = "";

?>
<div id="search-box">
	<form method="get" action="products.php" id="formSearch">
	   <input type="hidden" name="cid" value="<?php echo $catID ?>"/>	
		
		<input type="text" id="txtkeyword" name="kw" value="<?php echo $keyword ?>" placeholder="Tìm kiếm..."> 
		<input type="button" class="btnSearch"  onclick="article.validateKeyword();"/>	
		<a href="post_search.php?pid=<?php echo $_currentProductID ?>" class="btn btn-large btn-post">Đăng Bán</a>
		<div class="clear"></div>
		
		<div class="box-filter">
<?php 


//echo $item[global_mapping::PropertyName];
echo '<select class="select2" name="manu" data-placeholder="Nhà Sản Xuất" style="min-width:150px">';
echo '<option value=""></option>';
foreach($allManuFactories as $item)
{
	echo '		<option value="'.$item[global_mapping::ManufactoryID].'">'.global_common::formatOutputText($item[global_mapping::ManufactoryName]).'</option>';
}
echo '	</select>';
//print_r($topProperties);
foreach($topProperties as $item)
{
	
	//echo $item[global_mapping::PropertyName];
	echo '<select class="select2" name="property['.$item[global_mapping::PropertyID].']" 
			data-placeholder="'.global_common::formatOutputText($item[global_mapping::PropertyName]).'" style="min-width:150px">';
	echo '<option value=""></option>';
	foreach($item[global_mapping::PropertyValue] as $value)
	{
		echo '		<option value="'.global_common::formatOutputText($value) .'">'.global_common::formatOutputText($value).'</option>';
	}
	echo '	</select>';
}
		?>
		</div>
	</form>
</div>