<?php
/*
 * This file was automatically generated By Code Smith 
 * Modifications will be overwritten when code smith is run
 *
 * PLEASE DO NOT MAKE MODIFICATIONS TO THIS FILE
 * Date Created 5/6/2012
 *
 */

/* <summary>
 * Implementations of slcomments represent a Comment
 * </summary>
 */
class Model_Comment
{		   
	#region PRESERVE ExtraMethods For Comment
	#endregion
	#region Contants	
	const ACT_ADD							= 130;
	const ACT_UPDATE						= 131;
	const ACT_DELETE						= 132;
	const ACT_CHANGE_PAGE					= 133;
	const ACT_SHOW_EDIT                     = 134;
	const ACT_GET                           = 135;
	const ACT_BAD_COMMENT                   = 136;
	
	
	const NUM_PER_PAGE                      = 5;
	
	const TBL_SL_COMMENT			            = 'sl_comment';
	
	const SQL_INSERT_SL_COMMENT		= 'INSERT INTO `{0}`
		(
		CommentID,
		CommentType,
		ArticleID,
		Content,
		CreatedBy,
		CreatedDate,
		ModifiedBy,
		ModifiedDate,
		DeletedBy,
		DeletedDate,
		IsDeleted,
		Status
		)
		VALUES (
		\'{1}\', \'{2}\', \'{3}\', \'{4}\', \'{5}\', \'{6}\', \'{7}\', \'{8}\', \'{9}\', \'{10}\', \'{11}\', \'{12}\'
		);';
	
	const SQL_UPDATE_SL_COMMENT		= 'UPDATE `{0}`
		SET  
		`CommentID` = \'{1}\',
		`CommentType` = \'{2}\',
		`ArticleID` = \'{3}\',
		`Content` = \'{4}\',
		`CreatedBy` = \'{5}\',
		`CreatedDate` = \'{6}\',
		`ModifiedBy` = \'{7}\',
		`ModifiedDate` = \'{8}\',
		`DeletedBy` = \'{9}\',
		`DeletedDate` = \'{10}\',
		`IsDeleted` = \'{11}\',
		`Status` = \'{12}\'
		WHERE `CommentID` = \'{1}\'  ';
	
	
	const SQL_CREATE_TABLE_SL_COMMENT		= 'CREATE TABLE `{0}` (
		
		`CommentID` varchar(20),
		`CommentType` varchar(20),
		`ArticleID` varchar(20),
		`Content` ,
		`CreatedBy` varchar(20),
		`CreatedDate` ,
		`ModifiedBy` varchar(20),
		`ModifiedDate` ,
		`DeletedBy` varchar(20),
		`DeletedDate` ,
		`IsDeleted` ,
		`Status` varchar(20),
		PRIMARY KEY(CommentID)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;';
	
	#endregion   
	
	#region Variables
	var $_objConnection;
	#end region
	
	#region Contructors
	/**
	*  Phuong th?c kh?i t?o d?i tu?ng faq d?ng th?i t?o connection d?n db
	*
	* @param object $objConnection ??i tu?ng k?t n?i d?n db
			
	* @return void 
	*
	*/
	public function  Model_Comment($objConnection)
	{
		$this->_objConnection = $objConnection;
		
	}
	#region
	
	#region Public Functions
	
