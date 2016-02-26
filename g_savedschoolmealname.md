# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_savedschoolmealname ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **savedschoolmealid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **mealname** | varchar(50) | NO   |     |         |       |         |
| **mealtype** | varchar(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | savedschoolmealid | 1   | 0           | A         | 0    | 0       |


### Default Data ###
No Default Data