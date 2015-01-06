<?php
$objArticleType = new model_ArticleType($objConnection);
$objAdvert = new Model_Advertising($objConnection);
//get $_currentParentCatID from main view
if($_currentParentCatID)
{
	$condition = global_mapping::AdTypeID.'=\'2\' and '.global_mapping::ArticleTypeID.'=\''.$_currentParentCatID.'\'';
	$allAds = $objAdvertising->getAllAdvertising(0,'',$condition,'');
}

?>
<style>
 

</style>
<div id="company-list">	
	<div id="companies">
<?php
$max = 15;
$index = 0;
foreach($allAds as $item)
{
	$index ++;
	$thumbnail = $item[global_mapping::FileName];
	if(!$thumbnail)
	{
		$thumbnail = '/images/150x150.gif';
	}
	echo '
			<div class="item">	
			<div class="info article-thumbnail">
			<a href="article_detail.php?aid='.$item[global_mapping::ArticleID].'" title="'.$item[global_mapping::Title].'"><img src="'.$thumbnail.'" /></a>
			</div>';		
	/*echo '<div class="info price"><a href="#">'.$item[global_mapping::AdType].'</a></div>
			<div class="info name">
			<a href="article_detail.php?aid='.$item[global_mapping::ArticleID].'">'.$item[global_mapping::CompanyName].'</a>
			</div>
			<div class="info artcile-title">'.$item[global_mapping::Title].'</div>
			<div class="info">Bat dau: '.global_common::formatDateVN($item[global_mapping::StartDate]).'</div>
			<div class="info">Ket thuc: '.global_common::formatDateVN($item[global_mapping::EndDate]).'</div>		';*/
	echo '</div>';
	if($index >= $max)
	{
		break;	
	}
}
		?>	
	</div>
	
</div>