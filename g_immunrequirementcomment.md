# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_immunrequirementcomment ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **immunrequirementcommentid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **immunrequirementid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **comment** | varchar(150) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | immunrequirementcommentid | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_immunrequirementcomment\_g\_immunrequirement** | 1    | 1      | 1      | immunrequirementid | 1   |             | A         | 1    | 1       |
| **fk\_g\_immunrequirementcomment\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data