# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_account ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **accountkey** | varchar(8) | NO   |     |         |       |         |
| **ishidden** | tinyint(1) | NO   |     |         |       |         |
| **comment** | varchar(200) | NO   |     |         |       |         |
| **alert** | varchar(50) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountid | 1   | 0           | A         | 0    | 0       |
| **idx\_schoolid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data