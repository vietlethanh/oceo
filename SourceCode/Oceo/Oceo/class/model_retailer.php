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
 * Implementations of slretailers represent a Retailer
 * </summary>
 */
class Model_Retailer
{		   
	#region PRESERVE ExtraMethods For Retailer
	#endregion
	#region Contants	
	const ACT_ADD							= 10;
	const ACT_UPDATE						= 11;
	const ACT_DELETE						= 12;
	const ACT_CHANGE_PAGE					= 13;
	const ACT_SHOW_EDIT                     = 14;
	const ACT_GET                           = 15;
	const NUM_PER_PAGE                      = 15;
	
	const TBL_SL_RETAILER			            = 'sl_retailer';
	
	const SQL_INSERT_SL_RETAILER		= 'INSERT INTO `{0}`
		(
		RetailerID,
		ProductID,
		ProductStatusID,
		Price,
		Amount,
		Remaining,
		ImageLink,
		ShipTypeID,
		ShipingCost,
		ShippingDay,
		PaymentModeID,
		Description,
		CreatedBy,
		CreatedDate,
		ModifiedBy,
		ModifiedDate,
		DeletedBy,
		DeletedDate,
		IsDeleted,
		StatusID,
		Status
		)
		VALUES (
		\'{1}\', \'{2}\', \'{3}\', \'{4}\', \'{5}\', \'{6}\', \'{7}\', \'{8}\', \'{9}\', \'{10}\', \'{11}\', \'{12}\', \'{13}\', \'{14}\', \'{15}\', \'{16}\', \'{17}\', \'{18}\', \'{19}\', \'{20}\', \'{21}\'
		);';
	
	const SQL_UPDATE_SL_RETAILER		= 'UPDATE `{0}`
		SET  
		`RetailerID` = \'{1}\',
		`ProductID` = \'{2}\',
		`ProductStatusID` = \'{3}\',
		`Price` = \'{4}\',
		`Amount` = \'{5}\',
		--`Remaining` = \'{6}\',
		`ImageLink` = \'{7}\',
		`ShipTypeID` = \'{8}\',
		`ShipingCost` = \'{9}\',
		`ShippingDay` = \'{10}\',
		`PaymentModeID` = \'{11}\',
		`Description` = \'{12}\',
		--`CreatedBy` = \'{13}\',
		--`CreatedDate` = \'{14}\',
		`ModifiedBy` = \'{15}\',
		`ModifiedDate` = \'{16}\',
		--`DeletedBy` = \'{17}\',
		--`DeletedDate` = \'{18}\',
		--`IsDeleted` = \'{19}\',
		`StatusID` = \'{20}\',
		`Status` = \'{21}\'
		WHERE `RetailerID` = \'{1}\'  ';
	
	
	const SQL_CREATE_TABLE_SL_RETAILER		= 'CREATE TABLE `{0}` (
		
		`RetailerID` ,
		`ProductID` ,
		`ProductStatusID` ,
		`Price` ,
		`Amount` ,
		`Remaining` ,
		`ImageLink` ,
		`ShipTypeID` ,
		`ShipingCost` ,
		`ShippingDay` ,
		`PaymentModeID` ,
		`Description` ,
		`CreatedBy` ,
		`CreatedDate` ,
		`ModifiedBy` ,
		`ModifiedDate` ,
		`DeletedBy` ,
		`DeletedDate` ,
		`IsDeleted` ,
		`StatusID` ,
		`Status` varchar(20),
		PRIMARY KEY(RetailerID)
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
	public function  Model_Retailer($objConnection)
	{
		$this->_objConnection = $objConnection;
		
	}
	#region
	
	#region Public Functions
	
