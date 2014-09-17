<?php
/* TODO: Add code here */
require('config/globalconfig.php');

$_SESSION[global_common::SES_C_CUR_PAGE] = "post_article.php";

include_once('include/_permission.inc');
include_once('include/_header.inc');
include_once('class/model_articletype.php');
include_once('class/model_article.php');
include_once('class/model_comment.php');
include_once('class/model_user.php');
include_once('class/model_city.php');
include_once('class/model_district.php');

$objArticle = new Model_Article($objConnection);
$objArticleType = new Model_ArticleType($objConnection);
$objCity = new Model_City($objConnection);
$objDistrict = new Model_District($objConnection);
$intMode = 0;//add mode
$parentTypes = $objArticleType->getAllArticleType(0,null, 'ParentID=0','Level');
$allTypes = $objArticleType->getAllArticleType(0,null, 'ParentID='.$parentTypes[0][global_mapping::ArticleTypeID] ,'Level');

$allCities = $objCity->getAllCity();
//echo 'get city:';
//echo($allCities);
$allDistricts = $objDistrict->getAllDistrict();

if ($_pgR["aid"])
{
	$articleID = $_pgR["aid"];
	
	$article = $objArticle->getArticleByID($articleID);
	
	$intMode = 1;//edit mode
	$createBy = $article[global_mapping::CreatedBy];
	$currentUserID = $_SESSION[global_common::SES_C_USERINFO][global_mapping::UserID];
	if($createBy != $currentUserID)
	{
		global_common::redirectByScript("index.php");
		return;
	}
	//print_r($article[global_mapping::ArticleID]);
	$currentTypes = $objArticle->getArticleTypesByID($article[global_mapping::ArticleID]);
	//print_r($currentTypes);
	$type = $objArticleType->getArticleTypeByID($currentTypes[0]);
	$currentParentType = $type[global_mapping::ParentID];
	//print_r($currentParentType);
	$parentTypes = $objArticleType->getAllArticleType(0,null, 'ParentID=0','Level');
	
	$allTypes = $objArticleType->getAllArticleType(0,null, 'ParentID='.$currentParentType ,'Level');
	//print_r($allTypes);
	$addresses = global_common::splitString($article[global_mapping::Addresses],';');
	$districts = global_common::splitString($article[global_mapping::Dictricts],';');
	$cities = global_common::splitString($article[global_mapping::Cities],';');
	
	//print_r($parentTypes);
	//$intPage = 1;
	//$total = 0;
	//$comments = $objComment->getCommentByArticle($intPage,$total,$articleID,'*','',' CreatedDate DESC');
	//print_r($article);
}

