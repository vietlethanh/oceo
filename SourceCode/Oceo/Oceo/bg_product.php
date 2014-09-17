<?php
/* TODO: Add code here */
require('config/globalconfig.php');

include_once('class/model_product.php');
include_once('class/model_property.php');
include_once('class/model_productproperty.php');
include_once('class/model_propertygroup.php');
include_once('class/model_articletype.php');

$objProduct = new Model_Product($objConnection);
$objProperty = new Model_Property($objConnection);
$objProductProperty = new Model_ProductProperty($objConnection);
$objPropertyGroup = new Model_PropertyGroup($objConnection);
$objArticleType = new Model_ArticleType($objConnection);

if ($_pgR["act"] == Model_Product::ACT_ADD || $_pgR["act"] == Model_Product::ACT_UPDATE)
{
	if (global_common::isCLogin())
	{
		//get user info
		$c_userInfo = $_SESSION[global_common::SES_C_USERINFO];
		
		$properties = $_pgR['Properties'];
		//$properties = html_entity_decode($properties,ENT_COMPAT ,'UTF-8' );
		
		$productName = $_pgR['ProductName'];
		$productName = html_entity_decode($productName,ENT_COMPAT ,'UTF-8' );
		$catalogueID = $_pgR['CatalogueID'];
		$catalogueID = html_entity_decode($catalogueID,ENT_COMPAT ,'UTF-8' );
		$imageLink = $_pgR['ImageLink'];
		$imageLink = html_entity_decode($imageLink,ENT_COMPAT ,'UTF-8' );
		$manufactoryID = $_pgR['ManufactoryID'];
		$manufactoryID = html_entity_decode($manufactoryID,ENT_COMPAT ,'UTF-8' );
		
		$description = $_pgR['Description'];
		$description = html_entity_decode($description,ENT_COMPAT ,'UTF-8' );
		
		$status = 1;
		if($_pgR["act"] == Model_Product::ACT_ADD)
		{
			
			
			$createdBy = $c_userInfo[global_mapping::UserID];
			
			
			$resultID = $objProduct->insert($productName,$catalogueID,$imageLink,$manufactoryID,$description,$createdBy,$status);
			if ($resultID)
			{
				
				foreach($properties as $item)
				{
					$group = $item[global_mapping::PropertyGroupID];
					
					$groupID = global_common::convertToInt($group);
					if($groupID<=0)
					{
						$groupID = $objPropertyGroup->insert($group,$group,$catalogueID,$item[global_mapping::Order],$createdBy,null);
					}
					
					$propertyID = $objProperty->insert($groupID,$item[global_mapping::PropertyName],
							$item[global_mapping::PropertyValue],
							null,
							$createdBy,null);
					if($propertyID)
					{
						$objProductProperty->insert($resultID,$propertyID,$item[global_mapping::PropertyValue],$item[global_mapping::Order]);
					}
				}
				
				
				$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
				echo global_common::convertToXML(
						$arrHeader, array("rs", "inf"), 
						array(1, 'Đăng bài viết thành công'), 
						array( 0, 1 )
						);
				return;
			}
			else
			{
				echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Input data is invalid"), array(0,1));
				return;
			}
		}
		else
		{
			$modifiedBy = $c_userInfo[global_mapping::UserID];
			$articleID = html_entity_decode($_pgR[global_mapping::ArticleID],ENT_COMPAT ,'UTF-8' );
			$currentArticle = $objArticle->getArticleByID($articleID);
			$resultID = $objArticle->update($articleID,null,$title,$fileName,$catalogueID, $content,null,$tags,null,null,$currentArticle[global_mapping::CreatedBy],
					$currentArticle[global_mapping::CreatedDate],$modifiedBy,global_common::nowSQL(),null,null,0,null,null,
					$currentArticle[global_mapping::RenewedDate], $currentArticle[global_mapping::RenewedNum],
					$companyName,$companyAddress,$companyWebsite,$companyPhone,$adType,$startDate,$endDate,$happyDays,
					$startHappyHour,$endHappyHour, $addresses,$dictricts,$cities);
			if ($resultID)
			{
				$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
				echo global_common::convertToXML(
						$arrHeader, array("rs", "inf"), 
						array(1, 'Cập nhật thành công'), 
						array( 0, 1 )
						);
				return;
			}
			else
			{
				echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Input data is invalid"), array(0,1));
				return;
			}
		}
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs",'info'), array(0,global_common::STRING_REQUIRE_LOGIN), array(0,1));
	}
	return;
}
elseif($_pgR['act'] == Model_ProductType::ACT_GET_ALL)
{
	$types = $objArticleType->getAllArticleType(0);
	echo json_encode($types);
	return ;
}
elseif($_pgR['act'] == Model_Product::ACT_ACTIVE)
{
	$articleID = $_pgR['id'];
	$isActivate = $_pgR['isactivate'];
	$result = $objArticle->activeArticle($articleID,$isActivate);
	if ($result)
	{
		$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
		echo global_common::convertToXML(
				$arrHeader, array("rs", "inf"), 
				array(1, ($isActivate?'Xóa':'Deactivate').' thành công'), 
				array( 0, 1 )
				);
		return;
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,($isActivate?'Xóa':'Deactivate').' unsuccessfully'), array(0,1));
		return;
	}
	
}
elseif($_pgR['act'] == Model_Product::ACT_REFRESH)
{
	$articleID = $_pgR['id'];
	$c_userInfo = $_SESSION[global_common::SES_C_USERINFO];
	$result = $objArticle->refreshArticle($articleID,$c_userInfo);
	if ($result >=0 )
	{
		$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
		echo global_common::convertToXML(
				$arrHeader, array("rs", "inf"), 
				array(1, 'Bạn còn '.$result.' lần làm mới trong ngày'), 
				array( 0, 1 )
				);
		return;
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Bạn đã sử dụng hết '.Model_Product::NUM_REFRESH.' lần làm mới trong ngày'), array(0,1));
		return;
	}
	
}
elseif($_pgR['act'] == Model_Product::ACT_CHANGE_PAGE)
{
	$intPage = $_pgR['p'];
	
	$outPutHTML =  $objArticle->getListArticle($intPage);
	echo global_common::convertToXML($strMessageHeader, array('rs','inf'), array(1,$outPutHTML),array(0,1));
	return ;
}
elseif($_pgR['act'] == Model_Product::ACT_SHOW_EDIT)
{
	
	$strArticleID = $_pgR['id'];
	$arrArticle =  $objArticle->getArticleByID($strArticleID);
	
	echo global_common::convertToXML($strMessageHeader, array('rs','ArticleID','Prefix','Title','FileName','ArticleType','Content','NotificationType','Tags','CatalogueID','SectionID','NumView','NumComment','Status','comments','RenewedDate','RenewedNum'), array(1,'ArticleID','Prefix','Title','FileName','ArticleType','Content','NotificationType','Tags','CatalogueID','SectionID','NumView','NumComment','Status','comments','RenewedDate','RenewedNum'),array(0,1,1,1,1,1,1,1,1,1,1,0,0,1,1,1,0));
	return ;
}
elseif ($_pgR["act"] == Model_Product::ACT_GET)
{		
	$sectionID = $_pgR["sect"];
	$arrSection= $objMenu->getAllMenuBySection($sectionID);
	if($arrSection)
	{
		$strHTML = $objMenu->outputHTMLMenu($arrSection);
		echo global_common::convertToXML($arrHeader, array("rs", "inf"), 
				array(1, $strHTML), array(0, 1));
		return;	
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs",'inf'),array(0,'Kh?ng c? nh?m h?ng'),array(0,0));
		return ;
	}
}
elseif($_pgR['act'] == Model_Product::ACT_DELETE)
{
	/*
	$IDName = "menu_id";
	$contentID = $_pgR["aid"];
	$strTableName = user_menu::TBL_T_MENU;
	$result = global_common::updateDeleteFlag($contentID,$IDName,$strTableName ,$_pgR["status"],$objConnection);
	if($result)
	{
		$IDName = "content_id";
		$strTableName = user_faq::TBL_T_FAQ;
		$result = global_common::updateDeleteFlag($contentID,$IDName,$strTableName ,$_pgR["status"],$objConnection);
	}
	$arrHeader = global_common::getMessageHeaderArr($banCode=0,0);
	$arrKey = array("rs","id");
	$arrValue = array($result?1:0,$contentID);
	$arrIsMetaData = array(0, 1);
	echo global_common::convertToXML($arrHeader, $arrKey, $arrValue, $arrIsMetaData);
	*/
	return;
}
?>