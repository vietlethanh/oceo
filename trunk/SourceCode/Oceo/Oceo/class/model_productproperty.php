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
 * Implementations of slproductpropertys represent a ProductProperty
 * </summary>
 */
class Model_ProductProperty
{		   
	#region PRESERVE ExtraMethods For ProductProperty
	#endregion
    #region Contants	
    const ACT_ADD							= 10;
    const ACT_UPDATE						= 11;
    const ACT_DELETE						= 12;
    const ACT_CHANGE_PAGE					= 13;
    const ACT_SHOW_EDIT                     = 14;
    const ACT_GET                           = 15;
    const NUM_PER_PAGE                      = 15; 
    
    const TBL_SL_PRODUCT_PROPERTY			            = 'sl_product_property';

	const SQL_INSERT_SL_PRODUCT_PROPERTY		= 'INSERT INTO `{0}`
		(
			ProductID,
			PropertyID,
			`PropertyValue`,
			`Order`
        )
        VALUES (
			\'{1}\', \'{2}\', \'{3}\', \'{4}\'
        );';
        
	const SQL_UPDATE_SL_PRODUCT_PROPERTY		= 'UPDATE `{0}`
		SET  
			`ProductID` = \'{1}\',
			`PropertyID` = \'{2}\',
			`PropertyValue` = \'{3}\',
			`Order` = \'{4}\'
		WHERE `PropertyID` = \'{2}\'  ';
		   

    const SQL_CREATE_TABLE_SL_PRODUCT_PROPERTY		= 'CREATE TABLE `{0}` (

			`ProductID` ,
			`PropertyID` ,
			`PropertyValue` varchar(255),
			`Order` ,
			PRIMARY KEY(ProductID,PropertyID)
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
	public function  Model_ProductProperty($objConnection)
	{
		$this->_objConnection = $objConnection;
		
	}
    #region
    
    #region Public Functions
    
    public function insert($productID, $propertyID, $propertyvalue,$order)
	{
		$strTableName = self::TBL_SL_PRODUCT_PROPERTY;
		
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_PRODUCT_PROPERTY,
				array(self::TBL_SL_PRODUCT_PROPERTY,$productID,$propertyID,
						global_common::escape_mysql_string($propertyvalue),
						global_common::escape_mysql_string($order)
                ));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_PRODUCT_PROPERTY,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_product_property:'.$strSQL,1);
			return false;
		}	
		return $intID;
		
	}
    
    public function update($productid,$propertyid,$propertyvalue,$order)
	{
		$strTableName = self::TBL_SL_PRODUCT_PROPERTY;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_PRODUCT_PROPERTY,
				array($strTableName,
						global_common::escape_mysql_string($productid),
						global_common::escape_mysql_string($propertyid),
						global_common::escape_mysql_string($propertyvalue),
						global_common::escape_mysql_string($order)
                ));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_PRODUCT_PROPERTY,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_product_property:'.$strSQL,1);
			return false;
		}	
		return $intNewID;		
	}
    
    public function getProductPropertyByID($objID,$selectField='*') 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_PRODUCT_PROPERTY ,							
					'WHERE ProductID = \''.$objID.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_product_property ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult[0];
	}
    
    public function getAllProductProperty($intPage = 0,$selectField='*',$whereClause='',$orderBy='') 
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
				array($selectField, Model_ProductProperty::TBL_SL_PRODUCT_PROPERTY ,							
					$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
        }
        else
        {
            $strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, Model_ProductProperty::TBL_SL_PRODUCT_PROPERTY ,							
					$whereClause.$orderBy ));
        }
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get All sl_product_property:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult;
	}
    
    public function getListProductProperty($intPage,$orderBy='ProductID', $whereClause)
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
					self::TBL_SL_PRODUCT_PROPERTY,$orderBy.' '.$whereClause.' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		//echo 'sql:'.$strSQL;	
		$arrResult = $this->_objConnection->selectCommand($strSQL);
		//print_r($arrResult);
		$strHTML = '<table class="tbl-list">
                    <thead>
						<td>ProductID</td>
						<td>PropertyID</td>
						<td>PropertyValue</td>
						<td>Order</td>
                    </thead>
                    <tbody>';
		$icount = count($arrmenu);
		for($i=0;$i<$icount;$i++)
		{
			$strHTML.='<tr class="'.($i%2==0?'even':'odd').'">
						<td>'.$arrResult[$i]['ProductID'].'</td>
						<td>'.$arrResult[$i]['PropertyID'].'</td>
						<td>'.$arrResult[$i]['PropertyValue'].'</td>
						<td class="lastCell">'.$arrResult[$i]['Order'].'</td>
					  </tr>';
		}
		$strHTML.='</tbody></table>';
		
		$strHTML .= "<div>".global_common::getPagingHTMLByNum($intPage,self::NUM_PER_PAGE,global_common::getTotalRecord(self::TBL_SL_PRODUCT_PROPERTY,$this->_objConnection),
				"_objMenu.changePage")."</div>";
		return $strHTML;
	}
    
    #endregion   
}
?>