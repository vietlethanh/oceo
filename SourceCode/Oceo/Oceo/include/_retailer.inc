<?php
if ($_pgR["rid"])
{
	$retailerID = $_pgR["rid"];
	$retailer = $objRetailer->getRetailerByID($retailerID, '*','`Status`=1');
	//echo  $retailer[global_mapping::ProductID];
	$_currentProductID = $retailer[global_mapping::ProductID];
	//product properties
	$product = $objProduct->getProductByID($_currentProductID);
	//$productProperties = $objProperty->getPropertyByProduct($retailerID,global_common::STATUS_RETAILER_PROPERTY);
	$imageLinks = global_common::splitString($retailer[global_mapping::ImageLink],',');
}
?>

    <script>
        jQuery(document).ready(function ($) {
            slide.init('slide_retailer_container');
        });
    </script>
<div id="retailer">
	<div id="advertises">
<?php 
//advertising
//include_once('_advertises.inc');
		?>	
	</div>
	<input type="hidden" id="hdproductid" value="<?php echo $product[global_mapping::ProductID]?>" />
	<input type="hidden" id="hdretailerid" value="<?php echo $retailerID?>" />
	<div id="retailer-detail">
		<div id="retailer-navigate" class="product-navigate">
			<?php echo global_common::buildPathProduct($objConnection,$retailer[global_mapping::ProductID],$retailer[global_mapping::ProductStatusID]) ?>		
		</div>
		<div id="retailer-summary">
			<div class="retailer-image">
				<!-- Jssor Slider Begin -->
				<!-- You can move inline styles to css file or css block. -->
				<div id="slide_retailer_container" style="position: relative; top: 0px; left: 0px; width: 500px;
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
			<div class="retailer-spec">
				<form method="POST" class="form-horizontal" id="post-article">
		
					<div class="table-post">
						<div class="control-group">
							<div class="">
								<h1 class="m-wrap title"><?php echo $product[global_mapping::ProductName] ?></h1>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Tổng quát :</label>
							<div class="controls">	
								<label><?php echo $retailer[global_mapping::ShortDesc] ?></label>
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Giá sản phẩm:</label>
							<div class="controls">	
								<label class=""><?php echo global_common::FormatPrice($retailer[global_mapping::Price]) ?></label>
							</div>
						</div>
<?php
foreach($productProperties as $item)
{
	echo '<div class="control-group">';
	echo '	<label class="control-label">'.$item[global_mapping::PropertyName].'</label>';
	echo '	<div class="controls">	';
	echo '		<label>'.$item[global_mapping::PropertyValue].'</label>';
	echo '	</div>';
	echo '</div>';
}
						?>
						<div class="control-group">
							<label class="control-label">Tình trạng</label>
							<div class="controls">	
								<p><?php echo $retailer[global_mapping::StatusName] ?></p>
								<p><?php echo $retailer[global_mapping::StatusDetail] ?></p>
							</div>
						</div>
						
						<div class="control-group">
							<label class="control-label">Bộ sản phẩm</label>
							<div class="controls">	
								<p><?php echo $retailer[global_mapping::BoxInfo] ?></p>
							</div>
						</div>
						
						<div class="control-group">
							<div class="">
								<h1 class="m-wrap">Thông tin giao hàng</h1>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Khu vực</label>
							<div class="controls">	
								<p><?php echo $retailer[global_mapping::CityName] ?></p>
							</div>
						</div>
						<div class="control-group">
							<label class="control-label">Chi tiết</label>
							<div class="controls">	
								<p><?php echo $retailer[global_mapping::ShippingDesc] ?></p>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
		<div class="clear"></div>
		<div id="retailer-content">	
	
			
<?php 
include('include/_social.inc');
?>


			<div class="content">			
<?php 

echo $retailer[global_mapping::Description]
			?>
			</div>			

		</div>		
<?php 
//article
//include_once('_comment_editor.inc');
		?>		
	</div>
	
</div>