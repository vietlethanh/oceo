<?php
/* TODO: Add code here */
require('config/globalconfig.php');

$_SESSION[global_common::SES_C_CUR_PAGE] = "post_price.php";

include_once('include/_permission.inc');
include_once('class/model_articletype.php');
include_once('class/model_product.php');
include_once('class/model_comment.php');
include_once('class/model_user.php');
include_once('class/model_city.php');
include_once('class/model_district.php');
include_once('class/model_status.php');
include_once('class/model_retailer.php');

$objProduct = new Model_Product($objConnection);
$objArticleType = new Model_ArticleType($objConnection);
$objCity = new Model_City($objConnection);
$objDistrict = new Model_District($objConnection);
$objStatus = new Model_Status($objConnection);
$objRetailer = new Model_Retailer($objConnection);
$productStatuses = $objStatus->getAllStatus(0,'*',global_mapping::Type.'='.global_common::STATUS_PRODUCT_TYPE);
$intMode = 0;//add mode

$allCities = $objCity->getAllCity();
	
//echo 'get city:';
//echo($allCities);
if ($_pgR["pid"])
{
	$currentProduct = $objProduct->getProductByID($_pgR["pid"]);
}
if ($_pgR["rid"])
{
	$retailerID = $_pgR["rid"];
	
	$retailter = $objRetailer->getRetailerByID($retailerID);
	
	$intMode = 1;//edit mode
	$createBy = $retailter[global_mapping::CreatedBy];
	$currentUserID = $_SESSION[global_common::SES_C_USERINFO][global_mapping::UserID];
	if($createBy != $currentUserID)
	{
		global_common::redirectByScript("index.php");
		return;
	}
	$currentProduct = $objProduct->getProductByID($retailter[global_mapping::ProductID]);
	$currentProductType = $retailter[global_mapping::ProductStatusID];
	$currentPrice = $retailter[global_mapping::Price];
}
include_once('include/_header.inc');

