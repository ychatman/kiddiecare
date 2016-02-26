# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_paycodebenefit ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **paycodebenefitid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **paycodeid** | int(11) | NO   | UNI |         |       |         |
| **percentage** | decimal(18,2) | NO   |     | 100.00  |       |         |
| **checkstub** | tinyint(1) | NO   |     | 0       |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | paycodebenefitid | 1   | 5           | A         | 0    | 0       |
| **ix\_pr\_paycodebenefit\_uniquepaycodeid** | 0    | 0      | 0      | paycodeid | 1   | 5           | A         | 0    | 0       |


### Default Data ###
| paycodebenefitid | paycodeid | percentage | checkstub | sortorder |
|:-----------------|:----------|:-----------|:----------|:----------|
| 1                | 30        | 100.00     | 1         | 1         |
| 2                | 31        | 100.00     | 1         | 2         |
| 3                | 32        | 100.00     | 1         | 3         |
| 4                | 37        | 100.00     | 1         | 4         |
| 5                | 38        | 100.00     | 1         | 5         |