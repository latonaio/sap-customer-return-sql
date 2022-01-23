CREATE TABLE `sap_customer_return_item_schedule_line_data`
(
  `CustomerReturn`                varchar(10) NOT NULL,
  `CustomerReturnItem`            varchar(6) NOT NULL,
  `ScheduleLine`                  varchar(4) NOT NULL,
  `OrderQuantityUnit`             varchar(3) DEFAULT NULL,
  `ConfdOrderQtyByMatlAvailCheck` varchar(15) DEFAULT NULL,
  `DeliveredQtyInOrderQtyUnit`    varchar(15) DEFAULT NULL,
  `OpenConfdDelivQtyInOrdQtyUnit` varchar(15) DEFAULT NULL,
  `DelivBlockReasonForSchedLine`  varchar(2) DEFAULT NULL,
    PRIMARY KEY (`CustomerReturn`, `CustomerReturnItem`, `ScheduleLine`),
    CONSTRAINT `SAPCustomerReturnItemScheduleLinesData_fk` FOREIGN KEY (`CustomerReturn`) REFERENCES `sap_customer_return_header_data` (`CustomerReturn`)
) ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4;
