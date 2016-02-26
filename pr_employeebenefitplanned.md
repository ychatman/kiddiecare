# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_employeebenefitplanned ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **employeebenefitplannedid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **timeoffdate** | datetime | NO   |     |         |       |         |
| **starttime** | int(11) | NO   |     |         |       |         |
| **endtime** | int(11) | NO   |     |         |       |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **comment** | varchar(35) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | employeebenefitplannedid | 1   | 0           | A         | 0    | 0       |
| **fk\_pr\_employeeabsences\_pr\_employeeschool** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_employeebenefitused\_pr\_paycodebenefit** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data