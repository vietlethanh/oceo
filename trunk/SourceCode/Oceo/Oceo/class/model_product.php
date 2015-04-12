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
 * Implementations of slproducts represent a Product
 * </summary>
 */
class Model_Product
{		   
	#region PRESERVE ExtraMethods For Product
	#endregion
	#region Contants	
	const ACT_ADD							= 10;
	const ACT_UPDATE						= 11;
	const ACT_DELETE						= 12;
	const ACT_CHANGE_PAGE					= 13;
	const ACT_SHOW_EDIT                     = 14;
	const ACT_GET                           = 15;
	const ACT_ACTIVE						= 16;
	const ACT_REFRESH						= 17;
	const ACT_CLONE                         = 18;
	
	
	const NUM_PER_PAGE                      = 12;
	
	const TBL_SL_PRODUCT			            = 'sl_product';
	
	const SQL_INSERT_SL_PRODUCT		= 'INSERT INTO `{0}`
		(
		ProductID,
		ProductName,
		CatalogueID,
		ImageLink,
		ManufactoryID,
		PaymentModeID,
		NumberaireID,
		StorageDate,
		Price,
		Amount,
		Description,
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
		\'{1}\', \'{2}\', \'{3}\', \'{4}\', \'{5}\', \'{6}\', \'{7}\', \'{8}\', \'{9}\', \'{10}\', \'{11}\', \'{12}\', \'{13}\', \'{14}\', \'{15}\', \'{16}\', \'{17}\', \'{18}\', \'{19}\'
		);';
	
	const SQL_UPDATE_SL_PRODUCT		= 'UPDATE `{0}`
		SET  
		`ProductID` = \'{1}\',
		`ProductName` = \'{2}\',
		`CatalogueID` = \'{3}\',
		`ImageLink` = \'{4}\',
		`ManufactoryID` = \'{5}\',
		`PaymentModeID` = \'{6}\',
		`NumberaireID` = \'{7}\',
		`StorageDate` = \'{8}\',
		`Price` = \'{9}\',
		`Amount` = \'{10}\',
		`Description` = \'{11}\',
		#`CreatedBy` = \'{12}\',
		#`CreatedDate` = \'{13}\',
		`ModifiedBy` = \'{14}\',
		`ModifiedDate` = \'{15}\',
		#`DeletedBy` = \'{16}\',
		#`DeletedDate` = \'{17}\',
		#`IsDeleted` = \'{18}\',
		`Status` = \'{19}\'
		WHERE `ProductID` = \'{1}\'  ';
	
	
	const SQL_CREATE_TABLE_SL_PRODUCT		= 'CREATE TABLE `{0}` (
		
