<?php
/* TODO: Add code here */
require('config/globalconfig.php');

$_SESSION[global_common::SES_C_CUR_PAGE] = "post_product.php";

include_once('include/_permission.inc');
include_once('include/_header.inc');
include_once('class/model_articletype.php');
include_once('class/model_article.php');
include_once('class/model_comment.php');
include_once('class/model_user.php');
include_once('class/model_propertygroup.php');
include_once('class/model_property.php');
include_once('class/model_product.php');
include_once('class/model_manufactory.php');
include_once('class/model_productproperty.php');
include_once('class/model_datatype.php');


$objArticle = new Model_Article($objConnection);
$objArticleType = new Model_ArticleType($objConnection);
$objPropertyGroup = new Model_PropertyGroup($objConnection);
$objProperty = new Model_Property($objConnection);
$objProduct = new Model_Product($objConnection);
$objProductProperty = new Model_ProductProperty($objConnection);
$objManufactory = new Model_Manufactory($objConnection);

//$propertyInfo = $objProduct->getPropertyInfoByID(30);

//print_r($propertyInfo);



$intMode = 0;//add mode
$parentTypes = $objArticleType->getAllArticleType(0,null, 'ParentID=0','Level');
$allTypes = $objArticleType->getAllArticleType(0,null, 'ParentID!=0' ,'Level');

//set default selected section
$currentParentType = $parentTypes[0][global_mapping::ArticleTypeID];


$allGroups = $objPropertyGroup->getAllPropertyGroup(0,'*','', '');

$allManuFactories = $objManufactory->getAllManufactory(0,'*','', global_mapping::ManufactoryName);

//print_r($allGroups);
$allGroupIDs = global_common::getArrayColumn($allGroups,global_mapping::PropertyGroupID);
$strQueryIN = global_mapping::PropertyGroupID .' IN('. global_common::convertToQueryIN($allGroupIDs) .')';
//echo($allCities);
$allProperties = $objProperty->getAllProperty(0,'*',$strQueryIN,'`Order`');
//print_r($allProperties);
if ($_pgR["pid"])
{
	$productID = $_pgR["pid"];
	
	$product = $objProduct->getProductByID($productID);
	
	$intMode = 1;//edit mode
	$createBy = $product[global_mapping::CreatedBy];
	$currentUserID = $_SESSION[global_common::SES_C_USERINFO][global_mapping::UserID];
	if($createBy != $currentUserID)
	{
		global_common::redirectByScript("index.php");
		return;
	}
	//print_r($article[global_mapping::ArticleID]);
	$currentTypeID = $product[global_mapping::CatalogueID];
	//print_r($product);
	$type = $objArticleType->getArticleTypeByID($currentTypeID);
	//print_r($type);
	$currentParentType = $type[global_mapping::ParentID];
	//print_r($currentParentType);
	//adjust from product id
	$parentTypes = $objArticleType->getAllArticleType(0,null, 'ParentID=0','Level');
	
	$allTypes = $objArticleType->getAllArticleType(0,null, 'ParentID='.$currentParentType ,'Level');
	
	$propertyInfo = $objProduct->getPropertyInfoByID($productID);
	//echo $product[global_mapping::Description];
}

