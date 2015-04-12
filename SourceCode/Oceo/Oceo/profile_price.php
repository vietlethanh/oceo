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
if (global_common::isCLogin())
{
	$page = $_pgR["p"]? $_pgR["p"]:1;
	//get user info
	$userInfo = $_SESSION[global_common::SES_C_USERINFO];
	$userID = $userInfo[global_mapping::UserID];
	//$condidtion = global_mapping::CreatedBy.'='.$userID;//global_mapping::StartDate.' <= \''.global_common::nowSQL().'\''.' And '.global_mapping::EndDate.' >= \''.global_common::nowSQL().'\'';
	$allRetailers = $objRetailer->getRetailerByUser($page,$userID,
			global_mapping::ProductID.','.global_mapping::RetailerID.','.global_mapping::ProductStatusID.','.global_mapping::Price.','.global_mapping::StatusDetail.','.
			global_mapping::ShortDesc.','.global_mapping::ShippingDesc.','.global_mapping::BoxInfo.','.global_mapping::CreatedBy.','.global_mapping::ModifiedDate.','.global_mapping::StatusID,$total);
	
}
$_SESSION[global_common::SES_C_CUR_PAGE] = "profile_price.php";
$_SESSION[global_common::SES_LAST_PAGE] = $_SESSION[global_common::SES_C_CUR_PAGE];
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
		<input type="hidden"  name="p" id="p" value="<?php echo ($page) ?>" />	
	</form>	
	  <div class="row-fluid">	
            <div class="span12">
                <div class="span3">
                    <ul class="menu-profile">
                        <li >
							<a href="profile.php"><i class="icon-user"></i>Thông tin cá nhân </a><span class="after"></span>
						</li>
						 <li  class="active">
							<a href="javascript:void(0)"><i class="icon-reorder"></i>Quản lý đăng bán </a><span class="after"></span>
						</li>
                        <li>
							<a href="profile_product.php"><i class="icon-reorder"></i>Quản lý sản phẩm</a>
						</li>
                    </ul>
                </div>
                <div class="span9 tabbable tabbable-custom tabbable-full-width">
					<ul class="nav nav-tabs">
						<!--li class="active"><a href="#dislaying" data-toggle="tab">Đang hiển thị</a></li-->
						<!--li class=""><a href="#verifying" data-toggle="tab">Chờ duyệt</a></li-->
						<!--li class=""><a href="#draff" data-toggle="tab">Lưu nháp</a></li-->
						<!--li class=""><a href="#inactive" data-toggle="tab">Hết hạn</a></li-->
						
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
                                                <th style="width:100px">Cập nhật</th>
												<th style="width:120px"></th>
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
	echo '									<td class="article-control">';
	echo '										<a href="post_price.php?pid='.$item[global_mapping::ProductID].'&rid='.$item[global_mapping::RetailerID].'" class="btn btn-mini">Sửa</a>';
	
	//echo '										<a href="javascript:article.refreshArticle(\''.$item[global_mapping::ArticleID].'\')" class="btn btn-mini">Làm mới</a>';
	echo '										<a href="javascript:retailer.deleteRetailer(\''.$item[global_mapping::ProductName].'\',\''.$item[global_mapping::RetailerID].'\')" class="btn btn-mini">Xóa</a>';
	if(	$item[global_mapping::StatusID] == global_common::STATUS_INACTIVE)
	{
		echo '							        <a href="javascript:retailer.activateRetailer(\''.$item[global_mapping::RetailerID].'\','.global_common::STATUS_INACTIVE.')" class="btn btn-mini">Bán lại</a>';
	}
	else
	{
		echo '							        <a href="javascript:retailer.activateRetailer(\''.$item[global_mapping::RetailerID].'\','.global_common::STATUS_ACTIVE.')" class="btn btn-mini">Dừng bán</a>';
	}	
	
	echo '									</td>';
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
										<div class="pagination pull-right margin-right">
											<ul>
												<li><a href="#" title="Trang đầu tiên"><i class="icon-step-backward"></i></a></li>
												<li><a href="#" title="Trang trước">&laquo;</a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#" title="Trang sau">&raquo;</a></li>
												<li><a href="#" title="Trang cuối cùng"><i class="icon-step-forward"></i></a></li>
											</ul>
										</div>
									</div>
								</div-->
								<!-- END PAGINATION-->
								<!---->
							</div>
                   
                        </div>
                    
						<div id="verifying" class="tab-pane row-fluid " >
                             <div class="portlet box">
								<div class="portlet-title hide">
									<div class="caption">
										<!--i class="icon-reorder"></i-->
									</div>
								</div>
								<!---->
								<div class="portlet-body">
									<table class="table table-bordered table-hover">
										<thead>
											<tr>
												<th class="span4">Tên khuyến mãi</th>
												<th>Bắt đầu</th>
												<th>Kết thúc</th>
												<th></th>
											</tr>
										</thead>
										<tbody>

										</tbody>
									</table>
								</div>						
								<!-- BEGIN PAGINATION-->
								<!--div class="row-fluid no-background no-display">
									<div class="span12">
										<div class="pagination pull-right margin-right">
											<ul>
												<li><a href="#" title="Trang đầu tiên"><i class="icon-step-backward"></i></a></li>
												<li><a href="#" title="Trang trước">&laquo;</a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#" title="Trang sau">&raquo;</a></li>
												<li><a href="#" title="Trang cuối cùng"><i class="icon-step-forward"></i></a></li>
											</ul>
										</div>
									</div>
								</div-->
								<!-- END PAGINATION-->
								<!---->
							</div>
                   
                        </div>
                    
						<div id="draff" class="tab-pane row-fluid " >
                             <div class="portlet box">
								<div class="portlet-title hide">
									<div class="caption">
										<!--i class="icon-reorder"></i-->
									</div>
								</div>
								<!---->
								<div class="portlet-body">
									<table class="table table-bordered table-hover">
										<thead>
											<tr>
												<th class="span4">Tên khuyến mãi</th>
												<th>Bắt đầu</th>
												<th>Kết thúc</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
											
										</tbody>
									</table>
								</div>						
								<!-- BEGIN PAGINATION-->
								<!--div class="row-fluid no-background no-display">
									<div class="span12">
										<div class="pagination pull-right margin-right">
											<ul>
												<li><a href="#" title="Trang đầu tiên"><i class="icon-step-backward"></i></a></li>
												<li><a href="#" title="Trang trước">&laquo;</a></li>
												<li><a href="#">1</a></li>
												<li><a href="#">2</a></li>
												<li><a href="#">3</a></li>
												<li><a href="#">4</a></li>
												<li><a href="#">5</a></li>
												<li><a href="#" title="Trang sau">&raquo;</a></li>
												<li><a href="#" title="Trang cuối cùng"><i class="icon-step-forward"></i></a></li>
											</ul>
										</div>
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
