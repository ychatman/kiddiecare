# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_receiptcategories ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **receiptcategoriesid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   |     |         |       |         |
| **chargecreditdescid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | receiptcategoriesid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_receiptcategories\_ar\_chargecreditdesc** | 1    | 1      | 1      | chargecreditdescid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data