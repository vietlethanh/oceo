<?php
if ($_pgR["pid"])
{
	$productID = $_pgR["pid"];
	$product = $_currentProduct;
	//get general property
	$propertyInfo = $objProduct->getPropertyInfoByID($productID);
	$exPrices = $objProductPrice->getProductPriceByProduct($productID);
	$inPrices = $objRetailer->getRetailerByProduct($productID);
	$imageLinks = global_common::splitString($product[global_mapping::ImageLink],',');
	
	//$intPage = 1;
	//$total = 0;
	//$comments = $objComment->getCommentByArticle($intPage,$total,$articleID,'*','',' CreatedDate DESC');
	//print_r($article);
	//$addresses = global_common::splitString($article[global_mapping::Addresses],';');
	//$districts = global_common::splitString($article[global_mapping::Dictricts],';');
	//$cities = global_common::splitString($article[global_mapping::Cities],';');
}
?>

<script>
        jQuery(document).ready(function ($) {
            slide.init('slide_product_container');
        });
    </script>
<div id="product">
	<div id="advertises">
<?php 
//advertising
//include_once('_advertises.inc');
		?>	
	</div>
	<input type="hidden" id="hdproductid" value="<?php echo $product[global_mapping::ProductID]?>" />
	<div id="product-detail">
		<div id="product-summary">
			<div class="product-image">
				<!-- Jssor Slider Begin -->
				<!-- You can move inline styles to css file or css block. -->
				<div id="slide_product_container" style="position: relative; top: 0px; left: 0px; width: 500px;
					height: 500px; background: #191919; overflow: hidden;">

					<!-- Loading Screen -->
					<div u="loading" style="position: absolute; top: 0px; left: 0px;">
						<div style="filter: alpha(opacity=70); opacity:0.7; position: absolute; display: block;
							background-color: #000000; top: 0px; left: 0px;width: 100%;height:100%;">
						</div>
						<div style="position: absolute; display: block; background: url(../images/jssor/loading.gif) no-repeat center center;
							top: 0px; left: 0px;width: 100%;height:100%;">
						</div>
					</div>

					<!-- Slides Container -->
					<div u="slides" style="cursor: move; position: absolute; left: 40px; top: 10px; width: 500px; height: 480px; overflow: hidden; text-align:center">
<?php

