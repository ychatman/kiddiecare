# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_immunrequirementdata ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **immunrequirementdataid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **immunrequirementid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **eventtype** | int(11) | NO   |     |         |       |         |
| **eventdate** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | immunrequirementdataid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_immunrequirementdata** | 1    | 1      | 1      | immunrequirementid | 1   |             | A         | 1    | 1       |
| **fk\_g\_immunrequirementdata\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data