?>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('ckeditor/ckeditor.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('ckeditor/adapters/jquery.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-better-Typeahead/js/bootstrap3-typeahead.min.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('bootstrap-better-Typeahead/js/bootstrap-better-typeahead.js');?>"></script>
<link type="text/css" rel="stylesheet"  href="<?php echo $_objSystem->locateJPlugin('bootstrap-better-Typeahead/css/bootstrap-better-typeahead.css');?>">

<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_product.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_articletype.js');?>"></script>

<div id="post-product" class="">
	<form method="POST" class="form-horizontal" id="post-article">
		<!--Begin Form Input -->
		<input type="hidden" id="adddocmode" name="adddocmode" value="<?php echo $intMode;?>" />
		<input type="hidden" id="ProductID" name="ProductID" value="<?php echo $productID;?>" />
		<div class="table-post">
			<div class="control-group">
				<div class="controls">
					<h1 class="m-wrap title"><?php echo $intMode?'Cập nhật sản phẩm':'Đăng mới sản phẩm' ?></h1>
				</div>
			</div>
			<div class="control-group zone">
				<div class="controls">
					<h2 class="m-wrap zone-title">Thông tin sản phẩm</h2>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Lĩnh vực *</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmArea" id="cmArea" data-placeholder="Chọn lĩnh vực" 
								tabindex="1" onchange="core.util.bindChosen(this,'cmCategory','ParentID');">
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
				<label class="control-label">Chuyên Mục *</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmCategory" id="cmCategory" data-placeholder="Chọn chuyên mục" 
						tabindex="1" onchange="core.util.bindChosen(this,'cmManufactory','CategoryID');core.util.bindChosen(this,'optGroup','CategoryID');">
<?php
foreach($allTypes as $item)
{
	$isSelect = false;
	$display='style="display:none"';
	if($item[global_mapping::ParentID] == $currentParentType)
	{
		$display='';
		//print_r($currentTypes);
		
		if($item[global_mapping::ArticleTypeID] == $currentTypeID)
		{
			$isSelect=true;
		}
		
	}
	if($isSelect)
		echo '			<option selected="selected" value="'.$item[global_mapping::ArticleTypeID].
			'" ParentID="'.$item[global_mapping::ParentID].'" '.$display.'>'.$item[global_mapping::ArticleTypeName].'</option>';
	else
		echo '			<option value="'.$item[global_mapping::ArticleTypeID].'" ParentID="'.$item[global_mapping::ParentID].'" '.$display.'>'.
			$item[global_mapping::ArticleTypeName].'</option>';
}
?>
					</select>
					<div class="help-inline message"></div>					
				</div>
			</div>
			<div class="control-group">	
				<label class="control-label">Nhà sản xuất *</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmManufactory" id="cmManufactory" data-placeholder="Chọn nhà sản xuất" tabindex="1">
<?php

foreach($allManuFactories as $item)
{
	
	$isSelect = false;
	$display='style="display:none"';
	if($item[global_mapping::CategoryID] == $currentTypeID)
	{
		$display='';
		if($item[global_mapping::ManufactoryID] == $product[global_mapping::ManufactoryID])
		{
			$isSelect=true;
		}
	}
	
	
	if($isSelect)
		echo '			<option selected="selected" value="'.$item[global_mapping::ManufactoryID].'" 
				CategoryID="'.$item[global_mapping::CategoryID].'" '.$display.'>'.$item[global_mapping::ManufactoryName].'</option>';
	else
		echo '			<option value="'.$item[global_mapping::ManufactoryID].'" CategoryID="'.$item[global_mapping::CategoryID].'"
				'.$display.'>'.$item[global_mapping::ManufactoryName].'</option>';
}
?>
					</select>
					<div class="help-inline message"></div>					
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Tên sản phẩm *</label>
				<div class="controls">
					<input type="text" name="txtName" id="txtName" class="text span6" maxlength="255"  
					value="<?php echo $product[global_mapping::ProductName]?>"/>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Hình minh họa</label>
				<div class="controls">
					<textarea  name="txtImage" id="txtImage" class="m-wrap span6" maxlength="255"  rows="2" placeholder="vd: http://i134.photobucket.com/albums/left.jpg; http://i134.photobucket.com/albums/right.jpg;"><?php echo $product[global_mapping::ImageLink];?></textarea>
				</div>
			</div>
			<div class="control-group property-product parent">
				<label class="control-label">Chi tiết kỹ thuật</label>
				<div class="controls">
					
					<select id="optGroup" name="optGroup" class="chosen span2 "  data-placeholder="Chọn nhóm" not-found="Tạo mới" onchange="core.util.bindChosen(this,'optProperty','PropertyGroupID');">
<?php
$display='style="display:none"';
foreach($allGroups as $item)
{
	echo '			<option value="'.$item[global_mapping::PropertyGroupID].'" CategoryID="'.$item[global_mapping::ArticleTypeID].'" '.$display.'>'.$item[global_mapping::PropertyGroupName].'</option>';
}
?>
					</select>
					<select id="optProperty" name="optProperty"  class="chosen span2" data-placeholder="Chọn thuộc tính" not-found="Tạo mới" 
							onchange="product.bindValueField(this,'txtPropertyValue');">
<?php
$display='style="display:none"';

foreach($allProperties as $item)
{
	$isExisted = false;
	foreach($propertyInfo as $iGroup)
	{
		//print_r($iGroup);
		foreach($iGroup['Properties'] as $iProperty)
		{
			//echo $iProperty[global_mapping::PropertyID];
			if($iProperty[global_mapping::PropertyID] == $item[global_mapping::PropertyID])
			{
				$isExisted =  true;
				break;
			}
		}
		if($isExisted)
		{
			break;
		}
	}
	if(!$isExisted)
		echo '			<option value="'.$item[global_mapping::PropertyID].'" '.$display.'  PropertyGroupID="'.$item[global_mapping::PropertyGroupID].'" 
				Values="'.$item[global_mapping::PropertyValue].'" DataType="'.$item[global_mapping::DataTypeID][global_mapping::InputType].'" 
				Suffix="'.$item[global_mapping::DataTypeID][global_mapping::Suffix].'">'.$item[global_mapping::PropertyName].'</option>';
}
?>
					</select>	
					<input type="text" name="txtPropertyValue" id="txtPropertyValue" class="text m-wrap  span3" 
						maxlength="255" placeholder="" style="width:130px" />
					<label id="lbSuffix" class= m-wrap" style="display: inline-block;cursor: pointer;vertical-align: top;margin-top: 13px;margin-right: 7px;font-size: 10px;"></label> 
					
					<input type="checkbox" class="m-wrap" name="ckImportant" id="ckImportant" style="vertical-align: top;margin: 9px 0;" />
					<label for="ckImportant" class= m-wrap" style="display: inline-block;cursor: pointer;vertical-align: top;margin-top: 5px;">Nổi bật</label> 
					<a href="javascript:void(0);" class="btn btn-mini btn-add" onclick="product.addProperty(this)"/><i class="icon-plus"></i> Thêm</a>
					<a href="javascript:void(0);" class="btn btn-mini btn-update no-display" onclick="product.updateProperty(this)" style="vertical-align: top"/><i class="icon-ok"></i> Cập nhật</a>
					<a href="javascript:void(0);" class="btn  btn-mini btn-cancel no-display" onclick="product.cancelProperty(this)" style="vertical-align: top"/></i> Hủy bỏ</a>
					<div class="help-inline">Thuộc tính, thành phần, chi tiết kỹ thuật sản phẩm. Thuộc tính quan trọng sẽ hiển thị phần tổng quát sản phẩm</div>					
				</div>	
<?php
$total = count($propertyInfo);
for($i=0; $i<$total; $i++)
{
	echo '<div class="control-group zone property-group" lbGroupPropertyID="'.$propertyInfo[$i][global_mapping::PropertyGroupID].'" lbGroupPropertyName="'.$propertyInfo[$i][global_mapping::PropertyGroupName].'">';
	echo '		<div class="controls">';
	echo '			<h2 class="m-wrap property-zone float-left">'.$propertyInfo[$i][global_mapping::PropertyGroupName].'</h2>';
	echo '			<a onclick="product.moveUpItem(this,\'property-group\')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> ';
	echo '			<a onclick="product.moveDownItem(this,\'property-group\')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> ';
	echo '		</div>';
	foreach($propertyInfo[$i]['Properties'] as $item)
	{
		echo	'<div class="controls row-item clear">';
		echo	'	<label class="m-wrap inline span4 lbl-property">';
		echo	'		<span class="property-id" lbPropertyID="'.$item[global_mapping::PropertyID].'">'.$item[global_mapping::PropertyName].'</span>: <span class="property-value"> '.$item[global_mapping::PropertyValue].'</span><span class="prop-important">'.($item[global_mapping::Status]?' * ':'').'</span>';
		echo		'</label>';
		echo    '	<a onclick="product.moveUpItem(this,\'row-item\')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> ';
		echo    '	<a onclick="product.moveDownItem(this,\'row-item\')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> ';
		echo	'	<a onclick="product.clickEDIT(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Sửa</a> ';
		echo	'	<a onclick="product.clickDELETE(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-remove"></i> Xóa</a>';
		echo	'</div>';
	}
	echo '</div>';
}
?>				
				<!--div class="control-group zone property-group">
					<div class="controls">
						<h2 class="m-wrap property-zone float-left">Group1</h2>
						<a onclick="product.moveUpItem(this,'property-group')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> 
						<a onclick="product.moveDownItem(this,'property-group')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> 
					</div>
					
					<div class="controls row-item clear">
						<label class="m-wrap inline span4 lbl-property">
							<span class="property-product-value">PropertyName1: PropertyValue</span>
						</label>
						<a onclick="product.moveUpItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> 
						<a onclick="product.moveDownItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> 
						<a onclick="article.clickEDIT(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Sửa</a> 
						<a onclick="article.clickDELETE(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-remove"></i> Xóa</a>
					</div>
					<div class="controls row-item clear">
						<label class="m-wrap inline span4 lbl-property">
							<span class="property-product-value">PropertyName2: PropertyValue</span>
						</label>
						<a onclick="product.moveUpItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> 
						<a onclick="product.moveDownItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> 
						<a onclick="article.clickEDIT(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Sửa</a> 
						<a onclick="article.clickDELETE(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-remove"></i> Xóa</a>
						
					</div>
				</div>
				<div class="control-group zone property-group">
					<div class="controls">
						<h2 class="m-wrap property-zone float-left">Group2</h2>
						<a onclick="product.moveUpItem(this,'property-group')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> 
						<a onclick="product.moveDownItem(this,'property-group')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> 
					</div>
					
					<div class="controls row-item clear">
						<label class="m-wrap inline span4 lbl-property">
							<span class="property-product-value">PropertyName3: PropertyValue</span>
						</label>
						<a onclick="product.moveUpItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> 
						<a onclick="product.moveDownItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> 
						<a onclick="article.clickEDIT(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Sửa</a> 
						<a onclick="article.clickDELETE(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-remove"></i> Xóa</a>
					</div>
					<div class="controls row-item clear">
						<label class="m-wrap inline span4 lbl-property">
							<span class="property-product-value">PropertyName4: PropertyValue</span>
						</label>
						<a onclick="product.moveUpItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:;"><i class="icon-pencil"></i> Lên</a> 
						<a onclick="product.moveDownItem(this,'row-item')" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Xuống</a> 
						<a onclick="article.clickEDIT(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-pencil"></i> Sửa</a> 
						<a onclick="article.clickDELETE(this);" class="btn btn-mini float-right" href="javascript:void(0);"><i class="icon-remove"></i> Xóa</a>
						
					</div>
				</div-->
			</div>
			<div class="control-group">
				<label class="control-label">Thông tin sản phẩm *</label>
				<div class="controls">
					<textarea class="span6 ckeditor m-wrap" name="txtContent" id="txtContent" rows="10"><?php echo $product[global_mapping::Description];?></textarea>
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
				<a href="<?php echo $_SESSION[global_common::SES_LAST_PAGE]?>" class="lbtn">
						  <i class="icon-circle-arrow-left"></i> Trở lại
					</a>
					<input type="button" name="btnOK" id="btnOK" class="btn" value="Đăng tin"/>
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
			
			core.util.deSelectOption("optGroup");
			core.util.deSelectOption("optProperty");
			
			//init all categories
			articleType.setAllCategories();
			
			core.util.getObjectByID("btnOK").click(function(){
				//return;
				 product.postProduct();			
			});
			
			core.util.getObjectByID("post-product").submit(function () {
                product.postProduct();				
				return false;				
            });
			
<?php
if(!$intMode)
{
	echo 'core.util.deSelectOption("cmCategory");';
	echo 'core.util.deSelectOption("cmManufactory");';
}
else
{
	echo '$("#cmCategory").change()';
}
			?>
    });
</script>