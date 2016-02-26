# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_lang ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **id**    | int(255) | NO   | PRI |         | auto\_increment |         |
| **code**  | varchar(10) | NO   |     |         |       |         |
| **language** | varchar(255) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | id     | 1   | 2           | A         | 0    | 0       |


### Default Data ###
| id | code | language |
|:---|:-----|:---------|
| 1  | en   | English  |
| 2  | es   | Spanish  |