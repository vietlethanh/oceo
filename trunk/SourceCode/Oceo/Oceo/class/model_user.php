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
 * Implementations of slusers represent a User
 * </summary>
 */
class Model_User
{		   
	#region PRESERVE ExtraMethods For User
	#endregion
	#region Contants	
	const ACT_ADD							= 10;
	const ACT_UPDATE						= 11;
	const ACT_DELETE						= 12;
	const ACT_CHANGE_PAGE					= 13;
	const ACT_SHOW_EDIT                     = 14;
	const ACT_GET                           = 15;
	const ACT_LOGIN							= 16;
	const ACT_LOGOUT						= 17;
	const ACT_CHANGE_PASS					= 18;
	const ACT_REGISTER						= 19;
	const ACT_UPDATE_PROFILE				= 20;
	const ACT_RESET_PASS					= 21;
	const ACT_UPDATE_RESET_PASS				= 22;
	const ACT_CONTACT_US					= 23;
	
	const NUM_PER_PAGE                      = 15;
	
	const TBL_SL_USER			            = 'sl_user';
	
	const SQL_INSERT_SL_USER		= 'INSERT INTO `{0}`
		(
		UserID,
		UserName,
		Password,
		Fullname,
		BirthDate,
		Address,
		Phone,
		Email,
		Sex,
		Identity,
		RoleID,
		UserRankID,
		Avatar,
		AccountID,
		IsActived,
		CreatedDate
		)
		VALUES (
		\'{1}\', \'{2}\', \'{3}\', \'{4}\', \'{5}\', \'{6}\', \'{7}\', \'{8}\', \'{9}\', \'{10}\', \'{11}\', \'{12}\', \'{13}\', \'{14}\', \'{15}\', \'{16}\'
		);';
	
	const SQL_UPDATE_SL_USER		= 'UPDATE `{0}`
		SET  
		-- `UserID` = \'{1}\',
		`UserName` = \'{2}\',
		-- `Password` = \'{3}\',
		`Fullname` = \'{4}\',
		`BirthDate` = \'{5}\',
		`Address` = \'{6}\',
		`Phone` = \'{7}\',
		`Email` = \'{8}\',
		`Sex` = \'{9}\',
		`Identity` = \'{10}\',
		`RoleID` = \'{11}\',
		`UserRankID` = \'{12}\',
		`Avatar` = \'{13}\',
		`AccountID` = \'{14}\',
		`IsActived` = \'{15}\',
		`CityID` = \'{16}\'
		WHERE `UserID` = \'{1}\'  ';
	
	
	const SQL_CREATE_TABLE_SL_USER		= 'CREATE TABLE `{0}` (
		
		`UserID` varchar(20),
		`UserName` varchar(50),
		`Password` varchar(255),
		`Fullname` varchar(255),
		`BirthDate` ,
		`Address` varchar(255),
		`Phone` varchar(20),
		`Email` varchar(255),
		`Sex` ,
		`Identity` varchar(20),
		`RoleID` varchar(20),
		`UserRankID` varchar(20),
		`Avatar` varchar(255),
		`AccountID` varchar(255),
		`IsActived` ,
		PRIMARY KEY(UserID)
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
	public function  Model_User($objConnection)
	{
		$this->_objConnection = $objConnection;
		
	}
	#region
	
	#region Public Functions
	
	public function register($userName,$password,$fullname,$birthDate,$email,$sex)
	{
		return $this->insert($userName,$password,$fullname,$birthDate,null,null,$email,$sex,null,null,null,null,null,null);
	}
	
