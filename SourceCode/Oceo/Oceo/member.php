<?php

/* TODO: Add code here */
require('config/globalconfig.php');
include_once('include/_permission.inc');
include_once('class/model_user.php');
include_once('class/model_city.php');
require_once('lib/ImageManipulator.php');

$objUser = new Model_User($objConnection);
$userID =  Urlcrypt::decode( $_pgR["uid"]);
$currentUser = $objUser->getUserByID($userID) ;
if(!$currentUser)
{
	return;
}
?>

<?php
include_once('include/_header.inc');
include_once('include/_menu.inc');
//print_r($_SESSION[global_common::SES_C_USERINFO]);
?>

<div id="profile-page" class="page-content">
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Thông tin người đăng
			</h3>
		</div>
	</div>
	  <div class="row-fluid">	
            <div class="span12">
                <div class="span3">
                    <ul class="menu-profile">
                        <li  class="active">
							<a href="javascript:void(0)"><i class="icon-user"></i>Thông tin cá nhân</a><span class="after"></span>
						</li>
						 <li >
							<a href="member_price.php?uid=<?php echo  $_pgR["uid"] ?>"><i class="icon-reorder"></i>Bài đăng</a><span class="after"></span>
						</li>
                    </ul>
                </div>
                <div class="span9 tabbable tabbable-custom tabbable-full-width">
                    <div class="tab-content">
						<div id="general-info" class="tab-pane row-fluid active" >
                            <div class="span2" style="float:left">
                                <img src="<?php echo ($currentUser[global_mapping::Avatar])?>" alt="" />
                            </div>
                            <ul class="unstyled " style="float:left">
                                <li><span>Tên đăng nhập:</span> <?php echo global_common::formatOutputText($currentUser[global_mapping::UserName])?></li>
                                <li><span>Họ và Tên:</span> <?php echo global_common::formatOutputText($currentUser[global_mapping::FullName])?></li>
								<li><span>Tham gia:</span> 
									<?php echo global_common::formatOutputText(global_common::formatDateVN($currentUser[global_mapping::CreatedDate]))?></li>
                                <li><span>Giới tính:</span> <?php echo ($currentUser[global_mapping::UserName]?'Nam':'Nữ')?></li>
                                <li><span>Email:</span> <a href="mailto:">  <?php echo global_common::formatOutputText($currentUser[global_mapping::Email])?></a></li>
	   						 <li><span>Số điện thoại:</span> <?php echo ($currentUser[global_mapping::Phone])?></li>                               
                                <li><span>Địa chỉ:</span>  <?php echo global_common::formatOutputText($currentUser[global_mapping::Address]). ', '.$currentUser[global_mapping::CityName]?></li>
                            </ul>
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
