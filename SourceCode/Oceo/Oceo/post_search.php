<?php
/* TODO: Add code here */
require('config/globalconfig.php');

$_SESSION[global_common::SES_C_CUR_PAGE] = "post_search.php";


include_once('include/_permission.inc');
include_once('include/_header.inc');
include_once('class/model_articletype.php');
include_once('class/model_user.php');
include_once('class/model_product.php');
include_once('class/model_manufactory.php');
$objArticleType = new Model_ArticleType($objConnection);
$objManufactory = new Model_Manufactory($objConnection);
$objProduct = new Model_Product($objConnection);
$intMode = 0;//add mode
$parentTypes = $objArticleType->getAllArticleType(0,null, 'ParentID=0','Level');
$allTypes = $objArticleType->getAllArticleType(0,null, 'ParentID!=0' ,'Level');

//set default selected section
$currentParentType = $parentTypes[0][global_mapping::ArticleTypeID];
$allManuFactories = $objManufactory->getAllManufactory(0,'*','', global_mapping::ManufactoryName);

$cmArea = $_pgR["cmArea"];
$cmCategory = $_pgR["cmCategory"];
$cmManufactory = $_pgR["cmManufactory"];
$txtKeyword = $_pgR["txtKeyword"];
$lastPage='';
$condition = '('.global_mapping::IsDeleted.' IS NULL or '.global_mapping::IsDeleted.' = \'0\') ';
if($_pgR["pid"])
{
	$preferProduct = $objProduct->getProductByID($_pgR["pid"]);
	$preferedCat = $objArticleType->getArticleTypeByID($preferProduct[global_mapping::CatalogueID]);
	$cmArea = $preferedCat[global_mapping::ParentID];
	$cmCategory = $preferedCat[global_mapping::ArticleTypeID];
	$cmManufactory = $preferProduct[global_mapping::ManufactoryID];
	$txtKeyword = $preferProduct[global_mapping::ProductName];
}
if($cmArea)
{
	$lastPage .='cmArea='.$cmArea.'&';
	$currentParentType = $cmArea;
}

if($cmCategory)
{
	//echo '$currentTypeID';
	if($lastPage)
		$lastPage .='cmCategory='.$cmCategory.'&';
	else
		$lastPage .='cmCategory='.$cmCategory;
	
	$currentTypeID = $cmCategory;
    $condition .= $condition ? ' and ':'';
	$condition .= global_mapping::CatalogueID.'='.$cmCategory;
}
else
{
	$subTypes = $objArticleType->getAllArticleType(0,null, 'ParentID='.$currentParentType ,'Level');
	$arrSubTypes = global_common::getArrayColumn($subTypes,global_mapping::ArticleTypeID);
	$strCatIN = global_common::convertToQueryIN($arrSubTypes);
    $condition .= $condition ? ' and ':'';
	$condition .= global_mapping::CatalogueID.' IN ('.$strCatIN .')';
}

if($cmManufactory)
{
	if($lastPage)
		$lastPage .='cmManufactory='. $cmManufactory.'&';
	else
		$lastPage .='cmManufactory='. $cmManufactory;
	
	//echo '$curentManuID';
	$curentManuID = $cmManufactory;
	$condition .= $condition ? ' and ':'';
	$condition .= global_mapping::ManufactoryID .'='.$cmManufactory;
}
if($txtKeyword)
{
	if($lastPage)
		$lastPage .='txtKeyword='. $txtKeyword.'&';
	else
		$lastPage .='txtKeyword='. $txtKeyword;
	
	$condition .= $condition ? ' and ':'';
	$condition .= global_mapping::ProductName .' like \'%'.$txtKeyword.'%\'';
}
$_SESSION[global_common::SES_LAST_PAGE] = $_SESSION[global_common::SES_C_CUR_PAGE].'?'.$lastPage;
//echo $condition;
$productResults = $objProduct->getAllProduct(0,"*",$condition,'');

?>

<script type="text/javascript" src="<?php echo $_objSystem->locateJPlugin('ckeditor/adapters/jquery.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_product.js');?>"></script>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_articletype.js');?>"></script>

