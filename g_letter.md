# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_letter ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **letterid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **trackingextid** | int(11) | NO   | MUL |         |       |         |
| **lettername** | varchar(50) | NO   |     |         |       |         |
| **letterdata** | longblob | NO   |     |         |       |         |
| **description** | varchar(250) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | letterid | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_letter\_g\_typestable** | 1    | 1      | 1      | trackingextid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data