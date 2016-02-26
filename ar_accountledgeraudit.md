# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_accountledgeraudit ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountledgerauditid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **accountledgerrelid** | int(11) | NO   | MUL |         |       |         |
| **accountledgerid** | int(11) | NO   | MUL |         |       |         |
| **postedbyid** | int(11) | NO   | MUL |         |       |         |
| **postdate** | datetime | NO   |     |         |       |         |
| **chargecreditdescid** | int(11) | NO   | MUL |         |       |         |
| **comment** | varchar(50) | NO   |     |         |       |         |
| **amount** | decimal(18,2) | NO   |     |         |       |         |
| **voidstatusid** | int(11) | NO   |     |         |       |         |
| **changedate** | datetime | NO   |     |         |       |         |
| **changebyid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountledgerauditid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_accountledgerid** | 1    | 1      | 1      | accountledgerid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_accountledgerrelid** | 1    | 1      | 1      | accountledgerrelid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountledgeraudit\_ar\_chargecreditdesc** | 1    | 1      | 1      | chargecreditdescid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountledgeraudit\_g\_kiddiecareuser1** | 1    | 1      | 1      | postedbyid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountledgeraudit\_g\_kiddiecareuser2** | 1    | 1      | 1      | changebyid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data