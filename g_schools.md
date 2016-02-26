# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_schools ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **schoolid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **regionid** | int(11) | NO   | MUL |         |       |         |
| **code**  | varchar(4) | NO   | UNI |         |       |         |
| **director** | varchar(50) | NO   |     |         |       |         |
| **emailaddress** | varchar(50) | NO   |     |         |       |         |
| **schoolname** | varchar(50) | NO   |     |         |       |         |
| **address1** | varchar(50) | NO   |     |         |       |         |
| **address2** | varchar(50) | NO   |     |         |       |         |
| **city**  | varchar(25) | NO   |     |         |       |         |
| **region** | varchar(20) | NO   |     |         |       |         |
| **postalcode** | varchar(15) | NO   |     |         |       |         |
| **areacode1** | varchar(10) | NO   |     |         |       |         |
| **phonenumber1** | varchar(30) | NO   |     |         |       |         |
| **areacode2** | varchar(10) | NO   |     |         |       |         |
| **phonenumber2** | varchar(30) | NO   |     |         |       |         |
| **areacodefax** | varchar(10) | NO   |     |         |       |         |
| **faxnumber** | varchar(30) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **tokensettings** | varbinary(1024) | YES  |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | schoolid | 1   | 2           | A         | 0    | 0       |
| **ix\_g\_schools\_uniquecode** | 0    | 0      | 0      | code   | 1   | 2           | A         | 0    | 0       |
| **ix\_g\_schools\_regionid** | 1    | 1      | 1      | regionid | 1   |             | A         | 1    | 1       |


### Default Data ###
| schoolid | regionid | code | director | emailaddress | schoolname | address1 | address2 | city | region | postalcode | areacode1 | phonenumber1 | areacode2 | phonenumber2 | areacodefax | faxnumber | sortorder | tokensettings |
|:---------|:---------|:-----|:---------|:-------------|:-----------|:---------|:---------|:-----|:-------|:-----------|:----------|:-------------|:----------|:-------------|:------------|:----------|:----------|:--------------|
| -1       | -1       | Sys  | Sys      |              | Sys        |          |          |      |        |            |           |              |           |              |             |           | 0         |               |
| 1        | 1        | S1   | My School Director |              | My School  |          |          |      |        |            |           |              |           |              |             |           | 0         |               |