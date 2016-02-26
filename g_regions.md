# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_regions ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **regionid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **code**  | varchar(4) | NO   | UNI |         |       |         |
| **director** | varchar(50) | NO   |     |         |       |         |
| **emailaddress** | varchar(50) | NO   |     |         |       |         |
| **regionname** | varchar(50) | NO   |     |         |       |         |
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


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | regionid | 1   | 2           | A         | 0    | 0       |
| **ix\_g\_regions\_uniquecode** | 0    | 0      | 0      | code   | 1   | 2           | A         | 0    | 0       |


### Default Data ###
| regionid | code | director | emailaddress | regionname | address1 | address2 | city | region | postalcode | areacode1 | phonenumber1 | areacode2 | phonenumber2 | areacodefax | faxnumber | sortorder |
|:---------|:-----|:---------|:-------------|:-----------|:---------|:---------|:-----|:-------|:-----------|:----------|:-------------|:----------|:-------------|:------------|:----------|:----------|
| -1       | Sys  | Sys      |              | Sys        |          |          |      |        |            |           |              |           |              |             |           | 0         |
| 1        | [R1](https://code.google.com/p/kiddiecare/source/detail?r=1) | My Regional Director |              | My Region  |          |          |      |        |            |           |              |           |              |             |           | 0         |