<div id="post-product" class="">
	<form method="get" class="form-horizontal" id="post-search">
		<!--Begin Form Input -->
		<div class="table-post">
			<div class="control-group">
				<div class="controls">
					<h1 class="m-wrap title">Tìm sản phẩm</h1>
				</div>
			</div>
			<div class="control-group">
				<label class="control-label">Lĩnh vực</label>
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
				<label class="control-label">Chuyên Mục</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmCategory" id="cmCategory" data-placeholder="Chọn chuyên mục" 
						tabindex="1" onchange="core.util.bindChosen(this,'cmManufactory','CategoryID');">
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
				<label class="control-label">Nhà sản xuất</label>
				<div class="controls">	
					<select class="span6 chosen" name="cmManufactory" id="cmManufactory" data-placeholder="Chọn nhà sản xuất" tabindex="1">
<?php
echo $curentManuID;
foreach($allManuFactories as $item)
{
	$isSelect = false;
	$display='style="display:none"';
	if($item[global_mapping::CategoryID] == $currentTypeID)
	{
		$display='';
		if($item[global_mapping::ManufactoryID] == $curentManuID)
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
				<label class="control-label">Từ khóa</label>
				<div class="controls">
					<input type="text" name="txtKeyword" id="txtKeyword" class="text span6" maxlength="255"  
					value="<?php echo $txtKeyword;?>"/>
				</div>
			</div>
			<div class="control-group">				
				<div class="controls">
					<input type="submit" id="btnOK" class="btn" value="Tìm kiếm"/>
					<input type="reset" name="btnReset" id="btnReset" class="btn gray" value="Nhập lại"/>
					<a href="post_product.php" class="lbtn" style="font-size:1.4em">
						  <i class="icon-plus-sign"></i> Đăng sản phẩm mới
					</a>
				</div>
			</div>
			
		</div>
	</form>
<?php
//print_r($articles);
if($productResults)
{
	echo '<table class="table table-striped">';
	echo '<thead>';
	echo '<th>';
	echo 'Tên sản phẩm';		
	echo '</th>';
	echo '<th>';
	echo 'Chuyên mục';		
	echo '</th>';
	echo '<th>';
	echo 'Nhà sản xuất';		
	echo '</th>';
	echo '<th>';
	echo '';		
	echo '</th>';
	echo '</thead>';
	foreach($productResults as $item)
	{
		echo '<tr>';
		echo '<td>';
		echo '<a href='.global_common::buildProductLink($item[global_mapping::ProductID]).' target=_blank>'.$item[global_mapping::ProductName] . '</a>';		
		echo '</td>';
		echo '<td style="">';
		echo $item[global_mapping::ArticleTypeName];		
		echo '</td>';
		echo '<td>';
		echo $item[global_mapping::ManufactoryName];		
		echo '</td>';
		echo '<td style="padding:0;width:200px">';
		echo '<a href="'.global_common::buildProductLink($item[global_mapping::ProductID]).'" target="_blank" class="btn btn-mini">Xem</a> ';	
		echo '<a href="post_price.php?pid='.$item[global_mapping::ProductID].'" class="btn btn-mini">Đăng giá bán</a> ';	
		echo '<a href="javascript:product.cloneProduct(\''.$item[global_mapping::ProductID].'\')" class="btn btn-mini">Clone</a> ';	
		echo '</td>';
		echo '</tr>';
	}
	echo '</table>';
}
else
{
	echo '<p>Không có sản phẩm nào được tìm thấy!</p>';
}
?>
</div>

<!--End Form Input -->
<?php 
//footer
include_once('include/_footer.inc');
include_once('include/_location.inc');

?>

<script language="javascript" type="text/javascript">
    $(document).ready(function () {
			
			core.util.getObjectByID("btnOK").click(function(){
				return;
				 //article.postArticle();			
			});
			
			core.util.getObjectByID("post-article").submit(function () {
                article.postArticle();				
				return false;				
            });
<?php 
if(!$curentManuID)
{
	echo '$("#cmCategory").change();';
}
if(!$currentTypeID)
{
	echo '$("#cmArea").change();';
}
?>

    });
</script>