foreach($imageLinks as $item)
{
	echo '<div>';
	echo '	<img u="image" src="'.$item.'" />';
	echo '	<img u="thumb" src="'.$item.'" />';
	echo '</div>';
}
						?>
						
					</div>
			        
					<!-- Arrow Navigator Skin Begin -->
					<style>
						/* jssor slider arrow navigator skin 05 css */
						/*
						.jssora05l              (normal)
						.jssora05r              (normal)
						.jssora05l:hover        (normal mouseover)
						.jssora05r:hover        (normal mouseover)
						.jssora05ldn            (mousedown)
						.jssora05rdn            (mousedown)
						*/
						.jssora05l, .jssora05r, .jssora05ldn, .jssora05rdn
						{
            				position: absolute;
            				cursor: pointer;
            				display: block;
							background: url(../images/jssor/a17.png) no-repeat;
							overflow:hidden;
						}
						.jssora05l { background-position: -10px -40px; }
						.jssora05r { background-position: -70px -40px; }
						.jssora05l:hover { background-position: -130px -40px; }
						.jssora05r:hover { background-position: -190px -40px; }
						.jssora05ldn { background-position: -250px -40px; }
						.jssora05rdn { background-position: -310px -40px; }
					</style>
					<!-- Arrow Left -->
					<span u="arrowleft" class="jssora05l" style="width: 40px; height: 40px; top: 158px; left: 88px;">
					</span>
					<!-- Arrow Right -->
					<span u="arrowright" class="jssora05r" style="width: 40px; height: 40px; top: 158px; right: 8px">
					</span>
					<!-- Arrow Navigator Skin End -->
			        
					<!-- Thumbnail Navigator Skin 02 Begin -->
					<div u="thumbnavigator" class="jssort02" style="position: absolute; width: 85px; height: 500px; left:0px; top: 0px;">
			        
						<!-- Thumbnail Item Skin Begin -->
						<style>
							/* jssor slider thumbnail navigator skin 02 css */
							/*
							.jssort02 .p            (normal)
							.jssort02 .p:hover      (normal mouseover)
							.jssort02 .pav          (active)
							.jssort02 .pav:hover    (active mouseover)
							.jssort02 .pdn          (mousedown)
							*/
							.jssort02 .w
							{
								position: absolute;
								top: 0px;
								left: 0px;
								width: 100%;
								height: 100%;
							}
							.jssort02 .c
							{
								position: absolute;
								top: 0px;
								left: 0px;
								width: 76px;
								height: 62px;
								border: #000 2px solid;
							}
							.jssort02 .p:hover .c, .jssort02 .pav:hover .c, .jssort02 .pav .c 
							{
                				background: url(../images/jssor/td1.png) center center;
                				border-width: 0px;
								top: 2px;
								left: 2px;
								width: 76px;
								height: 62px;
							}
							.jssort02 .p:hover .c, .jssort02 .pav:hover .c
							{
								top: 0px;
								left: 0px;
								width: 76px;
								height: 64px;
								border: #fff 1px solid;
							}
						</style>
						<div u="slides" style="cursor: move;top: 0; left: 0;">
							<div u="prototype" class="p" style="position: absolute; width: 79px; height: 66px; top: 0; left: 0;">
								<div class=w><thumbnailtemplate style=" width: 100%; height: 100%; border: none;position:absolute; top: 0; left: 0;"></thumbnailtemplate></div>
								<div class=c>
								</div>
							</div>
						</div>
						<!-- Thumbnail Item Skin End -->
					</div>
					<!-- Thumbnail Navigator Skin End -->
					<a style="display: none" href="http://www.jssor.com">jquery content slider</a>
				</div>
				<!-- Jssor Slider End -->
			</div>
			<div class="product-spec">
				<form method="POST" class="form-horizontal" id="post-article">
		
					<div class="table-post">
						<div class="control-group">
							<div class="">
								<h1 class="m-wrap title"><?php echo $product[global_mapping::ProductName] ?></h1>
							</div>
						</div>
						<div class="control-group">
							<div class="">
								<h1 class="m-wrap">Tổng quan</h1>
							</div>
						</div>
<?php

foreach($propertyInfo as $item)
{
	foreach($item["Properties"] as $subitem)
	{
		//print_r($item);
		//break;
		//echo $item[global_mapping::TypeID];
		if($subitem[global_mapping::Status] == global_common::SUB_STATUS_GENERAL_PROPERTY)
		{
			echo '<div class="control-group">';
			echo '	<label class="control-label">'.$subitem[global_mapping::PropertyName].':</label>';
			echo '	<div class="controls">	';
			echo '			<label class="">'.$subitem[global_mapping::PropertyValue].'</label>';
			echo '	</div>';
			echo '</div>';
		}
	}
}
?>
					</div>
				</form>
			</div>
			<div id="product-price">
				<form method="POST" class="form-horizontal" id="post-article">
		
					<div class="table-post">
						<div class="control-group">
							<div class="">
								<h1 class="m-wrap">Chi tiết giá bán</h1>
							</div>
						</div>
