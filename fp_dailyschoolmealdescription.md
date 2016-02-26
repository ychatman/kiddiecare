# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_dailyschoolmealdescription ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **dailyschoolmealdescriptionid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **dailyschoolmealid** | int(11) | NO   | MUL |         |       |         |
| **mealabbreviationid** | int(11) | NO   | MUL |         |       |         |
| **mealdescription** | varchar(200) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | dailyschoolmealdescriptionid | 1   | 0           | A         | 0    | 0       |
| **ix\_dailyschoolmealid\_mealabbreviationid** | 0    | 0      | 0      | dailyschoolmealid | 1   |             | A         | 0    | 0       |
| **ix\_dailyschoolmealid\_mealabbreviationid** | 0    | 0      | 0      | mealabbreviationid | 2   | 0           | A         | 0    | 0       |
| **fk\_fp\_dailyschoolmealdescription\_fp\_mealabbreviation** | 1    | 1      | 1      | mealabbreviationid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data