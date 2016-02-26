# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_employeepayrate ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **employeepayrateid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **straighttimerate** | decimal(18,2) | NO   |     |         |       |         |
| **overtimerate** | decimal(18,2) | NO   |     |         |       |         |
| **isbenefit** | tinyint(1) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | employeepayrateid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_employeepayrate** | 0    | 0      | 0      | employeeschoolid | 1   |             | A         | 0    | 0       |
| **ix\_pr\_employeepayrate** | 0    | 0      | 0      | paycodeid | 2   | 0           | A         | 0    | 0       |
| **fk\_pr\_employeepayrate\_pr\_paycode** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data