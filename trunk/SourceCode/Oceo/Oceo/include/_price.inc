<?php
if ($_pgR["pid"])
{
	$productID = $_pgR["pid"];
	$type = $_pgR["type"];
	$allRetailers = $objRetailer->getRetailerByProduct($productID,$type,
			global_mapping::RetailerID.','.global_mapping::ProductStatusID.','.global_mapping::Price.','.
			global_mapping::ShortDesc.','.global_mapping::Warranty.','.global_mapping::BoxInfo.','.global_mapping::CreatedBy);
	//$product = $objProduct->getProductByID($productID, '*','`Status`=1');
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
				<div id="retailer-navigate">
					<a href="#" class="link">Chi tiết sản phẩm</a> => <a href="#" class="link">Hàng mới từ 12.000.000đ</a> | <span>Hàng mới cũ 10.000.000đ</span> | <a href="#" class="link">Hàng refurbished từ 12.000.000đ</a> 
				</div>
				<table class="table table-bordered table-hover article-profile">
										<thead>
											<tr>
												<th class="span2">Giá bán</th>
												<th style="width:120px">Tình trạng</th>
												<th>Mô tả</th>
												<th style="width:150px">Bộ sản phẩm</th>
												<th style="width:150px">Bảo hành</th>
												<th style="width:120px">Người đăng</th>
												
											</tr>
										</thead>
										<tbody>
											<!--tr>
												<td><a href="#" > Title</a></td>
												<td class="">Hàng mới</td>
												<td class="">Hàng mới mua từ TDDD còn bảo hành</td>
												<td class="">1 máy, 1 sạc, 1 thẻ nhớ 16GBs, 1 tai nghe</td>
												<td class=""> <a href="#" class="link">Nickname</a> </td>
	
											</tr-->
<?php
foreach($allRetailers as $item)
{
	echo '								<tr>';
	echo '									<td><a href="#" > '.global_common::FormatPrice($item[global_mapping::Price]).'</a></td>';
	echo '									<td class="">'.$item[global_mapping::ProductStatus].'</td>';
	echo '									<td class="">'.$item[global_mapping::ShortDesc].'</td>';
	echo '									<td class="">'.$item[global_mapping::BoxInfo].'</td>';
	echo '									<td class="">'.$item[global_mapping::Warranty].'</td>';
	echo '									<td class=""> <a href="#" class="link">'.$item[global_mapping::CreatedBy][global_mapping::UserName].'</a> </td>';
	echo '								</tr>';
}
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