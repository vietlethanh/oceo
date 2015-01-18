<?php
/* TODO: Add code here */
require('config/globalconfig.php');

include_once('class/model_product.php');
include_once('class/model_property.php');
include_once('class/model_productproperty.php');
include_once('class/model_propertygroup.php');
include_once('class/model_articletype.php');
include_once('class/model_retailer.php');
include_once('class/model_status.php');
include_once('class/model_city.php');

$objProduct = new Model_Product($objConnection);
$objProperty = new Model_Property($objConnection);
$objProductProperty = new Model_ProductProperty($objConnection);
$objPropertyGroup = new Model_PropertyGroup($objConnection);
$objArticleType = new Model_ArticleType($objConnection);
$objRetailer = new Model_Retailer($objConnection);

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
				
				$orderProductProperty = 0;
				
				$orderGroup = global_common::getMaxValueofField(global_mapping::PropertyID, Model_PropertyGroup::TBL_SL_PROPERTY_GROUP) + 1;
				foreach($properties as $item)
				{
					$group = $item[global_mapping::PropertyGroupID];
					
					$groupID = global_common::convertToInt($group);
					//is new group
					if($groupID<=0)
					{
						$searchGroup = $objPropertyGroup->getPropertyGroupByName($group);
						if($searchGroup)
						{
							$groupID = $searchGroup[global_mapping::PropertyGroupID];
						}
						else
						{
							$groupID = $objPropertyGroup->insert($group,$group,$catalogueID,$orderGroup,$createdBy,null);
							$orderGroup ++;
						}
					}
					
					$propertyName = $item[global_mapping::PropertyID];
					$propertyID = global_common::convertToInt($propertyName);
					//if is real propery name
					if($propertyID <= 0 )
					{
						$searchProperty = $objProperty->getPropertyByName($groupID, $propertyName);
						if($searchProperty)
						{
							$propertyID = $searchProperty[global_mapping::PropertyID];
						}
						else
						{
							$propertyID = $objProperty->insert($groupID,$propertyName,
									null,
									null,
									$createdBy,null);
						}
					}
					if($propertyID)
					{
						$objProductProperty->insert($resultID,$propertyID,$item[global_mapping::PropertyValue],$orderProductProperty,11,$item[global_mapping::Status]);
						$orderProductProperty++;
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
			$productID = html_entity_decode($_pgR[global_mapping::ProductID],ENT_COMPAT ,'UTF-8' );
			$resultID = $objProduct->update($productID, $productName,$catalogueID,$imageLink,$manufactoryID,$description,$modifiedBy,null );
			if ($resultID)
			{
				//delete old property and propery value
				$isDeleted = global_common::deleteObject($resultID,global_mapping::ProductID,Model_ProductProperty::TBL_SL_PRODUCT_PROPERTY,$objConnection);
				if($isDeleted)
				{
					$orderGroup = $objPropertyGroup->getMaxPropertyGroupID() + 1;
					$orderProductProperty = 0;
					foreach($properties as $item)
					{
						$group = $item[global_mapping::PropertyGroupID];
						
						$groupID = global_common::convertToInt($group);
						//is new group
						if($groupID<=0)
						{
							$searchGroup = $objPropertyGroup->getPropertyGroupByName($group);
							if($searchGroup)
							{
								$groupID = $searchGroup[global_mapping::PropertyGroupID];
							}
							else
							{
								$groupID = $objPropertyGroup->insert($group,$group,$catalogueID,$orderGroup,$createdBy,null);
								$orderGroup++;
							}
						}
						
						$propertyName = $item[global_mapping::PropertyID];
						$propertyID = global_common::convertToInt($propertyName);
						//if is real propery name
						if($propertyID <= 0 )
						{
							$searchProperty = $objProperty->getPropertyByName($groupID, $propertyName);
							if($searchProperty)
							{
								$propertyID = $searchProperty[global_mapping::PropertyID];
							}
							else
							{
								$propertyID = $objProperty->insert($groupID,$propertyName,
										null,
										null,
										$createdBy,null);
							}
						}
						if($propertyID)
						{
							$objProductProperty->insert($resultID,$propertyID,$item[global_mapping::PropertyValue],$orderProductProperty,11, $item[global_mapping::Status]);
							$orderProductProperty ++;
						}
					}
					
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
			else
			{
				echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Input data is invalid"), array(0,1));
				return;
			}
		}//end check act
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs",'info'), array(0,global_common::STRING_REQUIRE_LOGIN), array(0,1));
	}
	return;
}
if ($_pgR["act"] == Model_Retailer::ACT_ADD_PRICE || $_pgR["act"] == Model_Retailer::ACT_UPDATE_PRICE)
{
	if (global_common::isCLogin())
	{
		//get user info
		$c_userInfo = $_SESSION[global_common::SES_C_USERINFO];
		
		$productID = $_pgR['ProductID'];
		
		$productStatusID = html_entity_decode($_pgR['ProductStatusID'],ENT_COMPAT ,'UTF-8' );
		$cityID = html_entity_decode($_pgR['CityID'],ENT_COMPAT ,'UTF-8' );
		$price = html_entity_decode($_pgR['Price'],ENT_COMPAT ,'UTF-8' );
		$shippingDesc = html_entity_decode($_pgR['ShippingDesc'],ENT_COMPAT ,'UTF-8' );
		$imageLink = html_entity_decode($_pgR['ImageLink'],ENT_COMPAT ,'UTF-8' );
		$description = html_entity_decode($_pgR['Description'],ENT_COMPAT ,'UTF-8' );
		$shortDesc = html_entity_decode($_pgR['ShortDesc'],ENT_COMPAT ,'UTF-8' );
		$boxInfo = html_entity_decode($_pgR['BoxInfo'],ENT_COMPAT ,'UTF-8' );
		$statusDetail = html_entity_decode($_pgR['StatusDetail'],ENT_COMPAT ,'UTF-8' );
		$receiveEmail = html_entity_decode($_pgR['ReceiveEmail'],ENT_COMPAT ,'UTF-8' );
		
		$status = strtolower($receiveEmail=='true'?1:0);
		if($_pgR["act"] == Model_Retailer::ACT_ADD_PRICE)
		{
			$createdBy = $c_userInfo[global_mapping::UserID];
			$resultID = $objRetailer->insert($productID,$productStatusID,$statusDetail,$price,$imageLink,$cityID,$shippingDesc,$boxInfo,$shortDesc,$description,$createdBy,$status);
			if ($resultID)
			{
				
				$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
				echo global_common::convertToXML(
						$arrHeader, array("rs", "inf"), 
						array(1, 'Đăng bán thành công'), 
						array( 0, 1 )
						);
				return;
			}
			else
			{
				echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Đăng bán thất bại. Xin vui lòng thử lại sau."), array(0,1));
				return;
			}
		}
		else
		{
			$modifiedBy = $c_userInfo[global_mapping::UserID];
			$retailerID = html_entity_decode($_pgR[global_mapping::RetailerID],ENT_COMPAT ,'UTF-8' );
			$resultID = $objRetailer->update($retailerID,$productID,$productStatusID,$statusDetail,$price,$imageLink,$cityID,$shippingDesc,$boxInfo,$shortDesc,$description,$modifiedBy,$status);
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
				echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Cập nhật thất bại. Xin vui lòng thử lại sau!"), array(0,1));
				return;
			}
		}//end check act
	}
	else
	{
		echo global_common::convertToXML($arrHeader, array("rs",'info'), array(0,global_common::STRING_REQUIRE_LOGIN), array(0,1));
	}
	return;
}

