# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_schedule ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **scheduleid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **schedulename** | varchar(30) | NO   |     |         |       |         |
| **startappliesto** | datetime | NO   |     |         |       |         |
| **endappliesto** | datetime | NO   |     |         |       |         |
| **startweek** | int(11) | NO   |     |         |       |         |
| **weeksinrotation** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | scheduleid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_schedule** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data