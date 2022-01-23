CREATE TABLE `sap_customer_return_header_partner_data`
(
  `CustomerReturn`      varchar(10) NOT NULL,
  `PartnerFunction`     varchar(2) NOT NULL,
  `Customer`            varchar(10) DEFAULT NULL,
  `Supplier`            varchar(10) DEFAULT NULL,
    PRIMARY KEY (`CustomerReturn`, `PartnerFunction`),
    CONSTRAINT `SAPCustomerReturnHeaderPartnerData_fk` FOREIGN KEY (`CustomerReturn`) REFERENCES `sap_customer_return_header_data` (`CustomerReturn`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
