# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_userdefinedfield ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **userdefinedfieldid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **userdefinedextid** | int(11) | NO   | MUL | 0       |       |         |
| **description** | varchar(30) | NO   |     |         |       |         |
| **dataclass** | varchar(3) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     | 0       |       |         |
| **tooltip** | varchar(150) | NO   |     |         |       |         |
| **active** | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | userdefinedfieldid | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_userdefinedfield\_g\_typestable** | 1    | 1      | 1      | userdefinedextid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data