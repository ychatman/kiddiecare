# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_classroom ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **workareaid** | int(11) | NO   | PRI |         |       |         |
| **childteacherratio** | decimal(18,2) | NO   |     |         |       |         |
| **maxchildren** | int(11) | NO   |     | 0       |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | workareaid | 1   | 8           | A         | 0    | 0       |


### Default Data ###
| workareaid | childteacherratio | maxchildren | sortorder |
|:-----------|:------------------|:------------|:----------|
| -1         | 1.00              | 1           | -1        |
| 229        | 0.00              | 0           | 1         |
| 233        | 0.00              | 0           | 2         |
| 235        | 0.00              | 0           | 3         |
| 237        | 0.00              | 0           | 4         |
| 239        | 0.00              | 0           | 5         |
| 241        | 0.00              | 0           | 6         |
| 242        | 0.00              | 0           | 7         |