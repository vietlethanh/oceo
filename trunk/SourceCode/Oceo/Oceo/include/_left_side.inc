<?php
$objArticleType = new model_ArticleType($objConnection);
$objArticleType = new model_ArticleType($objConnection);
$objArticle = new model_Article($objConnection);
//$_parentCatID get from parent page
$allCats = $objArticleType->getAllArticleType(0,null,'ParentID='.$_parentCatID,null);
if($_pgR["cid"])
{
	$parentID = 0;
	$catID = $_pgR["cid"];
	$strCats = global_common::convertToQueryIN($catID);
}
elseif($_pgR["aid"])
{
	$articleID = $_pgR["aid"];
	$cats = $objArticle->getArticleTypesByID($articleID);
	$strCats = global_common::convertToQueryIN($cats);
}
elseif($_pgR["pid"])
{
	$catID = $_currentProduct[global_mapping::CatalogueID];
	$strCats = global_common::convertToQueryIN($catID);
}
elseif($_pgR["rid"])
{
	$catID = $_currentProduct[global_mapping::CatalogueID];
	$strCats = global_common::convertToQueryIN($catID);
}
?>
<div id="left-sider">
	
	<ul>
<?php 
$link = 'products.php?cid='.$parentCat[global_mapping::ArticleTypeID];
//echo '<a href="#">	'.$parentCat[global_mapping::ArticleTypeName].'</a>';
foreach($allCats as $item)
{
	$classActive = '';
	$link = 'products.php?cid='.$item[global_mapping::ArticleTypeID];
	if(strpos($strCats,'\''.$item[global_mapping::ArticleTypeID].'\'') !== false)
	{
		$classActive = 'active';
	}
	echo '<li class="'.$classActive.'">';
	echo '	<a href="'.$link.'">	'.$item[global_mapping::ArticleTypeName].'</a>';
	echo '</li>';
}
			?>
	</ul>
	
</div>