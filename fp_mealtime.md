# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_mealtime ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **mealtimeid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **mealabbreviationid** | int(11) | NO   | MUL |         |       |         |
| **starttime** | int(11) | NO   |     |         |       |         |
| **stoptime** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | mealtimeid | 1   | 0           | A         | 0    | 0       |
| **ix\_fp\_mealtime** | 0    | 0      | 0      | workareaid | 1   |             | A         | 0    | 0       |
| **ix\_fp\_mealtime** | 0    | 0      | 0      | mealabbreviationid | 2   | 0           | A         | 0    | 0       |
| **fk\_fp\_mealtime\_fp\_mealabbreviation** | 1    | 1      | 1      | mealabbreviationid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data