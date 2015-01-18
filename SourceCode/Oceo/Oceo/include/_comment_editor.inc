<?php
if ($_pgR["rid"])
{
	$retailerID = $_pgR["rid"];
	//,$intPage = 0,$selectField='*',$whereClause='',$orderBy='') 
	//$comments = $objComment->getCommentByArticle($retailerID,0,'*','','ModifiedDate Desc');
	//echo '$comments:';
	//print_r($comments);
	//print_r($_SESSION[global_common::SES_C_USERINFO]);
	
}
?>
<script type="text/javascript" src="<?php echo $_objSystem->locateJs('user_comment.js');?>"></script>

<div id="comment-content">
	<div id="comment-editor">
		<form id="post-comment">
			<div class="title">		
				<img class="icon" src="images/icon-comment.png" /> Viết bình luận
			</div>
<?php
if(global_common::isCLogin())
{
?>
			<div class="clear"></div>
			<div class="avatar">
				<img src="<?php echo $_SESSION[global_common::SES_C_USERINFO][global_mapping::Avatar] ?>" />
			</div>
			<div class="comment_box controls">
				<textarea placeholder="Nội dung bình luận" id="txtcontent" rows="4"></textarea>
				<div class="help-inline message"></div>	
			</div>
			<div class="comment_action">				
				<input class="btn" id="btnPost" type="button" value="Gửi" />
			</div>
	<?php
}
else
{
	echo '<p>Bạn cần đăng ký thành viên. Vui lòng nhấn vào <a class="link" href="login.php?r=1">đây</a></p>';
}
?>
		</form>
	</div>
	<div id="comment-list">	
	
<?php
echo $objComment->getCommentHTMLByArticle($retailerID,1);
?>	

	</div>
</div>
<script>
	jQuery(document).ready(function() {
		core.util.getObjectByID("btnPost").click(function(){
				//return;
				comment.postComment();			
			});
			
		//core.util.getObjectByID("post-comment").submit(function () {
            //article.postArticle();				
		//	return false;				
        //});
	});
</script>