		`ProductID` ,
		`ProductName` varchar(255),
		`CatalogueID` varchar(20),
		`ImageLink` ,
		`ManufactoryID` varchar(20),
		`PaymentModeID` varchar(20),
		`NumberaireID` varchar(20),
		`StorageDate` ,
		`Price` ,
		`Amount` ,
		`Description` ,
		`CreatedBy` varchar(20),
		`CreatedDate` ,
		`ModifiedBy` varchar(20),
		`ModifiedDate` ,
		`DeletedBy` varchar(20),
		`DeletedDate` ,
		`IsDeleted` ,
		`Status` varchar(20),
		PRIMARY KEY(ProductID)
		) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;';
	
	const SQL_CLONE_SL_PRODUCT = 'INSERT INTO `{0}` (`ProductID`,
		`ProductName`,
		`CatalogueID`,
		`ImageLink`,
		`ManufactoryID`,
		`PaymentModeID`,
		`NumberaireID`,
		`StorageDate`,
		`Price`,
		`Amount`,
		`Description`,
		`CreatedBy`,
		`CreatedDate`,
		`ModifiedBy`,
		`ModifiedDate`,
		`DeletedBy`,
		`DeletedDate`,
		`IsDeleted`,
		`Status`)
		SELECT 		\'{2}\',
		CONCAT(\'CLONE-\',`ProductName`),
		`CatalogueID`,
		`ImageLink`,
		`ManufactoryID`,
		`PaymentModeID`,
		`NumberaireID`,
		`StorageDate`,
		`Price`,
		`Amount`,
		`Description`,
		\'{3}\',
		\'{4}\',
		\'{3}\',
		\'{4}\',
		`DeletedBy`,
		`DeletedDate`,
		`IsDeleted`,
		`Status` FROM `{0}` WHERE productid=\'{1}\'';
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
	public function  Model_Product($objConnection)
	{
		$this->_objConnection = $objConnection;
		
	}
	#region
	
	#region Public Functions
	
	public function insert( $productname,$catalogueid,$imagelink,$manufactoryid,$description,$createdby,$status)
	{
		$strTableName = self::TBL_SL_PRODUCT;
		$intID = global_common::getMaxValueofField($this->_objConnection,global_mapping::ProductID, $strTableName) + 1;
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_PRODUCT,
				array(self::TBL_SL_PRODUCT,$intID,
					global_common::escape_mysql_string($productname),
					global_common::escape_mysql_string($catalogueid),
					global_common::escape_mysql_string($imagelink),
					global_common::escape_mysql_string($manufactoryid),
					global_common::escape_mysql_string($paymentmodeid),
					global_common::escape_mysql_string($numberaireid),
					global_common::escape_mysql_string($storagedate),
					global_common::escape_mysql_string($price),
					global_common::escape_mysql_string($amount),
					global_common::escape_mysql_string($description),
					global_common::escape_mysql_string($createdby),
					global_common::nowSQL(),
					global_common::escape_mysql_string($createdby),
					global_common::nowSQL(),
					global_common::escape_mysql_string($deletedby),
					global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),
					global_common::escape_mysql_string($status)
					));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_PRODUCT,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_product:'.$strSQL,1);
			return false;
		}	
		return $intID;
		
	}
	
	public function update($productid,$productname,$catalogueid,$imagelink,$manufactoryid,$description,$modifiedby,$status)
	{
		$strTableName = self::TBL_SL_PRODUCT;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_PRODUCT,
				array($strTableName,
					global_common::escape_mysql_string($productid),
					global_common::escape_mysql_string($productname),
					global_common::escape_mysql_string($catalogueid),
					global_common::escape_mysql_string($imagelink),
					global_common::escape_mysql_string($manufactoryid),
					global_common::escape_mysql_string($paymentmodeid),
					global_common::escape_mysql_string($numberaireid),
					global_common::escape_mysql_string($storagedate),
					global_common::escape_mysql_string($price),
					global_common::escape_mysql_string($amount),
					global_common::escape_mysql_string($description),
					null,
					null,
					global_common::escape_mysql_string($modifiedby),
					global_common::nowSQL(),
					global_common::escape_mysql_string($deletedby),
					global_common::escape_mysql_string($deleteddate),
					global_common::escape_mysql_string($isdeleted),
					global_common::escape_mysql_string($status)
					));
		//echo $strSQL;
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_PRODUCT,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_product:'.$strSQL,1);
			return false;
		}	
		return $productid;		
	}
	
	public function cloneProduct($productid,$createdBy)
	{
		$strTableName = self::TBL_SL_PRODUCT;
		$intID = global_common::getMaxValueofField($this->_objConnection,global_mapping::ProductID, $strTableName) + 1;
		$strSQL = global_common::prepareQuery(self::SQL_CLONE_SL_PRODUCT,
				array($strTableName,
					$productid,
					$intID,
					global_common::escape_mysql_string($createdBy),
					global_common::nowSQL()
					));
		//echo $strSQL;
		//return;
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_PRODUCT,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_product:'.$strSQL,1);
			return false;
		}	
		return $intID;		
	}
	
	public function getProductByID($objID,$selectField='*') 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_PRODUCT ,							
					'WHERE ProductID = \''.$objID.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_product ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult[0];
	}
	
	public function getProductByIDs($arrIDs) 
	{		
		$arrIDs = global_common::splitString($arrIDs);
		$strQueryIN = global_common::convertToQueryIN($arrIDs);
		if($strQueryIN)
		{
			$strQueryIN= global_mapping::ProductID.' IN ('.$strQueryIN.')';
		}
		else
		{
			$strQueryIN = '1=1';
		}
		$whereClause = 'WHERE '.$strQueryIN;
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE,array('*',
					self::TBL_SL_PRODUCT,$whereClause.' '));
		//echo $strSQL;
		$products =  $this->_objConnection->selectCommand($strSQL);	
		
		if(!$products)
		{
			global_common::writeLog('get getProductByIDs:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		
		//print_r($products);
		return $products;
	}
	
	
	public function getPropertyInfoByID($objID) 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array('*', Model_ProductProperty::TBL_SL_PRODUCT_PROPERTY ,							
					'WHERE ProductID = \''.$objID.'\'  Order by `'.global_mapping::Order.'`'));
		//echo $strSQL;
		
		$arrResult =$this->_objConnection->selectCommand($strSQL);	
		if(!$arrResult)
		{
			global_common::writeLog('get sl_product ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		else
		{
			//print_r($arrResult);
			$propertyIDs = global_common::getArrayColumn($arrResult,global_mapping::PropertyID); 
			$propertyIDs = array_unique($propertyIDs);
			//print_r($propertyIDs);
			$objProperty = new Model_Property($this->_objConnection);
			$objPropertyGroup = new Model_PropertyGroup($this->_objConnection);
			
			$properties = $objProperty->getPropertyByIDs($propertyIDs);
			$temp = array();
			foreach($propertyIDs as $item)
			{
				foreach($properties as $subitem)
				{
					if($item == $subitem[global_mapping::PropertyID])
					{
						//echo $item.':';
						$temp  = array_merge($temp, array($subitem));
					}
				}
			}
			$properties = $temp;
			//print_r($properties);
			$propertyGroupIDs = global_common::getArrayColumn($properties,global_mapping::PropertyGroupID);
			$propertyGroupIDs = array_unique($propertyGroupIDs);
			//print_r($propertyGroupIDs);
			$propertyGroups = $objPropertyGroup->getPropertyGroupByIDs($propertyGroupIDs);
			
			$temp = array();
			foreach($arrResult as $key => $info)
			{
				$temp[$info[global_mapping::PropertyID]]=$info;
				unset($arrResult[$key]);				
			}	
			$arrResult = $temp;
			$temp = array();
			foreach($propertyGroupIDs as $item)
			{
				foreach($propertyGroups as $subitem)
				{
					if($item == $subitem[global_mapping::PropertyGroupID])
					{
						//echo $item.':';
						$temp  = array_merge($temp, array($subitem));
					}
				}
			}
			$propertyGroups = $temp;
			
			//print_r($arrResult);
			//print_r($propertyGroups);
			$count = count($propertyGroups);
			
			for($i=0; $i < $count; $i++)
			{
				foreach($properties as $item)
				{
					if($item[global_mapping::PropertyGroupID] == $propertyGroups[$i][global_mapping::PropertyGroupID])
					{
						//change defaut value  to product property value
						$item[global_mapping::PropertyValue] = $arrResult[$item[global_mapping::PropertyID]][global_mapping::PropertyValue];
						$item[global_mapping::Status] = $arrResult[$item[global_mapping::PropertyID]][global_mapping::Status];
						$item[global_mapping::TypeID] = $arrResult[$item[global_mapping::PropertyID]][global_mapping::TypeID];
						$item[global_mapping::StatusID] = $arrResult[$item[global_mapping::PropertyID]][global_mapping::StatusID];
						$item[global_mapping::Order] = $arrResult[$item[global_mapping::PropertyID]][global_mapping::Order];
						$propertyGroups[$i]['Properties'] = $propertyGroups[$i]['Properties']? $propertyGroups[$i]['Properties']: array();
						$propertyGroups[$i]['Properties'] = array_merge($propertyGroups[$i]['Properties'], array( $item));
					}
				}
			}
		}
		
		//print_r($propertyGroups);
		return $propertyGroups;
	}
	
	
	public function getAllProduct($intPage = 0,$selectField='*',$whereClause='',$orderBy='',&$total) 
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
			$strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Product::TBL_SL_PRODUCT ,							
						$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
			
			$strSQLCount = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array('count(*)', Model_Product::TBL_SL_PRODUCT ,							
						$whereClause.$orderBy));
		}
		else
		{
			$strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_Product::TBL_SL_PRODUCT ,							
						$whereClause.$orderBy ));
		}
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get All sl_product:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//echo '<br>$strSQLCount:'.$strSQLCount;
		if($strSQLCount)
		{
			$arrTotal =$this->_objConnection->selectCommand($strSQLCount);		
			$total = $arrTotal[0][0];
		}
		$objManu = new Model_Manufactory($this->_objConnection);
		$objArticleType = new Model_ArticleType($this->_objConnection);
		$allManus = $objManu->getAllManufactory();
		$allCats = $objArticleType->getAllArticleType();
		$manus = array();
		foreach($allManus as $key => $info)
		{
			$manus[$info[global_mapping::ManufactoryID]]=$info;
			unset($allManus[$key]);
		}	
		$cats = array();
		foreach($allCats as $key => $info)
		{
			$cats[$info[global_mapping::ArticleTypeID]]=$info;
			unset($allCats[$key]);
		}	
		
		$count = count($arrResult);
		for($index=0;$index < $count;$index++)
		{
			if( $manus[$arrResult[$index][global_mapping::ManufactoryID]])
			{
				$arrResult[$index][global_mapping::ManufactoryName] = $manus[$arrResult[$index][global_mapping::ManufactoryID]][global_mapping::ManufactoryName];
			}
			if( $cats[$arrResult[$index][global_mapping::CatalogueID]])
			{
				$arrResult[$index][global_mapping::ArticleTypeName] = $cats[$arrResult[$index][global_mapping::CatalogueID]][global_mapping::ArticleTypeName];
			}
		}
		//print_r($arrResult);
		return $arrResult;
	}
	
    public function getLatestRetailer($intPage = 0,$whereClause='',$type, &$total) 
	{		
		if($whereClause)
		{
			$whereClause = ' WHERE '.$whereClause;
		}
	
		$orderBy = ' ORDER BY '.global_mapping::ModifiedDate.' DESC';
		
		
		$strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array(global_mapping::ProductID, Model_Product::TBL_SL_PRODUCT ,							
						$whereClause ));
	   
		//echo '<br>SQL:'.$strSQL;
		$products =$this->_objConnection->selectCommand($strSQL);		
		if(!$products)
		{
			global_common::writeLog('get All sl_product:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
                
        $productIDs = global_common::getArrayColumn($products,global_mapping::ProductID);
        $productIDs = array_unique($productIDs);
        //print_r($productIDs);
        $strQueryIN = global_common::convertToQueryIN($productIDs);
       	$whereClause= 'Where '.							
						global_mapping::ProductID.' IN ('.$strQueryIN.')';
        if($type)
        {
            $whereClause.= ' And '.global_mapping::ProductStatusID.'='.$type;
        }
		
        $strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array('*', Model_Retailer::TBL_SL_RETAILER , $whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
			
        $arrResult =$this->_objConnection->selectCommand($strSQL);
        //echo $strSQL;
       	if(!$arrResult)
		{
			global_common::writeLog('get All Retailers:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}	
        
        $strSQLCount = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array('count(*)', Model_Retailer::TBL_SL_RETAILER ,							
						$whereClause));

        //Get details of product to display
        $productIDs = global_common::getArrayColumn($arrResult,global_mapping::ProductID);
        $productIDs = array_unique($productIDs);
        //print_r($productIDs);
        $strQueryIN = global_common::convertToQueryIN($productIDs);
        $productDetails = $this->getProductByIDs($productIDs);
        
        $convertedProducts = array();
		foreach($productDetails as $key => $info)
		{
			$convertedProducts[$info[global_mapping::ProductID]]=$info;
			unset($productDetails[$key]);
		}	
        $objStatus = new Model_Status($this->_objConnection);
        $productStatus = $objStatus->getAllStatus();
        $convertedStatus = array();
		foreach($productStatus as $key => $info)
		{
			$convertedStatus[$info[global_mapping::StatusID]]=$info;
			unset($productStatus[$key]);
		}	
        
        //echo '<br>$strSQLCount:'.$strSQLCount;
		//Get total results
        if($strSQLCount)
		{
			$arrTotal =$this->_objConnection->selectCommand($strSQLCount);		
			$total = $arrTotal[0][0];
		}
        //Assign product details to retailers by ProductID
        $count = count($arrResult);
		for($index=0;$index < $count;$index++)
		{			
		      $arrResult[$index]["Product"] = $convertedProducts[$arrResult[$index][global_mapping::ProductID]];		
              $arrResult[$index][global_mapping::StatusName] = $convertedStatus[$arrResult[$index][global_mapping::ProductStatusID]][global_mapping::StatusName];
		}
        //echo 'Before merge comment info';
		$arrResult = global_common::mergeUserInfo($arrResult,$this->_objConnection);
              
		return $arrResult;
	}
	
	
	public function getListProduct($intPage,$orderBy='ProductID', $whereClause)
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
					self::TBL_SL_PRODUCT,$orderBy.' '.$whereClause.' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		//echo 'sql:'.$strSQL;	
		$arrResult = $this->_objConnection->selectCommand($strSQL);
		//print_r($arrResult);
		$strHTML = '<table class="tbl-list">
				<thead>
				<td>ProductID</td>
				<td>ProductName</td>
				<td>CatalogueID</td>
				<td>ImageLink</td>
				<td>ManufactoryID</td>
				<td>PaymentModeID</td>
				<td>NumberaireID</td>
				<td>StorageDate</td>
				<td>Price</td>
				<td>Amount</td>
				<td>Description</td>
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
					<td>'.$arrResult[$i]['ProductID'].'</td>
					<td>'.$arrResult[$i]['ProductName'].'</td>
					<td>'.$arrResult[$i]['CatalogueID'].'</td>
					<td>'.$arrResult[$i]['ImageLink'].'</td>
					<td>'.$arrResult[$i]['ManufactoryID'].'</td>
					<td>'.$arrResult[$i]['PaymentModeID'].'</td>
					<td>'.$arrResult[$i]['NumberaireID'].'</td>
					<td>'.$arrResult[$i]['StorageDate'].'</td>
					<td>'.$arrResult[$i]['Price'].'</td>
					<td>'.$arrResult[$i]['Amount'].'</td>
					<td>'.$arrResult[$i]['Description'].'</td>
					<td>'.$arrResult[$i]['CreatedBy'].'</td>
					<td>'.$arrResult[$i]['CreatedDate'].'</td>
					<td>'.$arrResult[$i]['ModifiedBy'].'</td>
					<td>'.$arrResult[$i]['ModifiedDate'].'</td>
					<td>'.$arrResult[$i]['DeletedBy'].'</td>
					<td>'.$arrResult[$i]['DeletedDate'].'</td>
					<td><input type="checkbox" onclick="_objProduct.showHide(\''.$arrResult[$i]['ProductID'].'\',\''.$arrResult[$i]['name'].'\',this)" '.($arrResult[$i]['IsDeleted']?'':'checked=checked').' /></td>
					<td class="lastCell">'.$arrResult[$i]['Status'].'</td>
					</tr>';
		}
		$strHTML.='</tbody></table>';
		
		$strHTML .= "<div>".global_common::getPagingHTMLByNum($intPage,self::NUM_PER_PAGE,global_common::getTotalRecord(self::TBL_SL_PRODUCT,$this->_objConnection),
				"_objMenu.changePage")."</div>";
		return $strHTML;
	}
	
	#endregion   
}
?>