<?php
foreach($inPrices as $item)
{
	echo '<div class="control-group">';
	echo '	<label class="control-label">'.$item[global_mapping::ProductStatus].':</label>';
	echo '	<div class="controls">	';
	echo '		<a href="price_detail.php?pid='.$productID.'&type='.$item[global_mapping::ProductStatusID].'" class="link"> Từ '.global_common::FormatPrice($item[global_mapping::Price]).'</a>';
	echo '	</div>';
	echo '</div>';
}
?>
<?php
foreach($exPrices as $item)
{
	echo '<div class="control-group">';
	echo '	<label class="control-label">'.$item[global_mapping::Retailer].':</label>';
	echo '	<div class="controls">	';
	echo '		<a href="'.$item[global_mapping::ProductLink].'" target="_blank" class="link">'.global_common::FormatPrice($item[global_mapping::Price]).'</a>';
	echo '	</div>';
	echo '</div>';
}
?>
						<!--div class="control-group">
							<label class="control-label">Hàng mới:</label>
							<div class="controls">	
								<a href="#" class="link">9.000.000 VNĐ (Chưa có VAT)</a>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Hàng cũ:</label>
							<div class="controls">	
								<a href="#" class="link">9.000.000 VNĐ (Chưa có VAT)</a>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Hàng refurbished:</label>
							<div class="controls">	
								<a href="#" class="link">9.000.000 VNĐ (Chưa có VAT)</a>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Thế giới đi động:</label>
							<div class="controls">	
								<a href="#" class="link">9.000.000 VNĐ (Chưa có VAT)</a>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Viễn thông A:</label>
							<div class="controls">	
								<a href="#" class="link">9.000.000 VNĐ (Chưa có VAT)</a>
							</div>
						</div-->
					</div>
				</form>
			</div>		
		</div>
		<div class="clear"></div>
		<div id="product-property">	
			<form method="" class="form-horizontal" id="">
					<div class="table-post">
					<?php 
					foreach($propertyInfo as $item)
					{
						echo '<div class="property-zone">';
							echo '<div class="control-header">';
							echo '	<div class="group-name">';
							echo '     <h1 class="m-wrap control-label">'.$item[global_mapping::PropertyGroupName].'</h1>';
							echo '  </div>';
							echo '</div>';
							foreach($item["Properties"] as $subitem)
							{
								echo '<div class="control-group">';
								echo '	<label class="control-label">'.$subitem[global_mapping::PropertyName].':</label>';
								echo '	<div class="controls">	';
								echo '			<label class="">'.$subitem[global_mapping::PropertyValue].'</label>';
								echo '	</div>';
								echo '</div>';
							}
						echo '</div>';
					}
					 ?>
						<!--div class="control-header">
							<div class="group-name">
								<h1 class="m-wrap control-label">Màn hình</h1>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Giá sản phẩm:</label>
							<div class="controls">	
								<label class="">9.000.000 VNĐ (Chưa có VAT)</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Giá sản phẩm:</label>
							<div class="controls">	
								<label class="">9.000.000 VNĐ (Chưa có VAT)</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Giá sản phẩm:</label>
							<div class="controls">	
								<label class="">9.000.000 VNĐ (Chưa có VAT)</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Bảo hành:</label>
							<div class="controls">	
								<label class="">3 Tháng</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Xuất xứ:</label>
							<div class="controls">	
								<label class="">Xách tay</label>
							</div>
						</div>
						<div class="control-header">
							<h1 class="m-wrap control-label">Màn hình</h1>
							<div class="controls">
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Giá sản phẩm:</label>
							<div class="controls">	
								<label class="">9.000.000 VNĐ (Chưa có VAT)</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Giá sản phẩm:</label>
							<div class="controls">	
								<label class="">9.000.000 VNĐ (Chưa có VAT)</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Giá sản phẩm:</label>
							<div class="controls">	
								<label class="">9.000.000 VNĐ (Chưa có VAT)</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Bảo hành:</label>
							<div class="controls">	
								<label class="">3 Tháng</label>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Xuất xứ:</label>
							<div class="controls">	
								<label class="">Xách tay</label>
							</div>
						</div-->
					</div>
				</form>
		</div>
		<div class="clear"></div>
		<div id="product-content">	
	
			
<?php 
include('include/_social.inc');
?>


			<div class="content">			
<?php 

echo $product[global_mapping::Description]
			?>
			</div>			

		</div>		
<?php 
//article
//include_once('_comment_editor.inc');
		?>		
	</div>
	
</div>