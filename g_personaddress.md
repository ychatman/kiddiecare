# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_personaddress ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **addressid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **address1** | varchar(50) | NO   |     |         |       |         |
| **address2** | varchar(50) | NO   |     |         |       |         |
| **city**  | varchar(25) | NO   |     |         |       |         |
| **region** | varchar(20) | NO   |     |         |       |         |
| **postalcode** | varchar(15) | NO   |     |         |       |         |
| **ismailing** | tinyint(1) | NO   |     |         |       |         |
| **isprimaryphysical** | tinyint(1) | NO   |     |         |       |         |
| **comment** | varchar(30) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | addressid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_personaddress\_personid** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data