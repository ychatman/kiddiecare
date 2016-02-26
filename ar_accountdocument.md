# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_accountdocument ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountdocumentid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **dateadded** | datetime | NO   |     |         |       |         |
| **documentdescription** | varchar(50) | NO   |     |         |       |         |
| **accountdocument** | longblob | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountdocumentid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_accountdocument\_ar\_account** | 1    | 1      | 1      | accountid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountdocument\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data