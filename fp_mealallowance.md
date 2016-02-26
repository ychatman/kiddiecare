# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_mealallowance ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **mealallowanceid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | UNI |         |       |         |
| **mainmax** | int(11) | NO   |     |         |       |         |
| **totalmax** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | mealallowanceid | 1   | 1           | A         | 0    | 0       |
| **ix\_fp\_mealallowance** | 0    | 0      | 0      | schoolid | 1   | 1           | A         | 0    | 0       |


### Default Data ###
| mealallowanceid | schoolid | mainmax | totalmax |
|:----------------|:---------|:--------|:---------|
| 1               | 1        | 2       | 3        |