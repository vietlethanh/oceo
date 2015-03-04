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
	const ACT_ADD_PRICE							= 110;
	const ACT_UPDATE_PRICE						= 111;
	const ACT_DELETE_PRICE						= 112;
	const ACT_CHANGE_PAGE						= 113;
	const ACT_SHOW_EDIT							= 114;
	const ACT_GET_PRICE                         = 115;
	const ACT_ACTIVE_RETAILER                   = 116;
	
	const NUM_PER_PAGE							=10 ;
	
	const TBL_SL_RETAILER			            = 'sl_retailer';
	
	const SQL_INSERT_SL_RETAILER		= 'INSERT INTO `{0}`
		(
		`RetailerID`,
		`ProductID`,
		`ProductStatusID`,
		`StatusDetail`,
		`Price`,
		`Amount`,
		`Remaining`,
		`ImageLink`,
		`CityID`,
		`DistrictID`,
		`ShipTypeID`,
		`ShipingCost`,
		`ShippingDay`,
		`ShippingDesc`,
		`PaymentModeID`,
		`BoxInfo`,
		`Warranty`,
		`Promotion`,
		`ShortDesc`,
		`Description`,
		`CreatedBy`,
		`CreatedDate`,
		`ModifiedBy`,
		`ModifiedDate`,
		`DeletedBy`,
		`DeletedDate`,
		`IsDeleted`,
		`StatusID`,
		`Status`
		)
		VALUES (
		\'{1}\', \'{2}\', \'{3}\', \'{4}\', \'{5}\', \'{6}\', \'{7}\', \'{8}\', \'{9}\', \'{10}\', \'{11}\', \'{12}\', \'{13}\', \'{14}\', \'{15}\', \'{16}\', \'{17}\', \'{18}\', \'{19}\', \'{20}\', \'{21}\', \'{22}\', \'{23}\', \'{24}\', \'{25}\', \'{26}\', \'{27}\', \'{28}\', \'{29}\'
		);';
	const SQL_UPDATE_SL_RETAILER		= 'UPDATE `{0}`
		SET  
		`RetailerID` = \'{1}\',
		`ProductID` = \'{2}\',
		`ProductStatusID` = \'{3}\',
		`StatusDetail` = \'{4}\',
		`Price` = \'{5}\',
		`Amount` = \'{6}\',
		`Remaining` = \'{7}\',
		`ImageLink` = \'{8}\',
		`CityID` = \'{9}\',
		`DistrictID` = \'{10}\',
		`ShipTypeID` = \'{11}\',
		`ShipingCost` = \'{12}\',
		`ShippingDay` = \'{13}\',
		`ShippingDesc` = \'{14}\',
		`PaymentModeID` = \'{15}\',
		`BoxInfo` = \'{16}\',
		`Warranty` = \'{17}\',
		`Promotion` = \'{18}\',
		`ShortDesc` = \'{19}\',
		`Description` = \'{20}\',
		#`CreatedBy` = \'{21}\',
		#`CreatedDate` = \'{22}\',
		`ModifiedBy` = \'{23}\',
		`ModifiedDate` = \'{24}\',
		#`DeletedBy` = \'{25}\',
		#`DeletedDate` = \'{26}\',
		#`IsDeleted` = \'{27}\',
		`StatusID` = \'{28}\',
		`Status` = \'{29}\'
		WHERE `RetailerID` = \'{1}\'  ';
	
	
	//status : Deactivate;  Active; Bad content> referenced from sl_status: type:1-General Statuses
	const SQL_ACTIVE_SL_RETAILER		= 'UPDATE `{0}`
		SET  		
		`StatusID` = \'{2}\'		
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
		`ShippingDesc` varchar(256),
		`PaymentModeID` ,
		`BoxInfo` varchar(256),
		`Warranty` varchar(256),
		`Promotion` ,
		`ShortDesc` varchar(255),
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
	
	public function insert($productid,$productstatusid,$statusDetail,$price,$imagelink,$cityid,$shippingdesc,$boxinfo, $shortdesc, $description,$createdby,$status)
	{	
		$strTableName = self::TBL_SL_RETAILER;
		$intID = global_common::getMaxValueofField(global_mapping::RetailerID, $strTableName) + 1;
		
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_RETAILER,
				array(self::TBL_SL_RETAILER,$intID,
					global_common::escape_mysql_string($productid),
					global_common::escape_mysql_string($productstatusid),
					global_common::escape_mysql_string($statusDetail),
					global_common::escape_mysql_string($price),
					global_common::escape_mysql_string($amount),
					global_common::escape_mysql_string($remaining),
					global_common::escape_mysql_string($imagelink),
					global_common::escape_mysql_string($cityid),
					global_common::escape_mysql_string($districtid),
					global_common::escape_mysql_string($shiptypeid),
					global_common::escape_mysql_string($shipingcost),
					global_common::escape_mysql_string($shippingday),
					global_common::escape_mysql_string($shippingdesc),
					global_common::escape_mysql_string($paymentmodeid),
					global_common::escape_mysql_string($boxinfo),
					global_common::escape_mysql_string($warranty),
					global_common::escape_mysql_string($promotion),
					global_common::escape_mysql_string($shortdesc),
					global_common::escape_mysql_string($description),
					$createdby,
					global_common::nowSQL(),
					global_common::escape_mysql_string($modifiedby),
					global_common::escape_mysql_string($modifieddate),
					global_common::escape_mysql_string($deletedby),
					global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),
					global_common::escape_mysql_string($statusid),
					global_common::escape_mysql_string($status)
					));
		//echo $strSQL;
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_RETAILER,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_retailer:'.$strSQL,1);
			return false;
		}	
		return $intID;
		
	}
	
	public function update($retailerid,$productid,$productstatusid,$statusDetail,$price,$imagelink,$cityid,$shippingdesc,$boxinfo, $shortdesc,$description,$modifiedby,$status)
	{
		$strTableName = self::TBL_SL_RETAILER;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_RETAILER,
				array($strTableName,
					global_common::escape_mysql_string($retailerid),
					global_common::escape_mysql_string($productid),
					global_common::escape_mysql_string($productstatusid),
					global_common::escape_mysql_string($statusDetail),
					global_common::escape_mysql_string($price),
					global_common::escape_mysql_string($amount),
					global_common::escape_mysql_string($remaining),
					global_common::escape_mysql_string($imagelink),
					global_common::escape_mysql_string($cityid),
					global_common::escape_mysql_string($districtid),
					global_common::escape_mysql_string($shiptypeid),
					global_common::escape_mysql_string($shipingcost),
					global_common::escape_mysql_string($shippingday),
					global_common::escape_mysql_string($shippingdesc),
					global_common::escape_mysql_string($paymentmodeid),
					global_common::escape_mysql_string($boxinfo),
					global_common::escape_mysql_string($warranty),
					global_common::escape_mysql_string($promotion),
					global_common::escape_mysql_string($shortdesc),
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
			global_common::writeLog('Error update sl_retailer:'.$strSQL,1);
			return false;
		}	
		return $retailerid;		
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
		$retailer = $arrResult[0];
		$objStatus = new Model_Status($this->_objConnection);
		$objCity = new Model_City($this->_objConnection);
		
		$city = $objCity->getCityByID($retailer[global_mapping::CityID]);
		$retailer[global_mapping::CityName] = $city[global_mapping::CityName];
		
		$status = $objStatus->getStatusByID($retailer[global_mapping::ProductStatusID]);		
		$retailer[global_mapping::StatusName] = $status[global_mapping::StatusName];
		//print_r($arrResult);
		return $retailer;
	}
	
	public function getRetailerByProduct($productID,$type,$city,$selectField='*') 
	{		
		if($city)
		{
			
			$city = ' and `'.global_mapping::CityID.'` = '.$city.' ';
		}
		else
		{
			$city = ' and 1=1 ';
		}
		
		
		if($type)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_RETAILER ,							
						'WHERE '.global_mapping::ProductID.' = \''.$productID.'\' and '.global_mapping::ProductStatusID.' = \''.$type.'\' '.$city));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array(global_mapping::ProductStatusID.', MIN('.global_mapping::Price.') as '.global_mapping::Price, self::TBL_SL_RETAILER ,							
						'WHERE '.global_mapping::ProductID.' = \''.$productID.'\' '.$city.' group by '.global_mapping::ProductStatusID.' Order by '.global_mapping::ProductStatusID));
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
	
	
	
	public function getRetailerByUser($intPage,$userID,$selectField='*',&$total) 
	{		
		$whereClause = 'WHERE '.global_mapping::CreatedBy.' = \''.$userID.'\' and ('.global_mapping::IsDeleted.' IS NULL or '.global_mapping::IsDeleted.' = \'0\')';
		if($intPage>0)
		{
			$strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_RETAILER ,	$whereClause.'limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
			
			
			
			$strSQLCount = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array('count(*)', self::TBL_SL_RETAILER ,	$whereClause));
			
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_RETAILER ,							
						'WHERE '.global_mapping::CreatedBy.' = \''.$userID.'\' and ('.global_mapping::IsDeleted.' IS NULL or '.global_mapping::IsDeleted.' = \'0\') '));
			
		}
		
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_retailer ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		if($strSQLCount)
		{
			//echo '<br>$strSQLCount:'.$strSQLCount;
			$arrTotal =$this->_objConnection->selectCommand($strSQLCount);		
			$total = $arrTotal[0][0];
		}
		
		$productIDs = global_common::getArrayColumn($arrResult,global_mapping::ProductID); 
		//print_r($productIDs);
		$productIDs = array_unique($productIDs);
		
		$objProduct = new Model_Product($this->_objConnection);
		
		$products = $objProduct->getProductByIDs($productIDs);
		$temp = array();
		foreach($products as $key => $info)
		{
			$temp[$info[global_mapping::ProductID]]=$info;
			unset($products[$key]);
		}	
		$products = $temp;
		//print_r($products);
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
			$arrResult[$i][global_mapping::ProductName] = $products[$arrResult[$i][global_mapping::ProductID]][global_mapping::ProductName];
		}
		
		$arrResult = global_common::mergeUserInfo($arrResult);
		//print_r($arrResult);
		return $arrResult;
	}
	
	public function activeRetailer($retailerID, $statusID)
	{
		$strTableName = self::TBL_SL_RETAILER;
		$strSQL = global_common::prepareQuery(self::SQL_ACTIVE_SL_RETAILER,array($strTableName,global_common::escape_mysql_string($retailerID),$statusID));
		//echo $strSQL;
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_RETAILER,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error activeRetailer sl_retailer:'.$strSQL,1);
			return false;
		}	
		return $retailerID;	
	}
	
	public function getRetailerByProducts($intPage, $productIds,$type,$city,$status, &$total) 
	{		
		
		if(!$selectField)
		{
			$selectField='*';
		}
		$arrIDs = global_common::splitString($productIds);
		$strQueryIN = global_common::convertToQueryIN($arrIDs);
		if($strQueryIN)
		{
			$strQueryIN= global_mapping::ProductID.' IN( '.$strQueryIN.') and';
		}
		else
		{
			$strQueryIN= '1 != and';
		}
		if($city)
		{
			
			$city = ' and `'.global_mapping::CityID.'` = '.$city.' ';
		}
		else
		{
			$city = ' and 1=1 ';
		}
		
		if($type)
		{
			
			$type = ' and `'.global_mapping::ProductStatusID.'` = '.$type.' ';
		}
		else
		{
			$type = ' and 1=1 ';
		}
		
		if($status)
		{
			$status = '  (`'.global_mapping::StatusID.'` = '.global_common::STATUS_ACTIVE .' or `'.global_mapping::StatusID.'` is null)';
		}
		else
		{
			$status = '  `'.global_mapping::StatusID.'` = '.global_common::STATUS_INACTIVE ;
		}
		
		if($intPage > 0)
		{
			$strSQLCount = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array("count(*)", self::TBL_SL_RETAILER ,							
						'WHERE '.$strQueryIN.$status. $type. $city));
			
			$strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_RETAILER ,							
						'WHERE '.$strQueryIN.$status. $type. $city.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		}
		else
		{
			$strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_RETAILER ,							
						'WHERE '.$strQueryIN.$status. $type. $city));
		}
		
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_retailer ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		if($strSQLCount)
		{
			$arrTotal =$this->_objConnection->selectCommand($strSQLCount);		
			$total = $arrTotal[0][0];
		}
		$productIDs = global_common::getArrayColumn($arrResult,global_mapping::ProductID); 
		//print_r($productIDs);
		$productIDs = array_unique($productIDs);
		
		$objProduct = new Model_Product($this->_objConnection);
		
		$products = $objProduct->getProductByIDs($productIDs);
		$temp = array();
		foreach($products as $key => $info)
		{
			$temp[$info[global_mapping::ProductID]]=$info;
			unset($products[$key]);
		}	
		$products = $temp;
		//print_r($products);
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
			$arrResult[$i][global_mapping::ProductName] = $products[$arrResult[$i][global_mapping::ProductID]][global_mapping::ProductName];
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