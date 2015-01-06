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
 * Implementations of slmanufactorys represent a Manufactory
 * </summary>
 */
class Model_Manufactory
{		   
	#region PRESERVE ExtraMethods For Manufactory
	#endregion
    #region Contants	
    const ACT_ADD							= 10;
    const ACT_UPDATE						= 11;
    const ACT_DELETE						= 12;
    const ACT_CHANGE_PAGE					= 13;
    const ACT_SHOW_EDIT                     = 14;
    const ACT_GET                           = 15;
    const NUM_PER_PAGE                      = 15;  
    
    const TBL_SL_MANUFACTORY			            = 'sl_manufactory';

	const SQL_INSERT_SL_MANUFACTORY		= 'INSERT INTO `{0}`
		(
			`ManufactoryID`,
			`ManufactoryName`,
			`CategoryID`,
			`Order`,
			`CreatedBy`,
			`CreatedDate`,
			`ModifiedBy`,
			`ModifiedDate`,
			`DeletedBy`,
			`DeletedDate`,
			`IsDeleted`
        )
        VALUES (
			\'{1}\', \'{2}\', \'{3}\', \'{4}\', \'{5}\', \'{6}\', \'{7}\', \'{8}\', \'{9}\', \'{10}\', \'{11}\'
        );';
        
	const SQL_UPDATE_SL_MANUFACTORY		= 'UPDATE `{0}`
		SET  
			`ManufactoryID` = \'{1}\',
			`ManufactoryName` = \'{2}\',
			`CategoryID` = \'{3}\',
			`Order` = \'{4}\',
			`CreatedBy` = \'{5}\',
			`CreatedDate` = \'{6}\',
			`ModifiedBy` = \'{7}\',
			`ModifiedDate` = \'{8}\',
			`DeletedBy` = \'{9}\',
			`DeletedDate` = \'{10}\',
			`IsDeleted` = \'{11}\'
		WHERE `ManufactoryID` = \'{1}\'  ';
		   

    const SQL_CREATE_TABLE_SL_MANUFACTORY		= 'CREATE TABLE `{0}` (

			`ManufactoryID` ,
			`ManufactoryName` varchar(50),
			`CategoryID` ,
			`Order` ,
			`CreatedBy` varchar(20),
			`CreatedDate` ,
			`ModifiedBy` varchar(20),
			`ModifiedDate` ,
			`DeletedBy` varchar(20),
			`DeletedDate` ,
			`IsDeleted` ,
			PRIMARY KEY(ManufactoryID)
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
	public function  Model_Manufactory($objConnection)
	{
		$this->_objConnection = $objConnection; 
		
	}
    #region
    
    #region Public Functions
    