elseif($_pgR['act'] == Model_Retailer::ACT_ACTIVE_RETAILER)
{
	if (global_common::isCLogin())
	{
		$retailerID = $_pgR['id'];
		$statusID = $_pgR['statusid'];
		
		$currentUserID = $_SESSION[global_common::SES_C_USERINFO][global_mapping::UserID];
		$retailter = $objRetailer->getRetailerByID($retailerID);
		$createBy = $retailter[global_mapping::CreatedBy];
		if($createBy != $currentUserID)
		{
			return;
		}
		
		$result = $objRetailer->activeRetailer($retailerID,$statusID);
		if ($result)
		{
			$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
			echo global_common::convertToXML(
					$arrHeader, array("rs", "inf"), 
					array(1, ($statusID == global_common::STATUS_ACTIVE?'Dừng bán':'Bán lại').' thành công'), 
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
	return;
}
elseif($_pgR['act'] == Model_Product::ACT_CLONE)
{
	if (global_common::isCLogin())
	{
		$currentUserID = $_SESSION[global_common::SES_C_USERINFO][global_mapping::UserID];
	
		$productID = $_pgR[global_mapping::ProductID];
		
		$result = $objProduct->cloneProduct($productID,$currentUserID);
		if ($result)
		{
			$objProductProperty->clonProductProperty($productID,$result);
			$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
			echo global_common::convertToXML(
					$arrHeader, array("rs", "inf"), 
					array(1, 'Clone thành công'), 
					array( 0, 1 )
					);
			return;
		}
		else
		{
			echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Clone thất bại'), array(0,1));
			return;
		}
	}
	return;
}
elseif($_pgR['act'] == Model_Retailer::ACT_DELETE_PRICE)
{
	if (global_common::isCLogin())
	{
		$IDName = global_mapping::RetailerID;
		$contentID = $_pgR["rid"];
		$status = $_pgR["status"];
		
		$currentUserID = $_SESSION[global_common::SES_C_USERINFO][global_mapping::UserID];
		$retailter = $objRetailer->getRetailerByID($contentID);
		$createBy = $retailter[global_mapping::CreatedBy];
		if($createBy != $currentUserID)
		{
			return;
		}
		
		if($retailter)
		{
			$strTableName = Model_Retailer::TBL_SL_RETAILER;
			$result = global_common::updateDeleteFlag($contentID,$IDName,$currentUserID,$strTableName,$status,$objConnection);
			if($result)
			{
				$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
				echo global_common::convertToXML(
						$arrHeader, array("rs", "inf"), 
						array(1, 'Xóa thành công'), 
						array( 0, 1 )
						);
				return;
			}
		}
		
	}
	echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,'Xóa thất bại.'), array(0,1));
	return;
}
//elseif($_pgR['act'] == Model_ProductType::ACT_GET_ALL)
//{
//	$types = $objArticleType->getAllArticleType(0);
//	echo json_encode($types);
//	return ;
//}
/*elseif($_pgR['act'] == Model_Product::ACT_ACTIVE)
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
*/

?>