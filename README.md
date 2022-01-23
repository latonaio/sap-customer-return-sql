# sap-customer-return-sql

sap-customer-return-sql は、主にエッジアプリケーションにおいて、SAPと連携された得意先返品データを保存するSQLテーブルを作成するためのレポジトリです。  
sap-customer-return-sql は、そのままクラウド環境におけるアプリケーションにも、適用可能です。  

## 前提条件  
sap-customer-return-sql は、SQL の SAP とのデータ連携にあたり、オンプレミス版である（＝クラウド版ではない）SAPS4HANA API の利用を前提としています。クラウド版APIを利用する場合は、ご注意ください。  
https://api.sap.com/api/OP_API_CUSTOMER_RETURN_SRV_0001/overview  
本レポジトリ の sql設定ファイルの内容は、上記URL の API 仕様を前提としています。  

## sqlの設定ファイル

sap-customer-return-sql には、sqlの設定ファイルとして以下のsqlファイルが含まれています。  

* sap-customer-return-sql-header-data.sql（SAP 得意先返品 - ヘッダ）
* sap-customer-return-sql-header-partner-data.sql（SAP 得意先返品 - ヘッダ得意先）
* sap-customer-return-sql-item-data.sql（SAP 得意先返品 - 明細）
* sap-customer-return-sql-item-pricing-element-data.sql（SAP 得意先返品 - 明細価格条件）
* sap-customer-return-sql-item-process-step-data.sql（SAP 得意先返品 - 明細プロセスステップ）
* sap-customer-return-sql-item-schedule-line-data.sql（SAP 得意先返品 - 明細納入日程行）


## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法

MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。