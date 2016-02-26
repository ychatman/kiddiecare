# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_employeebenefitearned ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **employeebenefitearnedid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **earneddate** | datetime | NO   |     |         |       |         |
| **hoursearned** | decimal(18,2) | NO   |     |         |       |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **comment** | varchar(35) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | employeebenefitearnedid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_employeebenefitearned** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_employeebenefitearned\_pr\_paycodebenefit** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data