# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_optionsregion ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **optionsregionid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **optionsdefaultid** | int(11) | NO   | MUL |         |       |         |
| **regionid** | int(11) | NO   | MUL |         |       |         |
| **value** | varchar(500) | NO   |     |         |       |         |
| **sys**   | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | optionsregionid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_optionsregion\_uniqueregionidoptionsdefault** | 0    | 0      | 0      | regionid | 1   |             | A         | 0    | 0       |
| **ix\_g\_optionsregion\_uniqueregionidoptionsdefault** | 0    | 0      | 0      | optionsdefaultid | 2   | 0           | A         | 0    | 0       |
| **ix\_g\_regionoptions\_regionid** | 1    | 1      | 1      | regionid | 1   |             | A         | 1    | 1       |
| **fk\_g\_optionsregion\_g\_optionsdefault** | 1    | 1      | 1      | optionsdefaultid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data