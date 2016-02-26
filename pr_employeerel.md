# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_employeerel ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **employeerelid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **employeereltid** | int(11) | NO   | MUL |         |       |         |
| **vieworder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | employeerelid | 1   | 0           | A         | 0    | 0       |
| **fk\_pr\_employeerel\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_employeerel\_g\_typestable** | 1    | 1      | 1      | employeereltid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_employeerel\_pr\_employeeschool** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data