	public function insert( $productid,$productstatusid,$price,$amount,$imagelink,$shiptypeid,$shipingcost,$shippingday,$paymentmodeid,$description,$createdby,$statusid,$status)
	{	
		$strTableName = self::TBL_SL_RETAILER;
		$intID = global_common::getMaxValueofField(global_mapping::UserID, $strTableName) + 1;
		
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_RETAILER,
				array(self::TBL_SL_RETAILER,$intID,
					global_common::escape_mysql_string($productid),
					global_common::escape_mysql_string($productstatusid),
					global_common::escape_mysql_string($price),
					global_common::escape_mysql_string($amount),
					global_common::escape_mysql_string($remaining),
					global_common::escape_mysql_string($imagelink),
					global_common::escape_mysql_string($shiptypeid),
					global_common::escape_mysql_string($shipingcost),
					global_common::escape_mysql_string($shippingday),
					global_common::escape_mysql_string($paymentmodeid),
					global_common::escape_mysql_string($description),
					global_common::escape_mysql_string($createdby),
					global_common::nowSQL(),
					global_common::escape_mysql_string($modifiedby),
					global_common::escape_mysql_string($modifieddate),
					global_common::escape_mysql_string($deletedby),
					global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),
					global_common::escape_mysql_string($statusid),
					global_common::escape_mysql_string($status)
					));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_RETAILER,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_retailer:'.$strSQL,1);
			return false;
		}	
		return $intID;
		
	}
	
	public function update($retailerid,$productid,$productstatusid,$price,$amount,$imagelink,$shiptypeid,$shipingcost,$shippingday,$paymentmodeid,$description,$modifiedby,$statusid,$status)
	{
		$strTableName = self::TBL_SL_RETAILER;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_RETAILER,
				array($strTableName,
					global_common::escape_mysql_string($retailerid),
					global_common::escape_mysql_string($productid),
					global_common::escape_mysql_string($productstatusid),
					global_common::escape_mysql_string($price),
					global_common::escape_mysql_string($amount),
					global_common::escape_mysql_string($remaining),
					global_common::escape_mysql_string($imagelink),
					global_common::escape_mysql_string($shiptypeid),
					global_common::escape_mysql_string($shipingcost),
					global_common::escape_mysql_string($shippingday),
					global_common::escape_mysql_string($paymentmodeid),
					global_common::escape_mysql_string($description),
					global_common::escape_mysql_string($createdby),
					global_common::escape_mysql_string($createddate),
					global_common::escape_mysql_string($modifiedby),
					global_common::nowSQL(),
					global_common::escape_mysql_string($deletedby),
					global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),
					global_common::escape_mysql_string($statusid),
					global_common::escape_mysql_string($status)
					));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_RETAILER,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_retailer:'.$strSQL,1);
			return false;
		}	
		return $intNewID;		
	}
	
	public function getRetailerByID($objID,$selectField='*') 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_RETAILER ,							
					'WHERE RetailerID = \''.$objID.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_retailer ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult[0];
	}
	
	public function getRetailerByProduct($productID,$type,$selectField='*') 
	{		
		if($type)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_RETAILER ,							
						'WHERE '.global_mapping::ProductID.' = \''.$productID.'\' and '.global_mapping::ProductStatusID.' = \''.$type.'\''));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array(global_mapping::ProductStatusID.', MIN('.global_mapping::Price.') as '.global_mapping::Price, self::TBL_SL_RETAILER ,							
						'WHERE '.global_mapping::ProductID.' = \''.$productID.'\' group by '.global_mapping::ProductStatusID.' Order by '.global_mapping::ProductStatusID));
		}
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_retailer ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		$objStatus = new Model_Status($this->_objConnection);
		$allStatus = $objStatus->getAllStatus();
		$statuses = array();
		foreach($allStatus as $key => $info)
		{
			$statuses[$info[global_mapping::StatusID]]=$info;
			unset($allStatus[$key]);
		}	
		
		$count = count($arrResult);
		
		for($i=0; $i < $count; $i++)
		{
			$arrResult[$i][global_mapping::ProductStatus] = $statuses[$arrResult[$i][global_mapping::ProductStatusID]][global_mapping::StatusName];
		}
		
		$arrResult = global_common::mergeUserInfo($arrResult);
		//print_r($arrResult);
		return $arrResult;
	}
	
	
	public function getAllRetailer($intPage = 0,$selectField='*',$whereClause='',$orderBy='') 
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
					array($selectField, Model_Retailer::TBL_SL_RETAILER ,							
						$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Retailer::TBL_SL_RETAILER ,							
						$whereClause.$orderBy ));
		}
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get All sl_retailer:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult;
	}
	
	public function getListRetailer($intPage,$orderBy='RetailerID', $whereClause)
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
					self::TBL_SL_RETAILER,$orderBy.' '.$whereClause.' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		//echo 'sql:'.$strSQL;	
		$arrResult = $this->_objConnection->selectCommand($strSQL);
		//print_r($arrResult);
		$strHTML = '<table class="tbl-list">
				<thead>
				<td>RetailerID</td>
				<td>ProductID</td>
				<td>ProductStatusID</td>
				<td>Price</td>
				<td>Amount</td>
				<td>Remaining</td>
				<td>ImageLink</td>
				<td>ShipTypeID</td>
				<td>ShipingCost</td>
				<td>ShippingDay</td>
				<td>PaymentModeID</td>
				<td>Description</td>
				<td>CreatedBy</td>
				<td>CreatedDate</td>
				<td>ModifiedBy</td>
				<td>ModifiedDate</td>
				<td>DeletedBy</td>
				<td>DeletedDate</td>
				<td>IsDeleted</td>
				<td>StatusID</td>
				<td>Status</td>
				</thead>
				<tbody>';
		$icount = count($arrmenu);
		for($i=0;$i<$icount;$i++)
		{
			$strHTML.='<tr class="'.($i%2==0?'even':'odd').'">
					<td>'.$arrResult[$i]['RetailerID'].'</td>
					<td>'.$arrResult[$i]['ProductID'].'</td>
					<td>'.$arrResult[$i]['ProductStatusID'].'</td>
					<td>'.$arrResult[$i]['Price'].'</td>
					<td>'.$arrResult[$i]['Amount'].'</td>
					<td>'.$arrResult[$i]['Remaining'].'</td>
					<td>'.$arrResult[$i]['ImageLink'].'</td>
					<td>'.$arrResult[$i]['ShipTypeID'].'</td>
					<td>'.$arrResult[$i]['ShipingCost'].'</td>
					<td>'.$arrResult[$i]['ShippingDay'].'</td>
					<td>'.$arrResult[$i]['PaymentModeID'].'</td>
					<td>'.$arrResult[$i]['Description'].'</td>
					<td>'.$arrResult[$i]['CreatedBy'].'</td>
					<td>'.$arrResult[$i]['CreatedDate'].'</td>
					<td>'.$arrResult[$i]['ModifiedBy'].'</td>
					<td>'.$arrResult[$i]['ModifiedDate'].'</td>
					<td>'.$arrResult[$i]['DeletedBy'].'</td>
					<td>'.$arrResult[$i]['DeletedDate'].'</td>
					<td><input type="checkbox" onclick="_objRetailer.showHide(\''.$arrResult[$i]['RetailerID'].'\',\''.$arrResult[$i]['name'].'\',this)" '.($arrResult[$i]['IsDeleted']?'':'checked=checked').' /></td>
					<td>'.$arrResult[$i]['StatusID'].'</td>
					<td class="lastCell">'.$arrResult[$i]['Status'].'</td>
					</tr>';
		}
		$strHTML.='</tbody></table>';
		
		$strHTML .= "<div>".global_common::getPagingHTMLByNum($intPage,self::NUM_PER_PAGE,global_common::getTotalRecord(self::TBL_SL_RETAILER,$this->_objConnection),
				"_objMenu.changePage")."</div>";
		return $strHTML;
	}
	
	#endregion   
}
?>