INSERT INTO sl_advertising
	(`AdvertisingID`,
  `AdvertisingName`,
  `PartnerID`,
  `StartDate`,
  `EndDate`,
  `AdTypeID`,
  `ArticleTypeID`,
  `Content`,
  `ImageLink`,
  `PreferLink`,
  `Order`,
  `CreatedBy`,
  `CreatedDate`,
  `ModifiedBy`,
  `ModifiedDate`,
  `DeletedBy`,
  `DeletedDate`,
  `IsDeleted`,
  `Status`)  
  
  SELECT  ( AdvertisingID + (SELECT MAX(AdvertisingID) FROM sl_advertising)) AS AdvertisingID,
  
  `AdvertisingName`,
  `PartnerID`,
  `StartDate`,
  `EndDate`,
   FLOOR(1+ RAND()*(3)),
  FLOOR(1+ RAND()*(6)),
  `Content`,
  `ImageLink`,
  `PreferLink`,
  `Order`,
  `CreatedBy`,
  `CreatedDate`,
  `ModifiedBy`,
  `ModifiedDate`,
  `DeletedBy`,
  `DeletedDate`,
  `IsDeleted`,
  `Status`
  FROM sl_advertising 

  
UPDATE sl_advertising SET ArticleTypeID =  FLOOR(1+ RAND()*(6)) , AdTypeID= FLOOR(1+ RAND()*(3))WHERE AdTypeID != 1

select
  `AdvertisingID`,
  `AdvertisingName`,
  `PartnerID`,
  `StartDate`,
  `EndDate`,
  `AdTypeID`,
  `ArticleTypeID`,
  `Content`,
  `ImageLink`,
  `PreferLink`,
  `Order`,
  `CreatedBy`,
  `CreatedDate`,
  `ModifiedBy`,
  `ModifiedDate`,
  `DeletedBy`,
  `DeletedDate`,
  `IsDeleted`,
  `Status`
FROM `timkm`.`sl_advertising`
LIMIT 0, 1000;