# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_holiday ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **holidayid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **holidaydate** | datetime | NO   |     |         |       |         |
| **comment** | varchar(30) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | holidayid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_holiday\_schoolid\_holidaydate** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_g\_holiday\_schoolid\_holidaydate** | 0    | 0      | 0      | holidaydate | 2   | 0           | A         | 0    | 0       |
| **ix\_g\_holiday\_schoolid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data