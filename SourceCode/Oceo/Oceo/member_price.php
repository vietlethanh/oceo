<?php

/* TODO: Add code here */
require('config/globalconfig.php');
include_once('include/_permission.inc');
include_once('class/model_articletype.php');
include_once('class/model_product.php');
include_once('class/model_user.php');
include_once('class/model_article.php');
include_once('class/model_manufactory.php');
include_once('class/model_retailer.php');
include_once('class/model_status.php');
$objProduct = new Model_Product($objConnection);
$objUser = new Model_User($objConnection);
$objRetailer = new Model_Retailer($objConnection);
$_SESSION[global_common::SES_LAST_PAGE] = $_SESSION[global_common::SES_C_CUR_PAGE];
$page = $_pgR["p"]? $_pgR["p"]:1;
$userID =  Urlcrypt::decode( $_pgR["uid"]);
$allRetailers = $objRetailer->getRetailerByUser($page,$userID,
		global_mapping::ProductID.','.global_mapping::RetailerID.','.global_mapping::ProductStatusID.','.global_mapping::Price.','.global_mapping::StatusDetail.','.
		global_mapping::ShortDesc.','.global_mapping::ShippingDesc.','.global_mapping::BoxInfo.','.global_mapping::CreatedBy.','.global_mapping::ModifiedDate.','.global_mapping::StatusID,$total);
?>

<?php
include_once('include/_header.inc');
?>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_user.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_retailer.js');?>"></script>
<div id="profile-page" class="page-content">
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Thông tin tài khoản
			</h3>
		</div>
	</div>
	<form id="form-member-price">
		<input type="hidden"  name="uid" id="uid" value="<?php echo ($_pgR["uid"]) ?>" />	
		<input type="hidden"  name="p" id="p" value="<?php echo ($page) ?>" />	
	</form>	
	  <div class="row-fluid">	
            <div class="span12">
                 <div class="span3">
                    <ul class="menu-profile">
                        <li  >
							<a href="javascript:void(0)"><i class="icon-user"></i>Thông tin cá nhân</a><span class="after"></span>
						</li>
						 <li class="active">
							<a href="member_price.php?uid=<?php echo  $_pgR["uid"] ?>"><i class="icon-reorder"></i>Bài đăng</a><span class="after"></span>
						</li>
                    </ul>
                </div>
                <div class="span9 tabbable tabbable-custom tabbable-full-width">
					<ul class="nav nav-tabs">
                    </ul>
                    <div class="tab-content">
						<div id="dislaying" class="tab-pane row-fluid active" >
                             <div class="portlet box">
								<div class="portlet-title hide">
									<div class="caption">
										<!--i class="icon-reorder"></i-->
									</div>
									
									<div class="tools">                                
										<!--a href="#config-form" data-toggle="modal" class="config"></a-->
										<!--a href="javascript:;" class="reload" title="Reload"></a-->
									</div>
									<div class="actions">									
										
									</div>
								</div>
								<!---->
								<div class="portlet-body">
									<table class="table table-bordered table-hover article-profile">
										<thead>
											<tr>
												<th class="span4">Tên sản phẩm</th>
												<th class="span2">Giá bán</th>
												<th style="width:120px">Tình trạng</th>
												<th style="width:140px">Cập nhật</th>
											</tr>
										</thead>
										<tbody>
<?php
foreach($allRetailers as $item)
{
	echo '								<tr>';
	echo '									<td><a href="'.global_common::buildProductLink($item[global_mapping::ProductID]).'" >'.$item[global_mapping::ProductName].'</a></td>';
	echo '									<td class="">'.global_common::FormatPrice($item[global_mapping::Price]).'</td>';
	echo '									<td class="">'.$item[global_mapping::ProductStatus].' '.$item[global_mapping::StatusDetail].'</td>';
	echo '									<td >'.global_common::formatDateTimeVN($item[global_mapping::ModifiedDate]).'</td>';
	echo '								</tr>';
}
?>
										</tbody>
									</table>
								</div>	
<?php
echo global_common::getPagingHTMLByNum($page,Model_Retailer::NUM_PER_PAGE,$total, 'core.util.changePage','form-member-price');
										 ?>			
								<!-- BEGIN PAGINATION-->
								<!--div class="row-fluid no-background no-display">
									<div class="span12">
										
									</div>
								</div-->
								<!-- END PAGINATION-->
								<!---->
							</div>
                        </div>
					</div>
                </div>
                <!--end span9-->
            </div>
        </div>
</div>
<script language="javascript" type="text/javascript">
    $(document).ready(function () {
      
    });
</script>
<?php 
//footer
include_once('include/_footer.inc');
?>
