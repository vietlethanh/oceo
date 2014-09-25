<?php
if ($_pgR["pid"])
{
	$productID = $_pgR["pid"];
	$product = $objProduct->getProductByID($productID, '*','`Status`=1');
	//$intPage = 1;
	//$total = 0;
	//$comments = $objComment->getCommentByArticle($intPage,$total,$articleID,'*','',' CreatedDate DESC');
	//print_r($article);
	//$addresses = global_common::splitString($article[global_mapping::Addresses],';');
	//$districts = global_common::splitString($article[global_mapping::Dictricts],';');
	//$cities = global_common::splitString($article[global_mapping::Cities],';');
}
?>


<div id="price">
	
	<input type="hidden" id="hdproductid" value="<?php echo $product[global_mapping::ProductID]?>" />
	<div id="price-detail">
		<div id="product-summary">
				
		</div>
		<div class="clear"></div>
		<div id="price-content">	
	
			
<?php 
include('include/_social.inc');
?>


			<div class="content">			
				<table class="table table-bordered table-hover article-profile">
										<thead>
											<tr>
												<th class="span2">Giá bán</th>
												<th>Tình trạng</th>
												<th>Mô tả</th>
												<th>Bộ sản phẩm</th>
												<th>Người đăng</th>
												
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#" > Title</a></td>
												<td class="">Hàng mới</td>
												<td class="">Hàng mới mua từ TDDD còn bảo hành</td>
												<td class="">1 máy, 1 sạc, 1 thẻ nhớ 16GBs, 1 tai nghe</td>
												<td class=""> <a href="#" class="link">Nickname</a> </td>
	
											</tr>
<?php
/*foreach($articles as $item)
{
	echo '								<tr>';
	echo '									<td><a href="article_detail.php?aid='.$item[global_mapping::ArticleID].'" >'.$item[global_mapping::Title].'</a></td>';
	echo '									<td class="article-date">'.global_common::formatDateVN($item[global_mapping::StartDate]).'</td>';
	echo '									<td class="article-date">'.global_common::formatDateVN($item[global_mapping::EndDate]).'</td>';
	echo '									<td class="article-control">';
	echo '										<a href="post_article.php?aid='.$item[global_mapping::ArticleID].'" class="btn btn-mini">Sửa</a>';
	echo '										<a href="javascript:article.refreshArticle(\''.$item[global_mapping::ArticleID].'\')" class="btn btn-mini">Làm mới</a>';
	echo '										<a href="javascript:article.activeArticle(\''.$item[global_mapping::ArticleID].'\',0)" class="btn btn-mini">Xóa</a>';
	echo '									</td>';
	echo '								</tr>';
}*/
?>
										</tbody>
									</table>
			</div>			

		</div>		
<?php 
//article
//include_once('_comment_editor.inc');
		?>		
	</div>
	
</div>