<?php
/* TODO: Add code here */
require('config/globalconfig.php');
include_once('class/model_comment.php');
include_once('class/model_commentbad.php');
include_once('class/model_articletype.php');
include_once('class/model_article.php');
include_once('class/model_user.php');
include_once('class/model_retailer.php');
include_once('class/model_product.php');
include_once('class/model_city.php');
include_once('class/model_status.php');

$objComment = new Model_Comment($objConnection);
$objCommentBad = new Model_CommentBad($objConnection);
$objUser = new Model_User($objConnection);
$objArticle = new Model_Article($objConnection);
$objArticleType = new Model_ArticleType($objConnection);
$objRetailer = new Model_Retailer($objConnection);
$objProduct = new Model_Product($objConnection);

if ($_pgR["act"] == Model_Comment::ACT_ADD )
{
	
	if (global_common::isCLogin())
	{
		//get user info
		$c_userInfo = $_SESSION[global_common::SES_C_USERINFO];
		
		$retailerID = $_pgR[global_mapping::RetailerID];
		
		$content = html_entity_decode($_pgR[global_mapping::Content],ENT_COMPAT ,'UTF-8' );
		$createdby = $c_userInfo[global_mapping::UserID];	
		$status = 1;
		
		$createdBy = $c_userInfo[global_mapping::UserID];
		$resultID = $objComment->insert($retailerID,$content,$createdby,$status);
		//echo global_common::convertToXML($arrHeader, array("rs","info"), array(0,$resultID), array(0,1));
		//return;
		if ($resultID)
		{
			$commentHTML = $objComment->getCommentHTMLByArticle($retailerID,0);
			$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
			echo global_common::convertToXML(
					$arrHeader, array("rs", "inf","form"), 
					array(1, 'Gửi bình luận thành công',$commentHTML), 
					array( 0, 1, 1)
					);
			try
			{
				//echo $retailerID;
				$retailer =  $objRetailer->getRetailerByID($retailerID);
				//print_r($retailer);
				//recieve email when got a comment
				if($retailer[global_mapping::Status])
				{
					//echo 'send mail:';
					$product = $objProduct->getProductByID($retailer[global_mapping::ProductID]);
					$userRetailer = $objUser->getUserByID($retailer[global_mapping::CreatedBy]);
					$fullNameRetailer = $userRetailer[global_mapping::FullName];
					$emailRetailer = $userRetailer[global_mapping::Email];
					
					$fullName = $c_userInfo[global_mapping::FullName];
					$linkArticle = global_common::getHostName().'/retailer_detail.php?rid='.$retailerID;
					$commentDate = global_common::formatDateTimeVN($comment[global_mapping::CreatedDate]);
					$commentContent = $comment[global_mapping::Content];
					$linkPolicy = global_common::getHostName().'/'.global_common::PAGE_TERM_KM;
					
					$arrMailContent = global_common::formatMailContent(global_common::TEMPLATE_NEW_COMMENT,
							null, array(global_common::formatOutputText($fullName),global_common::formatOutputText($fullNameRetailer),
								$product[global_mapping::ProductName],global_common::formatOutputText($content),$linkArticle));
					$emailSubject = $arrMailContent[0];
					$emailContent = $arrMailContent[1];
					//echo $emailContent;
					global_mail::send($emailRetailer,$fullNameRetailer,$emailSubject,$emailContent,null,
							global_common::SUPPORT_MAIL_USERNAME,global_common::SUPPORT_MAIL_PASSWORD,
							global_common::SUPPORT_MAIL_DISPLAY_NAME);
				}
			}
			catch(Exception $e)
			{
				global_common::writeLog($e);
			}
			return;
		}
		else
		{
			echo global_common::convertToXML($arrHeader, array("rs","info"), array(0,"Input data is invalid"), array(0,1));
			return;
		}
		
	}
	//else
	//{
	//	echo global_common::convertToXML($arrHeader, array("rs",'info'), array(0,global_common::STRING_REQUIRE_LOGIN), array(0,1));
	//}
	return;
}
elseif($_pgR['act'] == Model_Comment::ACT_CHANGE_PAGE)
{
	$intPage = $_pgR['p'];
	$retailerID = $_pgR[global_mapping::RetailerID];
	$outPutHTML =  $objComment->getCommentHTMLByArticle($retailerID,$intPage);
	echo global_common::convertToXML($strMessageHeader, array('rs','inf'), array(1,$outPutHTML),array(0,1));
	return ;
}
elseif($_pgR['act'] == Model_Comment::ACT_BAD_COMMENT)
{	
	if (global_common::isCLogin())
	{
		$c_userInfo = $_SESSION[global_common::SES_C_USERINFO];
		$commentID = $_pgR["id"];
		$isBad = $_pgR["isbad"];
		$strTableName = Model_CommentBad::TBL_SL_COMMENT_BAD;
		
		$comment = $objComment->getCommentByID($commentID);
		$user = $objUser->getUserByID($comment[global_mapping::CreatedBy]);
		
		if($user && $comment)
		{
			$isSent = true;
			$description = "Restore Comment";
			if($isBad)
			{
				$description = "Bad Comment";
				$userEmail = $user[global_mapping::Email];
				$fullName = $user[global_mapping::FullName];
				$linkArticle = global_common::getHostName().'/product_detail.php?pid='.$comment[global_mapping::ArticleID];
				$commentDate = global_common::formatDateTimeVN($comment[global_mapping::CreatedDate]);
				$commentContent = $comment[global_mapping::Content];
				$linkPolicy = global_common::getHostName().'/'.global_common::PAGE_TERM_KM;
				
				$arrMailContent = global_common::formatMailContent(global_common::TEMPLATE_BAD_COMMENT,
						null, array(global_common::formatOutputText($fullName),$linkArticle, $commentDate,$commentContent, $linkPolicy));
				$emailSubject = $arrMailContent[0];
				$emailContent = $arrMailContent[1];
				$isSent = global_mail::send($userEmail,$fullName,$emailSubject,$emailContent,null,
						global_common::SUPPORT_MAIL_USERNAME,global_common::SUPPORT_MAIL_PASSWORD,
						global_common::SUPPORT_MAIL_DISPLAY_NAME);
			}
			if($isSent)
			{
				$badComment = $objCommentBad->getCommentBadByID($commentID);
				if(count($badComment) <= 0)
				{				
					$createdBy = $c_userInfo[global_mapping::UserID];
					$resultID = $objCommentBad->insert($commentID,$description, $createdBy,$isBad);
				}
				else
				{
					$updatedBy = $c_userInfo[global_mapping::UserID];
					$resultID = $objCommentBad->activateBadComment($commentID,$description, $updatedBy,$isBad);
				}
				
				if ($resultID)
				{				
					$arrHeader = global_common::getMessageHeaderArr($banCode);//$banCode
					
					echo global_common::convertToXML(
							$arrHeader, array("rs", "inf","form"), 
							array(1, 'Xử lý bad comment thành công'), 
							array( 0, 1)
							);
					return;
				}
			}
		}
		
		echo global_common::convertToXML($arrHeader, array("rs","inf"), array(0,"Xử lý thất bại. Xin vui lòng thử lại sau."), array(0,1));
		return;
	}
	return;
}
?>