?>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('ckeditor/ckeditor.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('ckeditor/adapters/jquery.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_product.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_articletype.js');?>"></script>

<div id="post-price" class="span10">
	<form method="POST" class="form-horizontal" id="post-article">
		<!--Begin Form Input -->
		<input type="hidden" id="adddocmode" name="adddocmode" value="<?php echo $intMode;?>" />
		<input type="hidden" id="ArticleID" name="ArticleID" value="<?php echo $articleID;?>" />
		<div class="table-post">
			<div class="control-group">
				<div class="controls">
					<h1 class="m-wrap title"><?php echo $intMode?'Cập nhật giá sản phẩm':'Đăng giá sản phẩm' ?></h1>
				</div>
			</div>
			<div class="control-group zone">
				<div class="controls">
					<h2 class="m-wrap zone-title">Thông tin giá sản phẩm</h2>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Hình thức sản phẩm *</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmArea" id="cmArea" data-placeholder="Chọn lĩnh vực" tabindex="1" onchange="articleType.bindCategory(this);">
<?php
foreach($parentTypes as $item)
{
	if($item[global_mapping::ArticleTypeID] == $currentParentType)
		echo '			<option selected="selected" value="'.$item[global_mapping::ArticleTypeID].'" >'.$item[global_mapping::ArticleTypeName].'</option>';
	else
		echo '			<option value="'.$item[global_mapping::ArticleTypeID].'" >'.$item[global_mapping::ArticleTypeName].'</option>';
	
}
?>
					</select>
					<div class="help-inline message"></div>
				</div>
			</div>	
			<div class="control-group">
				<label class="control-label">Giá bán</label>
				<div class="controls">
					<input type="text" name="txtImage" id="txtImage" class="text span6 maxlength="255"  
					placeholder="vd: http://i134.photobucket.com/albums/q99/45748_0_square_1a.jpg"  
					value="<?php echo $article[global_mapping::FileName];?>"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Hình minh họa</label>
				<div class="controls">
					<input type="text" name="txtImage" id="txtImage" class="text span6" maxlength="255"  
					placeholder="vd: http://i134.photobucket.com/albums/q99/45748_0_square_1a.jpg"  
					value="<?php echo $article[global_mapping::FileName];?>"/>
				</div>
			</div>
			<div class="control-group zone">
				<div class="controls">
					<h2 class="m-wrap zone-title">Thông tin giao hàng</h2>
				</div>
			</div>
			<div class="control-group">	
				<label class="control-label">Hình thức giao hàng *</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmCategory" id="cmCategory" data-placeholder="Chọn chuyên mục" multiple="multiple" tabindex="1">
<?php
foreach($allTypes as $item)
{
	$isSelect = false;
	//print_r($currentTypes);
	foreach($currentTypes as $selected)
	{
		if($item[global_mapping::ArticleTypeID] == $selected)
		{
			$isSelect=true;
		}
	}
	
	if($isSelect)
		echo '			<option selected="selected" value="'.$item[global_mapping::ArticleTypeID].'" >'.$item[global_mapping::ArticleTypeName].'</option>';
	else
		echo '			<option value="'.$item[global_mapping::ArticleTypeID].'" >'.$item[global_mapping::ArticleTypeName].'</option>';
}
?>
					</select>
					<div class="help-inline message"></div>					
				</div>
			</div>
			
			<div class="control-group">
				<label class="control-label">Thời gian giao hàng</label>
				<div class="controls">
					<input type="text" name="txtName" id="txtName" class="text span6" maxlength="255"  
					value="<?php echo $article[global_mapping::Title];?>"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Chi phí giao hàng</label>
				<div class="controls">
					<input type="text" name="txtName" id="txtName" class="text span6" maxlength="255"  
					value="<?php echo $article[global_mapping::Title];?>"/>
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
					<textarea class="span6 ckeditor m-wrap" name="txtContent" id="txtContent" rows="10"><?php echo $article[global_mapping::Content];?></textarea>
					<div class="help-inline message"></div>					
				</div>
			</div>
			<div class="control-group no-display">
				<label class="control-label">Tags </label>
				<div class="controls">
					<textarea id='txtTags' name='txtTags' class="m-wrap span6" rows="2"></textarea>
				</div>
			</div>
			<div class="control-group">
				<div class="controls">
					<label class="checkbox">
						<input type="checkbox" id="chkTerm" value="" /> Tôi đã đọc và đồng ý với <a href="<?php echo global_common::PAGE_TERM_KM ?>" class="link" target="_blank">điều khoản đăng tin</a>  của hệ thống oceo.vn
					</label>
					<div class="help-inline message"></div>		
				</div>
			</div>
			<div class="control-group">				
				<div class="controls">
					<a href="javascript:;" class="lbtn">
						  <i class="icon-circle-arrow-left"></i> Trở lại
					</a>
					<input type="submit" name="btnOK" id="btnOK" class="btn" value="Hoàn tất"/>
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
			CKEDITOR.replace( 'txtContent',
			{
				height: 400
			});
			
			core.util.deSelectOption('optCity');
			core.util.deSelectOption('optDistrict');
			
			//init all categories
			articleType.setAllCategories();
			
			core.util.getObjectByID("btnOK").click(function(){
				return;
				 //article.postArticle();			
			});
			
			core.util.getObjectByID("post-article").submit(function () {
                article.postArticle();				
				return false;				
            });
<?php
if($intMode)
{
	if($article[global_mapping::StartHappyHour])
		echo '$("#txtHappyFrom").val(\''.$article[global_mapping::StartHappyHour].'\');';
	if($article[global_mapping::EndHappyHour])
		echo '$("#txtHappyTo").val(\''.$article[global_mapping::EndHappyHour].'\');';
}
			?>
    });
</script>