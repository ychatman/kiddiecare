# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_accountledger ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountledgerid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **accountledgerrelid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **postdate** | datetime | NO   | MUL |         |       |         |
| **chargecreditdescid** | int(11) | NO   | MUL |         |       |         |
| **comment** | varchar(50) | NO   |     |         |       |         |
| **amount** | decimal(18,2) | NO   |     |         |       |         |
| **creationdate** | datetime | NO   |     |         |       |         |
| **voidstatusid** | int(11) | NO   | MUL |         |       |         |
| **accountvoidid** | int(11) | NO   | MUL |         |       |         |
| **depositreportid** | int(11) | NO   | MUL | -1      |       |         |
| **transactionreportid** | int(11) | NO   | MUL | -1      |       |         |
| **automaticbillingbatchid** | int(11) | NO   | MUL | -1      |       |         |
| **islocked** | tinyint(1) | NO   |     |         |       |         |
| **ledgerlocktid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountledgerid | 1   | 0           | A         | 0    | 0       |
| __dta\_index\_ar\_accountledger\_26\_1652252991_**k2\_k1\_k5\_k9\_7\_4864**_| 1    | 1      | 1      | accountledgerrelid | 1   |             | A         | 1    | 1       |
| __dta\_index\_ar\_accountledger\_26\_1652252991_**k2\_k1\_k5\_k9\_7\_4864**_| 1    | 1      | 1      | accountledgerid | 2   |             | A         | 1    | 1       |
| __dta\_index\_ar\_accountledger\_26\_1652252991_**k2\_k1\_k5\_k9\_7\_4864**_| 1    | 1      | 1      | chargecreditdescid | 3   |             | A         | 1    | 1       |
| __dta\_index\_ar\_accountledger\_26\_1652252991_**k2\_k1\_k5\_k9\_7\_4864**_| 1    | 1      | 1      | voidstatusid | 4   |             | A         | 1    | 1       |
| **ix\_accountledger\_voidandpostdate** | 1    | 1      | 1      | voidstatusid | 1   |             | A         | 1    | 1       |
| **ix\_accountledger\_voidandpostdate** | 1    | 1      | 1      | postdate | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerid\_accountledgerrelid\_chargecre** | 1    | 1      | 1      | accountledgerid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerid\_accountledgerrelid\_chargecre** | 1    | 1      | 1      | accountledgerrelid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerid\_accountledgerrelid\_chargecre** | 1    | 1      | 1      | chargecreditdescid | 3   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerid\_chargecreditdescid** | 1    | 1      | 1      | accountledgerid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerid\_chargecreditdescid** | 1    | 1      | 1      | chargecreditdescid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerrel\_chargecreditdesc\_voidstatus** | 1    | 1      | 1      | chargecreditdescid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerrel\_chargecreditdesc\_voidstatus** | 1    | 1      | 1      | accountledgerrelid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerrel\_chargecreditdesc\_voidstatus** | 1    | 1      | 1      | voidstatusid | 3   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_accountledgerrelid** | 1    | 1      | 1      | accountledgerrelid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_automaticbillingbatch\_chargecreditdesc** | 1    | 1      | 1      | automaticbillingbatchid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_automaticbillingbatch\_chargecreditdesc** | 1    | 1      | 1      | chargecreditdescid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport** | 1    | 1      | 1      | accountledgerid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport** | 1    | 1      | 1      | depositreportid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport** | 1    | 1      | 1      | accountvoidid | 3   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport2** | 1    | 1      | 1      | accountvoidid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport2** | 1    | 1      | 1      | accountledgerrelid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport2** | 1    | 1      | 1      | chargecreditdescid | 3   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport3** | 1    | 1      | 1      | depositreportid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport3** | 1    | 1      | 1      | accountvoidid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport3** | 1    | 1      | 1      | accountledgerrelid | 3   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport3** | 1    | 1      | 1      | chargecreditdescid | 4   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_depositreport3** | 1    | 1      | 1      | accountledgerid | 5   |             | A         | 1    | 1       |
| **ix\_ar\_accountledger\_postdate** | 1    | 1      | 1      | postdate | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountledger\_ar\_transactionreport** | 1    | 1      | 1      | transactionreportid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountledger\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountledger\_g\_typestable** | 1    | 1      | 1      | ledgerlocktid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data