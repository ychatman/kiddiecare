# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_dailyschoolmealdates ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **dailyschoolmealid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **servingdate** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | dailyschoolmealid | 1   | 0           | A         | 0    | 0       |
| **ix\_schoolid\_servingdate** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_schoolid\_servingdate** | 0    | 0      | 0      | servingdate | 2   | 0           | A         | 0    | 0       |


### Default Data ###
No Default Data