?>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('ckeditor/ckeditor.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('ckeditor/adapters/jquery.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_product.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_articletype.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_retailer.js');?>"></script>

<div id="post-price" class="">
	<form method="POST" class="form-horizontal" id="post-article">
		<!--Begin Form Input -->
		<input type="hidden" id="adddocmode" name="adddocmode" value="<?php echo $intMode;?>" />
		<input type="hidden" id="RetailerID" name="RetailerID" value="<?php echo $retailerID;?>" />
		<input type="hidden" id="ProductID" name="ProductID" value="<?php echo $currentProduct[global_mapping::ProductID];?>" />
		<div class="table-post">
			<div class="control-group">
				<div class="controls">
					<h1 class="m-wrap title"><?php echo $intMode?'Cập nhật giá sản phẩm':'Đăng giá sản phẩm' ?></h1>
				</div>
			</div>
			<div class="control-group zone">
				<div class="controls">
					<h2 class="m-wrap zone-title">Thông tin tổng quát</h2>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Tên sản phẩm</label>
				<div class="controls">
				
					<a href="<?php echo global_common::buildProductLink($currentProduct[global_mapping::ProductID]) ?>" target="_blank" class="m-wrap"><?php echo $currentProduct[global_mapping::ProductName] ?></a>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Hình thức sản phẩm *</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmProductStatus" id="cmProductStatus" data-placeholder="Chọn lĩnh vực" tabindex="1" onchange="articleType.bindCategory(this);">
<?php
foreach($productStatuses as $item)
{
	if($item[global_mapping::StatusID] == $retailter[global_mapping::ProductStatusID])
		echo '			<option selected="selected" value="'.$item[global_mapping::StatusID].'" >'.$item[global_mapping::StatusName].'</option>';
	else
		echo '			<option value="'.$item[global_mapping::StatusID].'" >'.$item[global_mapping::StatusName].'</option>';
	
}
?>
					</select>
					<div class="help-inline message"></div>
				</div>
			</div>	
			<div class="control-group">
				<label class="control-label">Tình trạng sản phẩm</label>
				<div class="controls">
					<input type="text" name="txtStatusDetail" id="txtStatusDetail" class="text span6 maxlength="12"  placeholder=""  
					value="<?php echo $retailter[global_mapping::StatusDetail];?>"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Khu vực *</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmCity" id="cmCity" data-placeholder="Chọn thành phố" tabindex="1" >
<?php
foreach($allCities as $item)
{
	if($item[global_mapping::CityID] == $retailter[global_mapping::CityID] || $item[global_mapping::CityID]== $_SESSION[global_common::SES_C_USERINFO][global_mapping::CityID])
		echo '			<option selected="selected" value="'.$item[global_mapping::CityID].'" >'.$item[global_mapping::CityName].'</option>';
	else
		echo '			<option value="'.$item[global_mapping::CityID].'" >'.$item[global_mapping::CityName].'</option>';
	
}
?>
					</select>
					<div class="help-inline message"></div>
				</div>
			</div>	
			<div class="control-group">
				<label class="control-label">Giá bán (VNĐ) *</label>
				<div class="controls">
					<input type="text" name="txtPrice" id="txtPrice" class="text span6 maxlength="12"  
					placeholder="vd: 10,000,000"  
					value="<?php echo $retailter[global_mapping::Price];?>"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Hình minh họa</label>
				<div class="controls">
					<textarea  name="txtImage" id="txtImage" class="m-wrap span6" maxlength="255"  rows="2" placeholder="vd: http://i134.photobucket.com/albums/left.jpg; http://i134.photobucket.com/albums/right.jpg;"><?php echo $retailter[global_mapping::ImageLink];?></textarea>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Bộ sản phẩm</label>
				<div class="controls">
					<textarea  name="txtBoxInfo" id="txtBoxInfo" class="m-wrap span6" maxlength="255"  rows="2" placeholder=""><?php echo $retailter[global_mapping::BoxInfo];?></textarea>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Thông tin giao hàng</label>
				<div class="controls">
					<textarea  name="txtShipDesc" id="txtShipDesc" class="m-wrap span6" maxlength="255"  rows="2"><?php echo $retailter[global_mapping::ShippingDesc];?></textarea>
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label">Tổng quát sản phẩm</label>
				<div class="controls">
					<textarea  name="txtShortDesc" id="txtShortDesc" class="m-wrap span6" maxlength="255"  rows="2" placeholder=""><?php echo $retailter[global_mapping::ShortDesc];?></textarea>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<label class="checkbox">
						<input type="checkbox" id="chkRecieveEmail" name="chkRecieveEmail" value="" <?php echo ($retailter[global_mapping::Status]   ?'checked=checked':'');?>/> Nhận email khi có bình luận
					</label>
				</div>
			</div>
			<div class="control-group zone">
				<div class="controls">
					<h2 class="m-wrap zone-title">Thông tin chi tiết</h2>
				</div>
			</div>			
			<div class="control-group">
				<label class="control-label"></label>
				<div class="controls">
					<textarea class="span6 ckeditor m-wrap" name="txtContent" id="txtContent" rows="10"><?php echo $retailter[global_mapping::Description];?></textarea>
					<div class="help-inline message"></div>					
				</div>
			</div>
			<!--div class="control-group">
				<div class="controls">
					<label class="checkbox">
						<input type="checkbox" id="chkTerm" value="" /> Tôi đã đọc và đồng ý với <a href="<?php echo global_common::PAGE_TERM_GENERAL ?>" class="link" target="_blank">điều khoản sử dụng</a>  của hệ thống oceo.vn
					</label>
					<div class="help-inline message"></div>		
				</div>
			</div-->
			<div class="control-group">				
				<div class="controls">
					<a href="<?php echo $_SESSION[global_common::SES_LAST_PAGE]?>" class="lbtn">
						  <i class="icon-circle-arrow-left"></i> Trở lại
					</a>
					<input type="button" name="btnOK" id="btnOK" class="btn" value="Hoàn tất"/>
					<input type="reset" name="btnReset" id="btnReset" class="btn gray" value="Nhập lại"/>
				</div>
			</div>
		</div>
	</form>
</div>

<!--End Form Input -->
<?php 
//footer
include_once('include/_footer.inc');
include_once('include/_location.inc');

?>
<script language="javascript" type="text/javascript">
    $(document).ready(function () {
			$('#txtPrice').mask('000,000,000,000', {reverse: true});
			CKEDITOR.replace( 'txtContent',
			{
				height: 400
			});
			
			core.util.deSelectOption('optCity');
			core.util.deSelectOption('optDistrict');
			
			//init all categories
			articleType.setAllCategories();
			
			core.util.getObjectByID("btnOK").click(function(){
				//return;
				  retailer.postPrice();
			});
			
			core.util.getObjectByID("post-article").submit(function () {
                retailer.postPrice();				
				return false;				
            });
<?php
//if($intMode)
//{
//	if($article[global_mapping::StartHappyHour])
//		echo '$("#txtHappyFrom").val(\''.$article[global_mapping::StartHappyHour].'\');';
//	if($article[global_mapping::EndHappyHour])
//		echo '$("#txtHappyTo").val(\''.$article[global_mapping::EndHappyHour].'\');';
//}
			?>
    });
</script>