<?php 
$properties =  $_pgR['property'];
$manu =  $_pgR['manu'];


$topProperties = $objProductProperty->getTopPropertyValue($catID,5,10);
$allManuFactories = $objManufactory->getAllManufactory(0,'*',global_mapping::CategoryID.'='.$catID, global_mapping::ManufactoryName);

?>
<div id="search-box">
	<form method="get" action="products.php" id="formSearch">
	    <input type="hidden" name="cid" value="<?php echo $catID ?>"/>	
		
		<input type="text" id="txtkeyword" name="kw" value="<?php echo $keyword ?>" placeholder="Tìm kiếm..."> 
		<input type="button" class="btnSearch"  onclick="product.validateKeyword();"/>	
		<a href="post_search.php?pid=<?php echo $_currentProductID ?>" class="btn btn-large btn-post">Đăng Bán</a>
		<div class="clear"></div>
		
		<div class="box-filter">
<?php 


//echo $item[global_mapping::PropertyName];
echo '<select class="select2" name="manu" data-placeholder="Nhà Sản Xuất" style="min-width:150px">';
echo '<option value=""></option>';
foreach($allManuFactories as $item)
{
	$selected ="";
	if($manu == $item[global_mapping::ManufactoryID])
	{
		$selected = 'selected=selected';
	}
	
	echo '		<option value="'.$item[global_mapping::ManufactoryID].'" '.$selected.'>'.global_common::formatOutputText($item[global_mapping::ManufactoryName]).'</option>';
}
echo '	</select>';
//print_r($topProperties);
foreach($topProperties as $item)
{
	$selectedValue = "";
	foreach($properties as $key => $info)
	{
		if($item[global_mapping::PropertyID] == $key)
		{
			$selectedValue = $info;
		}
	}
	//echo $selectedValue;
	//echo $item[global_mapping::PropertyName];
	echo '<select class="select2" name="property['.$item[global_mapping::PropertyID].']" 
			data-placeholder="'.global_common::formatOutputText($item[global_mapping::PropertyName]).'" style="min-width:150px">';
	echo '<option value=""></option>';
	foreach($item[global_mapping::PropertyValue] as $value)
	{
		$selected = "";
		if(trim(global_common::formatOutputText($value)) == trim($selectedValue))
		{
			//echo trim(global_common::formatOutputText($value));
			$selected = "selected=selected";
		}
		echo '		<option value="'.global_common::formatOutputText($value) .'" '.$selected.'>'.global_common::formatOutputText($value).'</option>';
	}
	echo '	</select>';
}
		?>
		</div>
	</form>
</div>