	public function login($userName,$password)
	{
		$userInfo = $this->getUserByName($userName);
		
		$userID = $userInfo[global_mapping::UserID];
		$sysPassword = $userInfo[global_mapping::Password];
		$userpassword = md5($userID.md5($password));
		//echo $userpassword;
		if($userpassword == $sysPassword){
			if(!$userInfo[global_mapping::Avatar])
			{
				if($userInfo[global_mapping::Sex])
				{
					$userInfo[global_mapping::Avatar]= global_common::DEFAUTL_MALE_AVATAR;
				}
				else
				{
					$userInfo[global_mapping::Avatar]= global_common::DEFAUTL_FEMALE_AVATAR;
				}
			}
			return $userInfo;
		}
		return null;
	}
	
	public function insert( $username,$password,$fullname,$birthdate,$address,$phone,$email,$sex,$identity,$roleid,$userrankid,$avatar,$accountid,$isactived)
	{
		$strTableName = self::TBL_SL_USER;
		$intID = global_common::getMaxValueofField($this->_objConnection,global_mapping::UserID, $strTableName) + 1;
		//echo $intID;
		$password = md5($intID.md5($password));
		
		$strSQL = global_common::prepareQuery(self::SQL_INSERT_SL_USER,
				array(self::TBL_SL_USER,$intID,
					global_common::escape_mysql_string($username),
					global_common::escape_mysql_string($password),
					global_common::escape_mysql_string($fullname),
					global_common::formatDateTimeSQL($birthdate),
					global_common::escape_mysql_string($address),
					global_common::escape_mysql_string($phone),
					global_common::escape_mysql_string($email),
					global_common::escape_mysql_string($sex),
					global_common::escape_mysql_string($identity),
					global_common::escape_mysql_string($roleid),
					global_common::escape_mysql_string($userrankid),
					global_common::escape_mysql_string($avatar),
					global_common::escape_mysql_string($accountid),
					global_common::escape_mysql_string($isactived),
					global_common::nowSQL()
					));
		
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_USER,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_user:'.$strSQL,1);
			return false;
		}	
		return $this->getUserByName($username);
		
	}
	
	public function update($userid,$username,$password,$fullname,$birthdate,$address,$phone,$email,
		$sex,$identity,$roleid,$userrankid,$avatar,$accountid,$isactived,$city)
	{
		
		$strTableName = self::TBL_SL_USER;
		$strSQL = global_common::prepareQuery(self::SQL_UPDATE_SL_USER,
				array($strTableName,global_common::escape_mysql_string($userid),
					global_common::escape_mysql_string($username),
					global_common::escape_mysql_string($password),
					global_common::escape_mysql_string($fullname),
					global_common::formatDateTimeSQL($birthdate),
					global_common::escape_mysql_string($address),
					global_common::escape_mysql_string($phone),
					global_common::escape_mysql_string($email),
					global_common::escape_mysql_string($sex),
					global_common::escape_mysql_string($identity),
					global_common::escape_mysql_string($roleid),
					global_common::escape_mysql_string($userrankid),
					global_common::escape_mysql_string($avatar),
					global_common::escape_mysql_string($accountid),
					global_common::escape_mysql_string($isactived),$city ));
		//echo $strSQL;
		if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_USER,$this->_objConnection,$strTableName))
		{
			//echo $strSQL;
			global_common::writeLog('Error add sl_user:'.$strSQL,1);
			return false;
		}	
		return true;		
	}
	
	function changePassword($userID, $oldPassword, $newPassword)
	{
		$userInfo = $this->getUserByID($userID);
		$sysPassword = $userInfo[global_mapping::Password];
		$oldPassword = md5($userID.md5($oldPassword));
		if($oldPassword == $sysPassword){
			$newPassword = md5($userID.md5($newPassword));
			$sqlUpdate = '`Password` = \''.global_common::escape_mysql_string($newPassword).'\'';
			$condition = '`UserID` = \''.$userID.'\'';
			$strTableName = self::TBL_SL_USER;
			$strSQL = global_common::prepareQuery(global_common::SQL_UPDATE_BY_CONDITION,
					array($strTableName, $sqlUpdate,$condition));
			//echo $strSQL;
			if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_USER,$this->_objConnection,$strTableName))
			{
				//echo $strSQL;
				global_common::writeLog('Error add changePassword:'.$strSQL,1);
				return -1;
			}	
			return 1;
		}
		return 0;
	}
	
	function changeResetPassword($userID, $newPassword)
	{
		$userInfo = $this->getUserByID($userID);
		
		if($userInfo){
			$newPassword = md5($userID.md5($newPassword));
			$sqlUpdate = '`Password` = \''.global_common::escape_mysql_string($newPassword).'\'';
			$condition = '`UserID` = \''.$userID.'\'';
			$strTableName = self::TBL_SL_USER;
			$strSQL = global_common::prepareQuery(global_common::SQL_UPDATE_BY_CONDITION,
					array($strTableName, $sqlUpdate,$condition));
			//echo $strSQL;
			if (!global_common::ExecutequeryWithCheckExistedTable($strSQL,self::SQL_CREATE_TABLE_SL_USER,$this->_objConnection,$strTableName))
			{
				//echo $strSQL;
				global_common::writeLog('Error add changeResetPassword:'.$strSQL,1);
				return -1;
			}	
			return 1;
		}
		return 0;
	}
	
	public function getUserByID($objID,$selectField='*') 
	{		
		$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_USER ,							
					'WHERE UserID = \''.$objID.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get sl_user ByID:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		$objCity = new Model_City($this->_objConnection);
		
		$city = $objCity->getCityByID($arrResult[0][global_mapping::CityID]);
		$arrResult[0][global_mapping::CityName] = $city[global_mapping::CityName];
		//print_r($arrResult);
		
		if(!$arrResult[0][global_mapping::Avatar])
		{
			if($arrResult[0][global_mapping::Sex])
			{
				$arrResult[0][global_mapping::Avatar]= global_common::DEFAUTL_MALE_AVATAR;
			}
			else
			{
				$arrResult[0][global_mapping::Avatar]= global_common::DEFAUTL_FEMALE_AVATAR;
			}
		}
		return $arrResult[0];
	}
	
	public function getUserByName($userName,$selectField='*') 
	{		
		$strSQL = global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
				array($selectField, self::TBL_SL_USER ,							
					'WHERE UserName = \''.$userName.'\' '));
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);
		if(!$arrResult)
		{
			global_common::writeLog('get sl_user ByName:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		
		//$objCity = new Model_City($this->_objConnection);
		
		//$city = $objCity->getCityByID($arrResult[0][global_mapping::CityID]);
		//$arrResult[0][global_mapping::CityName] = $city[global_mapping::CityName];
		return $arrResult[0];
	}
	
	public function getUserByField($fieldName,$fieldValue, $condition = "",$selectField='*') 
	{		
		if(!$selectField)
		{
			$selectField = '*';
		}
		if($condition)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_USER ,							
						'WHERE '.$fieldName.' = \''.$fieldValue.'\' and '.$condition));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, self::TBL_SL_USER ,							
						'WHERE '.$fieldName.' = \''.$fieldValue.'\' '));
		}
		//echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			//global_common::writeLog('get sl_user ByName:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
		//print_r($arrResult);
		return $arrResult;
	}
	
	public function checkExistUserName($userName) 
	{		
		$obj = $this->getUserByName($userName);
		if($obj){
			return true;	
		}
		return false;
	}
	
	public function checkExistEmail($email,$userID) 
	{	
		$condition = '';	
		if($userID)
		{
			$condition = global_mapping::UserID . '!='.$userID;
		}
		$obj = $this->getUserByField(global_mapping::Email,$email,$condition);
		if($obj[0]){
			return true;	
		}
		return false;
	}
	
	public function getAllUser($intPage = 0,$selectField='*',$whereClause='',$orderBy='',&$total) 
	{		
		if($whereClause)
		{
			$whereClause = ' WHERE '.$whereClause;
		}
		if(!$selectField)
		{
			$selectField = '*';
		}
		
		if($orderBy)
		{
			$orderBy = ' ORDER BY '.$orderBy;
		}
		if($intPage>0)
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_User::TBL_SL_USER ,							
						$whereClause.$orderBy .' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
      
     	    $strSQLCount .=  global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array('count(*)', Model_User::TBL_SL_USER ,							
						$whereClause.$orderBy ));
		}
		else
		{
			$strSQL .= global_common::prepareQuery(global_common::SQL_SELECT_FREE, 
					array($selectField, Model_User::TBL_SL_USER ,							
						$whereClause.$orderBy ));
		}
	//	echo '<br>SQL:'.$strSQL;
		$arrResult =$this->_objConnection->selectCommand($strSQL);		
		if(!$arrResult)
		{
			global_common::writeLog('get All sl_user:'.$strSQL,1,$_mainFrame->pPage);
			return null;
		}
 	      if($strSQLCount)
		{
			//echo '<br>$strSQLCount:'.$strSQLCount;
			$arrTotal =$this->_objConnection->selectCommand($strSQLCount);		
			$total = $arrTotal[0][0];
		}
		//print_r($arrResult);
		return $arrResult;
	}
	
	public function getListUser($intPage,$orderBy='UserID', $whereClause)
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
					self::TBL_SL_USER,$orderBy.' '.$whereClause.' limit '.(($intPage-1)* self::NUM_PER_PAGE).','.self::NUM_PER_PAGE));
		//echo 'sql:'.$strSQL;	
		$arrResult = $this->_objConnection->selectCommand($strSQL);
		//print_r($arrResult);
		$strHTML = '<table class="tbl-list">
				<thead>
				<td>UserID</td>
				<td>UserName</td>
				<td>Password</td>
				<td>Fullname</td>
				<td>BirthDate</td>
				<td>Address</td>
				<td>Phone</td>
				<td>Email</td>
				<td>Sex</td>
				<td>Identity</td>
				<td>RoleID</td>
				<td>UserRankID</td>
				<td>Avatar</td>
				<td>AccountID</td>
				<td>IsActived</td>
				</thead>
				<tbody>';
		$icount = count($arrmenu);
		for($i=0;$i<$icount;$i++)
		{
			$strHTML.='<tr class="'.($i%2==0?'even':'odd').'">
					<td>'.$arrResult[$i]['UserID'].'</td>
					<td>'.$arrResult[$i]['UserName'].'</td>
					<td>'.$arrResult[$i]['Password'].'</td>
					<td>'.$arrResult[$i]['Fullname'].'</td>
					<td>'.$arrResult[$i]['BirthDate'].'</td>
					<td>'.$arrResult[$i]['Address'].'</td>
					<td>'.$arrResult[$i]['Phone'].'</td>
					<td>'.$arrResult[$i]['Email'].'</td>
					<td>'.$arrResult[$i]['Sex'].'</td>
					<td>'.$arrResult[$i]['Identity'].'</td>
					<td>'.$arrResult[$i]['RoleID'].'</td>
					<td>'.$arrResult[$i]['UserRankID'].'</td>
					<td>'.$arrResult[$i]['Avatar'].'</td>
					<td>'.$arrResult[$i]['AccountID'].'</td>
					<td class="lastCell"><input type="checkbox" onclick="_objUser.showHide(\''.$arrResult[$i]['UserID'].'\',\''.$arrResult[$i]['name'].'\',this)" '.($arrResult[$i]['IsDeleted']?'':'checked=checked').' /></td>
					</tr>';
		}
		$strHTML.='</tbody></table>';
		
		$strHTML .= "<div>".global_common::getPagingHTMLByNum($intPage,self::NUM_PER_PAGE,global_common::getTotalRecord(self::TBL_SL_USER,$this->_objConnection),
				"_objMenu.changePage")."</div>";
		return $strHTML;
	}
	
	#endregion   
}
?>
