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
 * Implementations of slpropertygroups represent a PropertyGroup
 * </summary>
 */
class Model_PropertyGroup
{		   
	#region PRESERVE ExtraMethods For PropertyGroup
	#endregion
	#region Contants	
	const ACT_ADD							= 10;
	const ACT_UPDATE						= 11;
	const ACT_DELETE						= 12;
	const ACT_CHANGE_PAGE					= 13;
	const ACT_SHOW_EDIT                     = 14;
	const ACT_GET                           = 15;
	const NUM_PER_PAGE                      = 15;
	
	const TBL_SL_PROPERTY_GROUP			            = 'sl_property_group';
	
	const SQL_INSERT_SL_PROPERTY_GROUP		= 'INSERT INTO `{0}`
		(
		PropertyGroupID,
		PropertyGroupName,
		PropertyGroupDisplay,
		ArticleTypeID,
		`Order`,
		CreatedBy,
		CreatedDate,
		ModifiedBy,
		ModifiedDate,
		DeletedBy,
		DeletedDate,
		IsDeleted,
		`Status`
		)
		VALUES (
		\'{1}\', \'{2}\', \'{3}\', \'{4}\', \'{5}\', \'{6}\', \'{7}\', \'{8}\', \'{9}\', \'{10}\', \'{11}\', \'{12}\', \'{13}\'
		);';
	
	const SQL_UPDATE_SL_PROPERTY_GROUP		= 'UPDATE `{0}`
		SET  
		`PropertyGroupID` = \'{1}\',
		`PropertyGroupName` = \'{2}\',
		`PropertyGroupDisplay` = \'{3}\',
		`ArticleTypeID` = \'{4}\',
		`Order` = \'{5}\',
		#`CreatedBy` = \'{6}\',
		#`CreatedDate` = \'{7}\',
		`ModifiedBy` = \'{8}\',
		`ModifiedDate` = \'{9}\',
		#`DeletedBy` = \'{10}\',
		#`DeletedDate` = \'{11}\',
		#`IsDeleted` = \'{12}\',
		`Status` = \'{13}\'
		WHERE `PropertyGroupID` = \'{1}\'  ';
	
	
	const SQL_CREATE_TABLE_SL_PROPERTY_GROUP		= 'CREATE TABLE `{0}` (
		
		`PropertyGroupID` ,
		`PropertyGroupName` varchar(255),
		`PropertyGroupDisplay` varchar(255),
		`ArticleTypeID` ,
		`Order` ,
		`CreatedBy` varchar(20),
		`CreatedDate` ,
		`ModifiedBy` varchar(20),
		`ModifiedDate` ,
		`DeletedBy` varchar(20),
		`DeletedDate` ,
		`IsDeleted` ,
		`Status` varchar(20),
		PRIMARY KEY(PropertyGroupID)
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
	public function  Model_PropertyGroup($objConnection)
	{
		$this->_objConnection = $objConnection;
		
	}
	#region
	
	#region Public Functions
	
