# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_reportdata2 ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **reportid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   |     |         |       |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **keyid1** | int(11) | NO   | MUL |         |       |         |
| **keyid2** | int(11) | NO   | MUL |         |       |         |
| **a1**    | varchar(256) | NO   |     |         |       |         |
| **b1**    | varchar(256) | NO   |     |         |       |         |
| **c1**    | varchar(256) | NO   |     |         |       |         |
| **d1**    | varchar(256) | NO   |     |         |       |         |
| **e1**    | varchar(256) | NO   |     |         |       |         |
| **f1**    | varchar(256) | NO   |     |         |       |         |
| **g1**    | varchar(256) | NO   |     |         |       |         |
| **dateval** | datetime | NO   |     |         |       |         |
| **decimalval** | decimal(18,2) | NO   |     |         |       |         |
| **stringval** | varchar(256) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **ix\_reportdata\_keyid1** | 1    | 1      | 1      | keyid1 | 1   |             | A         | 1    | 1       |
| **ix\_reportdata2\_accountid** | 1    | 1      | 1      | accountid | 1   |             | A         | 1    | 1       |
| **ix\_reportdata2\_childschoolid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **ix\_reportdata2\_keyid2** | 1    | 1      | 1      | keyid2 | 1   |             | A         | 1    | 1       |
| **ix\_reportdata2\_personid** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **ix\_reportdata2\_reportid** | 1    | 1      | 1      | reportid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data