    public function insert( $manufactoryname,$categoryid,$order,$createdby,$createddate,$modifiedby,$modifieddate,$deletedby,$deleteddate,$isdeleted)
	{
		$intID = global_common::getMaxID(self::TBL_SL_MANUFACTORY);
		
		$strTableName = self::TBL_SL_MANUFACTORY;
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_MANUFACTORY,
				array(self::TBL_SL_MANUFACTORY,$intID,
						global_common::escape_mysql_string($manufactoryname),
						global_common::escape_mysql_string($categoryid),
						global_common::escape_mysql_string($order),
						global_common::escape_mysql_string($createdby),
						global_common::escape_mysql_string($createddate),
						global_common::escape_mysql_string($modifiedby),
						global_common::escape_mysql_string($modifieddate),
						global_common::escape_mysql_string($deletedby),
						global_common::escape_mysql_string($deleteddate),
						global_common::escape_mysql_string($isdeleted)
                ));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_MANUFACTORY,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_manufactory:'.$strSQL,1);
			return false;
		}	
		return $intID;
		
	}
    
    public function update($manufactoryid,$manufactoryname,$categoryid,$order,$createdby,$createddate,$modifiedby,$modifieddate,$deletedby,$deleteddate,$isdeleted)
	{
		$strTableName = self::TBL_SL_MANUFACTORY;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_MANUFACTORY,
				array($strTableName,
						global_common::escape_mysql_string($manufactoryid),
						global_common::escape_mysql_string($manufactoryname),
						global_common::escape_mysql_string($categoryid),
						global_common::escape_mysql_string($order),
						global_common::escape_mysql_string($createdby),
						global_common::escape_mysql_string($createddate),
						global_common::escape_mysql_string($modifiedby),
						global_common::escape_mysql_string($modifieddate),
						global_common::escape_mysql_string($deletedby),
						global_common::escape_mysql_string($deleteddate),
						global_common::escape_mysql_string($isdeleted)
                ));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_MANUFACTORY,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_manufactory:'.$strSQL,1);
			return false;
		}	
		return $intNewID;		
	}
    
    public function getManufactoryByID($objID, $selectField='*') 
	{		
        $selectField = $selectField? $selectField : '*'; 
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_MANUFACTORY ,							
					'WHERE ManufactoryID = \''.$objID.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_manufactory ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult[0];
	}
    
    public function getAllManufactory($intPage = 0,$selectField='*',$whereClause='',$orderBy='') 
	{		    
        $selectField = $selectField? $selectField : '*'; 
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
				array($selectField, Model_Manufactory::TBL_SL_MANUFACTORY ,							
					$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
        }
        else
        {
            $strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, Model_Manufactory::TBL_SL_MANUFACTORY ,							
					$whereClause.$orderBy ));
        }
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get All sl_manufactory:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult;
	}
    
    public function getListManufactory($intPage,$orderBy='ManufactoryID', $whereClause)
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
					self::TBL_SL_MANUFACTORY,$orderBy.' '.$whereClause.' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		//echo 'sql:'.$strSQL;	
		$arrResult = $this->_objConnection->selectCommand($strSQL);
		//print_r($arrResult);
		$strHTML = '<table class="tbl-list">
                    <thead>
						<td>ManufactoryID</td>
						<td>ManufactoryName</td>
						<td>CategoryID</td>
						<td>Order</td>
						<td>CreatedBy</td>
						<td>CreatedDate</td>
						<td>ModifiedBy</td>
						<td>ModifiedDate</td>
						<td>DeletedBy</td>
						<td>DeletedDate</td>
						<td>IsDeleted</td>
                    </thead>
                    <tbody>';
		$icount = count($arrmenu);
		for($i=0;$i<$icount;$i++)
		{
			$strHTML.='<tr class="'.($i%2==0?'even':'odd').'">
						<td>'.$arrResult[$i]['ManufactoryID'].'</td>
						<td>'.$arrResult[$i]['ManufactoryName'].'</td>
						<td>'.$arrResult[$i]['CategoryID'].'</td>
						<td>'.$arrResult[$i]['Order'].'</td>
						<td>'.$arrResult[$i]['CreatedBy'].'</td>
						<td>'.$arrResult[$i]['CreatedDate'].'</td>
						<td>'.$arrResult[$i]['ModifiedBy'].'</td>
						<td>'.$arrResult[$i]['ModifiedDate'].'</td>
						<td>'.$arrResult[$i]['DeletedBy'].'</td>
						<td>'.$arrResult[$i]['DeletedDate'].'</td>
						<td class="lastCell"><input type="checkbox" onclick="_objManufactory.showHide(\''.$arrResult[$i]['ManufactoryID'].'\',\''.$arrResult[$i]['name'].'\',this)" '.($arrResult[$i]['IsDeleted']?'':'checked=checked').' /></td>
					  </tr>';
		}
		$strHTML.='</tbody></table>';
		
		$strHTML .= "<div>".global_common::getPagingHTMLByNum($intPage,self::NUM_PER_PAGE,global_common::getTotalRecord(self::TBL_SL_MANUFACTORY,$this->_objConnection),
				"_objMenu.changePage")."</div>";
		return $strHTML;
	}
    
    #endregion   
}
?>