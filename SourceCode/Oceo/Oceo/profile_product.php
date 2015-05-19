<?php

/* TODO: Add code here */
require('config/globalconfig.php');
include_once('include/_permission.inc');
include_once('class/model_articletype.php');
include_once('class/model_product.php');
include_once('class/model_user.php');
include_once('class/model_article.php');
include_once('class/model_manufactory.php');

$objProduct = new Model_Product($objConnection);
$objUser = new Model_User($objConnection);

if (global_common::isCLogin())
{
	//get user info
	$userInfo = $_SESSION[global_common::SES_C_USERINFO];
	$userID = $userInfo[global_mapping::UserID];
	$condidtion = global_mapping::CreatedBy.'='.$userID;//global_mapping::StartDate.' <= \''.global_common::nowSQL().'\''.' And '.global_mapping::EndDate.' >= \''.global_common::nowSQL().'\'';
	$products = $objProduct->getAllProduct($page,'*',$condidtion,'',$total);
	//$condidtion = global_mapping::EndDate.' <= \''.global_common::nowSQL().'\'';
	//$expireArticles = $objArticle->getArticleByUser($userID,1,global_common::DEFAULT_PAGE_SIZE,null,$condidtion,'');
	//print_r($articles);
}
$_SESSION[global_common::SES_C_CUR_PAGE] = "profile_product.php";
$_SESSION[global_common::SES_LAST_PAGE] = $_SESSION[global_common::SES_C_CUR_PAGE];
?>

<?php
include_once('include/_header.inc');
?>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_user.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_product.js');?>"></script>
<div id="profile-page" class="page-content">
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Thông tin tài khoản
			</h3>
		</div>
	</div>
	<form id="form-member-product">
		<input type="hidden"  name="p" id="p" value="<?php echo ($page) ?>" />	
	</form>	
	  <div class="row-fluid">	
            <div class="span12">
                <div class="span3">
                    <ul class="menu-profile">
                        <li >
							<a href="profile.php"><i class="icon-user"></i>Thông tin cá nhân </a><span class="after"></span>
						</li>
						 <li >
							<a href="profile_price.php"><i class="icon-reorder"></i>Quản lý đăng bán </a><span class="after"></span>
						</li>
                        <li class="active">
							<a href="javascript:void(0)"><i class="icon-reorder"></i>Quản lý sản phẩm</a>
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
												<th>Nhà SX</th>
												<th>Danh mục</th>
												<th></th>
											</tr>
										</thead>
										<tbody>
<?php
foreach($products as $item)
{
    
	if(	$item[global_mapping::IsDeleted] != true)
    {                
    	echo '								<tr>';
    	echo '									<td><a href="'.global_common::buildProductLink($item[global_mapping::ProductID]).'" >'.$item[global_mapping::ProductName].'</a></td>';
    	echo '									<td class="">'.$item[global_mapping::ManufactoryName].'</td>';
    	echo '									<td class="">'.$item[global_mapping::ArticleTypeName].'</td>';
    	echo '									<td class="article-control">';
    	echo '										<a href="post_product.php?pid='.$item[global_mapping::ProductID].'" class="btn btn-mini">Sửa</a>';
    	//echo '										<a href="javascript:article.refreshArticle(\''.$item[global_mapping::ArticleID].'\')" class="btn btn-mini">Làm mới</a>';
    	if(	$item[global_mapping::IsDeleted] == true)
    	{
    		//echo '<a href="javascript:product.activateProduct(\''.$item[global_mapping::ProductID].'\',0)" class="btn btn-mini">Phục hồi</a>';
    	}
    	else
    	{
    		echo '<a href="javascript:product.activateProduct(\''.$item[global_mapping::ProductID].'\',1)" class="btn btn-mini">Xóa</a>';
    	}	
    	//echo '										<a href="javascript:article.activeArticle(\''.$item[global_mapping::ArticleID].'\',0)" class="btn btn-mini">Xóa</a>';
    	echo '									</td>';
    	echo '								</tr>';
    }
}
?>
										</tbody>
									</table>
									</div>			
<?php
echo global_common::getPagingHTMLByNum($page,Model_Product::NUM_PER_PAGE,$total, 'core.util.changePage','form-member-product');
										 ?>		
								</div>	
													
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
