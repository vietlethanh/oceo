
<style>
 

</style>
<div id="product-list">	
	<div id="products">
	
<?php
echo global_common::getPagingHTMLByNum($page,Model_Product::NUM_PER_PAGE,$total, 'core.util.changePage','formSearch');
foreach($products as $item)
{
	$links = global_common::splitString($item[global_mapping::ImageLink],",");
	$thumbnail = $links[0];
	if(!$thumbnail)
	{
		$thumbnail = '/images/150x150.gif';
	}
	echo '
			<div class="item">	
				<div class="info product-thumbnail">
			<a href="'.global_common::buildProductLink($item[global_mapping::ProductID]).'" title="'.$item[global_mapping::ProductName].'"><img src="'.$thumbnail.'" /></a>
			</div>		
			<div class="info product-title"><a href="'.global_common::buildProductLink($item[global_mapping::ProductID]).'" title="'.$item[global_mapping::ProductName].'">'.$item[global_mapping::ProductName].'</a></div>
			</div>';
}
echo global_common::getPagingHTMLByNum($page,Model_Product::NUM_PER_PAGE,$total, 'core.util.changePage','formSearch');

		?>	
		
	</div>
	<div id="advertises">
<?php 
//article
include_once('_advertises.inc');
		?>	
	</div>
</div>