CREATE TABLE `sap_customer_return_item_process_step_data`
(
  `RetsMgmtProcess`                varchar(10) NOT NULL,
  `RetsMgmtProcessItem`            varchar(6) NOT NULL,
  `RetsMgmtProcItmQtySplit`        varchar(3) NOT NULL,
  `RetsMgmtProcessStep`            varchar(4) NOT NULL,
  `ReturnsDocumentType`            varchar(2) DEFAULT NULL,
  `ReturnsDocument`                varchar(30) DEFAULT NULL,
  `ReturnsDocumentItem`            varchar(10) DEFAULT NULL,
  `ReturnsDocumentStatus`          varchar(1) DEFAULT NULL,
  `ReturnsDocumentApprovalStatus`  varchar(1) DEFAULT NULL,
  `ReturnsReferenceDocumentType`   varchar(2) DEFAULT NULL,
  `ReturnsReferenceDocument`       varchar(30) DEFAULT NULL,
  `ReturnsReferenceDocumentItem`   varchar(10) DEFAULT NULL,
  `RetsMgmtProcStepExecStatus`     varchar(1) DEFAULT NULL,
    PRIMARY KEY (`RetsMgmtProcess`, `RetsMgmtProcessItem`, `RetsMgmtProcItmQtySplit`, `RetsMgmtProcessStep`),
    CONSTRAINT `SAPCustomerReturnItemProcessStepData_fk` FOREIGN KEY (`CustomerReturn`) REFERENCES `sap_customer_return_header_data` (`CustomerReturn`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
