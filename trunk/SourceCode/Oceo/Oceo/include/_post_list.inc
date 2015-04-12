
<style>
 

</style>
<div id="product-list">	
	<div id="posts">
     <input class="btn mocde-view" type="button" value="Xem theo Sản phẩm" onclick="$('#mode').val('');$('#formSearch').submit();" />
	
<?php
//echo 'total:'.$total;
echo global_common::getPagingHTMLByNum($page,Model_Product::NUM_PER_PAGE,$total, 'core.util.changePage','formSearch');
foreach($retailers as $item)
{
    $summaryPost .= '<div class="item">';
    $summaryPost .= '		<div class="avatar">';
    $summaryPost .= '			<img src="'.$item[global_mapping::CreatedBy][global_mapping::Avatar].'" />';
    $summaryPost .= '		</div>';
    $summaryPost .= '		<div class="post-detail">';
    $summaryPost .= '			<div class="username">';
    $summaryPost .= '				 <a href="'.global_common::buildUserLink($item[global_mapping::CreatedBy][global_mapping::UserID]).'" class="link">'.$item[global_mapping::CreatedBy][global_mapping::FullName].'</a>';
    $summaryPost .= '				 <p class="created-date">đăng lúc '.global_common::formatDateTimeVN($item[global_mapping::CreatedDate]).'</p>	';
    $summaryPost .= '				 <br><p class="created-date"> Cập nhập lúc '.global_common::formatDateTimeVN($item[global_mapping::ModifiedDate]).'</p>	';
    $summaryPost .= '			</div>';
    $summaryPost .= '			<div class="post-detail-content">';
    $summaryPost .= '					<a class="title" href='.global_common::buildRetailerLink($item[global_mapping::RetailerID]).'>'. $item["Product"][global_mapping::ProductName].'</a>'; 
    $summaryPost .= '					<p>Giá bán: <span class="price">'.global_common::FormatPrice($item[global_mapping::Price]).'<span></p>';
    $summaryPost .= '					<p>Tình trạng: '.$item[global_mapping::StatusName].'</p>';
    $summaryPost .= '			</div>	';  
    $summaryPost .= '		</div>';
    $summaryPost .= '</div>';
    echo $summaryPost;
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