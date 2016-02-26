# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_personphonenumber ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **phoneid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **phonenumbertid** | int(11) | NO   | MUL |         |       |         |
| **areacode** | varchar(10) | NO   |     |         |       |         |
| **phone** | varchar(50) | NO   |     |         |       |         |
| **comment** | varchar(30) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | phoneid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_personphonenumber\_personid** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **fk\_g\_personphonenumber\_g\_typestable** | 1    | 1      | 1      | phonenumbertid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data