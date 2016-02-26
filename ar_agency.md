# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_agency ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **agencyid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **agencyname** | varchar(50) | NO   |     |         |       |         |
| **contactname** | varchar(50) | NO   |     |         |       |         |
| **emailaddress** | varchar(50) | NO   |     |         |       |         |
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
| **notes** | varchar(200) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | agencyid | 1   | 3           | A         | 0    | 0       |


### Default Data ###
| agencyid | agencyname | contactname | emailaddress | address1 | address2 | city | region | postalcode | areacode1 | phonenumber1 | areacode2 | phonenumber2 | areacodefax | faxnumber | sortorder | notes |
|:---------|:-----------|:------------|:-------------|:---------|:---------|:-----|:-------|:-----------|:----------|:-------------|:----------|:-------------|:------------|:----------|:----------|:------|
| -1       | Sys        |             |              |          |          |      |        |            |           |              |           |              |             |           | 0         |       |
| 56       | County     |             |              |          |          |      |        |            |           |              |           |              |             |           | 1         |       |
| 57       | State      |             |              |          |          |      |        |            |           |              |           |              |             |           | 2         |       |