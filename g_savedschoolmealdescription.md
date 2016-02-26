# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_savedschoolmealdescription ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **savedschoolmealdescriptionid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **savedschoolmealid** | int(11) | NO   | MUL |         |       |         |
| **dayofweek** | varchar(1) | NO   |     |         |       |         |
| **mealabbreviationid** | int(11) | NO   | MUL |         |       |         |
| **mealdescription** | varchar(200) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | savedschoolmealdescriptionid | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_savedschoolmealdescription\_fp\_mealabbreviation** | 1    | 1      | 1      | mealabbreviationid | 1   |             | A         | 1    | 1       |
| **fk\_g\_savedschoolmealdescription\_g\_savedschoolmealname** | 1    | 1      | 1      | savedschoolmealid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data