	public function insert($articleid,$content,$createdby,$status)
	{
		$strTableName = self::TBL_SL_COMMENT;
		$intID = global_common::getMaxValueofField($this->_objConnection,global_mapping::CommentID, $strTableName) + 1;
		
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_COMMENT,
				array(self::TBL_SL_COMMENT,$intID,global_common::escape_mysql_string($commenttype),
					global_common::escape_mysql_string($articleid),global_common::escape_mysql_string($content),
					global_common::escape_mysql_string($createdby),global_common::nowSQL(),
					global_common::escape_mysql_string($modifiedby),global_common::nowSQL(),
					global_common::escape_mysql_string($deletedby),global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),global_common::escape_mysql_string($status)));
		//return $strSQL;
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_COMMENT,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_comment:'.$strSQL,1);
			return false;
		}	
		return $intID;
		
	}
	
	public function update($commentid,$commenttype,$articleid,$content,$createdby,$createddate,$modifiedby,$modifieddate,$deletedby,$deleteddate,$isdeleted,$status)
	{
		$strTableName = self::TBL_SL_COMMENT;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_COMMENT,
				array($strTableName,global_common::escape_mysql_string($commentid),global_common::escape_mysql_string($commenttype),global_common::escape_mysql_string($articleid),global_common::escape_mysql_string($content),global_common::escape_mysql_string($createdby),global_common::escape_mysql_string($createddate),global_common::escape_mysql_string($modifiedby),global_common::escape_mysql_string($modifieddate),global_common::escape_mysql_string($deletedby),global_common::escape_mysql_string($deleteddate),global_common::escape_mysql_string($isdeleted),global_common::escape_mysql_string($status) ));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_COMMENT,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_comment:'.$strSQL,1);
			return false;
		}	
		return $intNewID;		
	}
	
	public function getCommentByID($objID,$selectField='*') 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_COMMENT ,							
					'WHERE CommentID = \''.$objID.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_comment ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult[0];
	}
	
	public function getCommentHTMLByArticle($articleID,$page) 
	{
		if(!$page)
		{
			$page=1;
		}
		$comments = $this->getCommentByArticle($articleID,$page,'*','','ModifiedDate Desc');
		
		$condition = ' where `'.global_mapping::ArticleID.'` =  \''. $articleID .'\'  AND CommentID NOT IN (SELECT CommentID FROM sl_comment_bad WHERE `STATUS` =\'1\')';
		$total = global_common::getTotalRecord(Model_Comment::TBL_SL_COMMENT,$this->_objConnection,$condition);
		$commentHTML = '';
		foreach($comments as $item)
		{
			$commentHTML .= '<div class="item">';
			$commentHTML .= '		<div class="avatar">';
			$commentHTML .= '			<img src="'.$item[global_mapping::CreatedBy][global_mapping::Avatar].'" />';
			$commentHTML .= '		</div>';
			$commentHTML .= '		<div class="comment-detail">';
			$commentHTML .= '			<div class="username">';
			$commentHTML .= '				 <a href="#">'.$item[global_mapping::CreatedBy][global_mapping::FullName].'</a>	';
			$commentHTML .= '				 <p class="created-date">'.global_common::formatDateTimeVN($item[global_mapping::CreatedDate]).'</p>	';
			$commentHTML .= '			</div>';
			$commentHTML .= '			<div class="comment-detail-content">';
			$commentHTML .= '					'.$item[global_mapping::Content];
			$commentHTML .= '			</div>	';	
			if(global_common::isAdmin())
			{	
				$commentHTML.= '		<div class="comment-controls">';
				$commentHTML.= '			<a href="javascript:comment.badComment(\''.$item[global_mapping::CommentID].'\',1)">Delete</a>';
				$commentHTML.= '		</div>	';	
			}						
			$commentHTML .= '		</div>';
			$commentHTML .= '</div>';
		}
		$commentHTML.= global_common::getPagingHTMLByNum($page, Model_Comment::NUM_PER_PAGE, $total, 'comment.changePage');
		return $commentHTML;
	}
	
	public function getCommentByArticle($articleID,$intPage = 0,$selectField='*',$whereClause='',$orderBy='') 
	{		
		if($whereClause)
		{
			$whereClause = ' WHERE '.$whereClause. ' AND  `'.global_mapping::ArticleID.'` =  \''. $articleID .'\' AND CommentID NOT IN (SELECT CommentID FROM sl_comment_bad WHERE `STATUS` =\'1\')';
		}
		else
		{
			$whereClause = ' WHERE `'.global_mapping::ArticleID.'` =  \''. $articleID .'\'  AND CommentID NOT IN (SELECT CommentID FROM sl_comment_bad WHERE `STATUS` =\'1\')';
		}
		
		if($orderBy)
		{
			$orderBy = ' ORDER BY '.$orderBy;
		}
		if(!$selectField)
		{
			$selectField = '*';
		}
		if($intPage>0)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Comment::TBL_SL_COMMENT ,							
						$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Comment::TBL_SL_COMMENT ,							
						$whereClause.$orderBy ));
		}
		
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('function getCommentByIDs:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		return global_common::mergeUserInfo($arrResult);	
	}
	
	public function getAllBadComment($intPage = 0,$selectField='*',$whereClause='',$orderBy='') 
	{		
		if($whereClause)
		{
			$whereClause = ' WHERE '.$whereClause. ' AND  CommentID IN (SELECT CommentID FROM sl_comment_bad)';
		}
		else
		{
			$whereClause = ' WHERE  CommentID IN (SELECT CommentID FROM sl_comment_bad)';
		}
		
		if($orderBy)
		{
			$orderBy = ' ORDER BY '.$orderBy;
		}
		if(!$selectField)
		{
			$selectField = '*';
		}
		if($intPage>0)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Comment::TBL_SL_COMMENT ,							
						$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Comment::TBL_SL_COMMENT ,							
						$whereClause.$orderBy ));
		}
		
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('function getCommentByIDs:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		$arrResult = global_common::mergeReporterInfo($arrResult);
		//echo 'Before merge comment info';
		$arrResult = global_common::mergeUserInfo($arrResult);
		//echo 'End merge comment info';
		return $arrResult;	
	}
	
	
	public function getAllComment($intPage = 0,$selectField='*',$whereClause='',$orderBy='') 
	{		
		if($whereClause)
		{
			$whereClause = ' WHERE '.$whereClause;
		}
		
		if($orderBy)
		{
			$orderBy = ' ORDER BY '.$orderBy;
		}
		if($intPage>0)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Comment::TBL_SL_COMMENT ,							
						$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Comment::TBL_SL_COMMENT ,							
						$whereClause.$orderBy ));
		}
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get All sl_comment:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult;
	}
	
	public function getListComment($intPage,$orderBy='CommentID', $whereClause)
	{		
		if($whereClause)
		{
			$whereClause='WHERE'+ $whereClause;						
		}
		if($orderBy)
		{
			$orderBy='ORDER BY'+ $orderBy;						
		}
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE,array('*',
					self::TBL_SL_COMMENT,$orderBy.' '.$whereClause.' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		//echo 'sql:'.$strSQL;	
		$arrResult = $this->_objConnection->selectCommand($strSQL);
		//print_r($arrResult);
		$strHTML = '<table class="tbl-list">
				<thead>
				<td>CommentID</td>
				<td>CommentType</td>
				<td>ArticleID</td>
				<td>Content</td>
				<td>CreatedBy</td>
				<td>CreatedDate</td>
				<td>ModifiedBy</td>
				<td>ModifiedDate</td>
				<td>DeletedBy</td>
				<td>DeletedDate</td>
				<td>IsDeleted</td>
				<td>Status</td>
				</thead>
				<tbody>';
		$icount = count($arrmenu);
		for($i=0;$i<$icount;$i++)
		{
			$strHTML.='<tr class="'.($i%2==0?'even':'odd').'">
					<td>'.$arrResult[$i]['CommentID'].'</td>
					<td>'.$arrResult[$i]['CommentType'].'</td>
					<td>'.$arrResult[$i]['ArticleID'].'</td>
					<td>'.$arrResult[$i]['Content'].'</td>
					<td>'.$arrResult[$i]['CreatedBy'].'</td>
					<td>'.$arrResult[$i]['CreatedDate'].'</td>
					<td>'.$arrResult[$i]['ModifiedBy'].'</td>
					<td>'.$arrResult[$i]['ModifiedDate'].'</td>
					<td>'.$arrResult[$i]['DeletedBy'].'</td>
					<td>'.$arrResult[$i]['DeletedDate'].'</td>
					<td><input type="checkbox" onclick="_objComment.showHide(\''.$arrResult[$i]['CommentID'].'\',\''.$arrResult[$i]['name'].'\',this)" '.($arrResult[$i]['IsDeleted']?'':'checked=checked').' /></td>
					<td class="lastCell">'.$arrResult[$i]['Status'].'</td>
					</tr>';
		}
		$strHTML.='</tbody></table>';
		
		$strHTML .= "<div>".global_common::getPagingHTMLByNum($intPage,self::NUM_PER_PAGE,global_common::getTotalRecord(self::TBL_SL_COMMENT,$this->_objConnection),
				"_objMenu.changePage")."</div>";
		return $strHTML;
	}
	
	
	#endregion   
}
?>