	public function insert( $propertygroupname,$propertygroupdisplay,$articletypeid,$order,$createdby,$status)
	{
		
		$strTableName = self::TBL_SL_PROPERTY_GROUP;
		$intID = global_common::getMaxValueofField($this->_objConnection,global_mapping::PropertyGroupID, $strTableName) + 1;
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_PROPERTY_GROUP,
				array(self::TBL_SL_PROPERTY_GROUP,$intID,
					global_common::escape_mysql_string($propertygroupname),
					global_common::escape_mysql_string($propertygroupdisplay),
					global_common::escape_mysql_string($articletypeid),
					global_common::escape_mysql_string($order),
					global_common::escape_mysql_string($createdby),
					global_common::nowSQL(),
					global_common::escape_mysql_string($modifiedby),
					global_common::escape_mysql_string($modifieddate),
					global_common::escape_mysql_string($deletedby),
					global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),
					global_common::escape_mysql_string($status)
					));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_PROPERTY_GROUP,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_property_group:'.$strSQL,1);
			return false;
		}	
		return $intID;
		
	}
	
	public function update($propertygroupid,$propertygroupname,$propertygroupdisplay,$articletypeid,$order,$modifiedby,$status)
	{
		$strTableName = self::TBL_SL_PROPERTY_GROUP;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_PROPERTY_GROUP,
				array($strTableName,
					global_common::escape_mysql_string($propertygroupid),
					global_common::escape_mysql_string($propertygroupname),
					global_common::escape_mysql_string($propertygroupdisplay),
					global_common::escape_mysql_string($articletypeid),
					global_common::escape_mysql_string($order),
					global_common::escape_mysql_string($createdby),
					global_common::escape_mysql_string($createddate),
					global_common::escape_mysql_string($modifiedby),
					global_common::nowSQL(),
					global_common::escape_mysql_string($deletedby),
					global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),
					global_common::escape_mysql_string($status)
					));
			//echo $strSQL;
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_PROPERTY_GROUP,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_property_group:'.$strSQL,1);
			return false;
		}	
		return $propertygroupid;		
	}
	public function getMaxPropertyGroupID() 
	{
		$strTableName = self::TBL_SL_PROPERTY_GROUP;
		return global_common::getMaxValueofField($this->_objConnection,global_mapping::PropertyGroupID, $strTableName) ;
	}
	public function getPropertyGroupByID($objID,$selectField='*') 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_PROPERTY_GROUP ,							
					'WHERE PropertyGroupID = \''.$objID.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_property_group ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult[0];
	}
	
	public function getPropertyGroupByIDs($arrIDs) 
	{		
		$arrIDs = global_common::splitString($arrIDs);
		$strQueryIN = global_common::convertToQueryIN($arrIDs);
		$whereClause = 'WHERE '.global_mapping::PropertyGroupID.' IN ('.$strQueryIN.')';
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE,array('*',
					self::TBL_SL_PROPERTY_GROUP,$whereClause));
		//echo $strSQL;
		$propertyGroups =  $this->_objConnection->selectCommand($strSQL);	
		
		if(!$propertyGroups)
		{
			global_common::writeLog('get getPropertyGroupByIDs:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		
		//print_r($arrResult);
		return $propertyGroups;
	}
	
	public function getPropertyGroupByName($objName,$selectField='*') 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_PROPERTY_GROUP ,							
					'WHERE PropertyGroupName = \''.$objName.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_property_group ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult[0];
	}
	
	
	public function getAllPropertyGroup($intPage = 0,$selectField='*',$whereClause='',$orderBy='', &$total) 
	{		
        if(!$selectField)
        {
            $selectField='*';
        }
		if($whereClause)
		{
			$whereClause = ' WHERE '.$whereClause;
		}
		
		if($orderBy)
		{
			$orderBy = ' ORDER BY '.$orderBy.' ,`Order`';
		}
		else
		{
			$orderBy = ' ORDER BY `Order`';
		}
		if($intPage>0)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_PropertyGroup::TBL_SL_PROPERTY_GROUP ,							
						$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_PropertyGroup::TBL_SL_PROPERTY_GROUP ,							
						$whereClause.$orderBy ));
		}
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get All sl_property_group:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
        $total = count($arrResult);
        $objCat = new Model_ArticleType($this->_objConnection);
        $allCats = $objCat->getAllArticleType(0);
        $convertedCats = array();
		foreach($allCats as $key => $info)
		{
			$convertedCats[$info[global_mapping::ArticleTypeID]]=$info;
			unset($allCats[$key]);
		}	
        $count = count($arrResult);
		for($index=0;$index < $count;$index++)
		{	  
              $arrResult[$index][global_mapping::ArticleTypeName] = $convertedCats[$arrResult[$index][global_mapping::ArticleTypeID]][global_mapping::ArticleTypeName];
		}
        
		//print_r($arrResult);
		return $arrResult;
	}
	
	public function getListPropertyGroup($intPage,$orderBy='PropertyGroupID', $whereClause)
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
					self::TBL_SL_PROPERTY_GROUP,$orderBy.' '.$whereClause.' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		//echo 'sql:'.$strSQL;	
		$arrResult = $this->_objConnection->selectCommand($strSQL);
		//print_r($arrResult);
		$strHTML = '<table class="tbl-list">
				<thead>
				<td>PropertyGroupID</td>
				<td>PropertyGroupName</td>
				<td>PropertyGroupDisplay</td>
				<td>ArticleTypeID</td>
				<td>Order</td>
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
					<td>'.$arrResult[$i]['PropertyGroupID'].'</td>
					<td>'.$arrResult[$i]['PropertyGroupName'].'</td>
					<td>'.$arrResult[$i]['PropertyGroupDisplay'].'</td>
					<td>'.$arrResult[$i]['ArticleTypeID'].'</td>
					<td>'.$arrResult[$i]['Order'].'</td>
					<td>'.$arrResult[$i]['CreatedBy'].'</td>
					<td>'.$arrResult[$i]['CreatedDate'].'</td>
					<td>'.$arrResult[$i]['ModifiedBy'].'</td>
					<td>'.$arrResult[$i]['ModifiedDate'].'</td>
					<td>'.$arrResult[$i]['DeletedBy'].'</td>
					<td>'.$arrResult[$i]['DeletedDate'].'</td>
					<td><input type="checkbox" onclick="_objPropertyGroup.showHide(\''.$arrResult[$i]['PropertyGroupID'].'\',\''.$arrResult[$i]['name'].'\',this)" '.($arrResult[$i]['IsDeleted']?'':'checked=checked').' /></td>
					<td class="lastCell">'.$arrResult[$i]['Status'].'</td>
					</tr>';
		}
		$strHTML.='</tbody></table>';
		
		$strHTML .= "<div>".global_common::getPagingHTMLByNum($intPage,self::NUM_PER_PAGE,global_common::getTotalRecord(self::TBL_SL_PROPERTY_GROUP,$this->_objConnection),
				"_objMenu.changePage")."</div>";
		return $strHTML;
	}
	
	#endregion   
}
?>