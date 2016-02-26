# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_mealabbreviation ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **mealabbreviationid** | int(11) | NO   | PRI |         |       |         |
| **abbreviation** | varchar(4) | YES  | UNI |         |       |         |
| **description** | varchar(30) | YES  | UNI |         |       |         |
| **sortorder** | int(11) | YES  |     |         |       |         |
| **ismainmeal** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | mealabbreviationid | 1   | 5           | A         | 0    | 0       |
| **ix\_fp\_mealabbreviation\_abbreviation** | 0    | 0      | 0      | abbreviation | 1   |             | A         | 0    | 0       |
| **ix\_fp\_mealabbreviation\_description** | 0    | 0      | 0      | description | 1   |             | A         | 0    | 0       |


### Default Data ###
| mealabbreviationid | abbreviation | description | sortorder | ismainmeal |
|:-------------------|:-------------|:------------|:----------|:-----------|
| 1                  | BR           | Breakfast   | 1         | 1          |
| 2                  | AM           | Morning Snack | 2         | 0          |
| 3                  | L            | Lunch       | 3         | 1          |
| 4                  | PM           | Afternoon Snack | 4         | 0          |
| 5                  | D            | Dinner      | 5         | 1          |