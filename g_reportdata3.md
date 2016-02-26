# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_reportdata3 ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **reportid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   |     |         |       |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **keyid1** | int(11) | NO   | MUL |         |       |         |
| **keyid2** | int(11) | NO   | MUL |         |       |         |
| **trackingcategoryid** | int(11) | NO   | MUL |         |       |         |
| **trackingitemid** | int(11) | NO   | MUL |         |       |         |
| **ishidden** | tinyint(1) | NO   |     |         |       |         |
| **foodstatus** | varchar(256) | NO   |     |         |       |         |
| **accountkey** | varchar(256) | NO   |     |         |       |         |
| **age**   | varchar(256) | NO   |     |         |       |         |
| **stringval1** | varchar(256) | NO   |     |         |       |         |
| **stringval2** | varchar(256) | NO   |     |         |       |         |
| **stringval3** | varchar(256) | NO   |     |         |       |         |
| **stringval4** | varchar(256) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **ix\_g\_reportdata3\_accountid** | 1    | 1      | 1      | accountid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata3\_childschoolid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata3\_keyid1** | 1    | 1      | 1      | keyid1 | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata3\_keyid2** | 1    | 1      | 1      | keyid2 | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata3\_personid** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata3\_reportid** | 1    | 1      | 1      | reportid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata3\_tracking\_catid** | 1    | 1      | 1      | trackingcategoryid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata3\_tracking\_itmid** | 1    | 1      | 1      | trackingitemid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data