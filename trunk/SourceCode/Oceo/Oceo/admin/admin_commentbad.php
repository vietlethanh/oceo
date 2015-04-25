<?php
/*
 * This file was automatically generated By Code Smith 
 * Modifications will be overwritten when code smith is run
 *
 * PLEASE DO NOT MAKE MODIFICATIONS TO THIS FILE
 * Date Created 5/6/2012
 *
 */

/// <summary>
/// Implementations of slarticles represent a Article
///
/// </summary>
chdir("..");
/* TODO: Add code here */
require('config/globalconfig.php');
require('include/_permission_admin.inc');
include_once('class/model_articletype.php');
include_once('class/model_article.php');
include_once('class/model_user.php');
include_once('class/model_comment.php');
include_once('class/model_commentbad.php');


$objComment = new Model_Comment($objConnection);
$objCommentBad = new Model_CommentBad($objConnection);
$objUser = new Model_User($objConnection);
$objArticle = new Model_Article($objConnection);
$objArticleType = new Model_ArticleType($objConnection);


$comments = $objComment->getAllBadComment();
//print_r($comments[0]);
?>
<?php
$_SESSION[global_common::SES_C_CUR_PAGE] = "admin/admin_article.php";
include_once('include/_admin_header.inc');
?>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_comment.js');?>"></script>
<div id="admin-article">
	<div class="row-fluid">
		<div class="span12">
			<!-- BEGIN PAGE TITLE & BREADCRUMB-->
			<h3 class="page-title">
				Quản lý bad comment
			</h3>
		</div>
	</div>
	 <div class="row-fluid">	
            <div class="span12">
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
		
									
<?php
//print_r($articles);
if($comments)
{
	echo '<table class="table table-striped">';
	echo '<thead>';
	echo '<th>';
	echo 'Tên khuyến mãi';		
	echo '</th>';
	echo '<th>';
	echo 'Comment';		
	echo '</th>';
	echo '<th>';
	echo 'Comment by';		
	echo '</th>';
	echo '<th>';
	echo 'Comment date';		
	echo '</th>';
	echo '<th>';
	echo 'Reported by';		
	echo '</th>';
	echo '<th>';
	echo 'Reported date';		
	echo '</th>';
	echo '<th>';
	echo 'Action';		
	echo '</th>';
	echo '</thead>';
	foreach($comments as $item)
	{
		//print_r($item[global_mapping::CommentBad]);
		echo '<tr>';
		echo '<td>';
		echo $item[global_mapping::ArticleID][global_mapping::Title];		
		echo '</td>';
		echo '<td style="padding:0;width:200px">';
		echo $item[global_mapping::Content];		
		echo '</td>';
		echo '<td>';
		echo $item[global_mapping::CreatedBy][global_mapping::UserName];		
		echo '</td>';
		echo '<td>';
		echo global_common::formatDateTimeVN($item[global_mapping::CreatedDate]);		
		echo '</td>';
		echo '<td>';
		echo $item[global_mapping::CommentBad][global_mapping::ReportedBy][global_mapping::UserName];		
		echo '</td>';
		echo '<td>';
		echo global_common::formatDateTimeVN($item[global_mapping::CommentBad][global_mapping::ReportedDate]);	
		echo '</td>';
		echo '<td style="padding:0;width:180px">';
		echo '<a href="../article_detail.php?aid='.$item[global_mapping::ArticleID][global_mapping::ArticleID].'" target="_blank" class="btn btn-mini"> View Article</a> ';	
		if(	!$item[global_mapping::CommentBad][global_mapping::Status])
		{
			echo '<a href="javascript:comment.badComment(\''.$item[global_mapping::CommentID].'\',1,true)" class="btn btn-mini">Delete</a> ';	
		}
		else
		{
			echo '<a href="javascript:comment.badComment(\''.$item[global_mapping::CommentID].'\',0,true)" class="btn btn-mini">Restore</a>';	
		}	
		echo '</td>';
		echo '</tr>';
	}
	echo '</table>';
}
?>
				</div>
					</div>
		</div>
	</div>
</div>
<?php
include_once('include/_admin_footer.inc');
?>