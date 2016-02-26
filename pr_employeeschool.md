# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_employeeschool ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **employeeschoolid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **primaryworkareaid** | int(11) | NO   | MUL | -1      |       |         |
| **ishidden** | tinyint(1) | NO   |     | 0       |       |         |
| **primaryschoolid** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | employeeschoolid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_employeeschool** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_pr\_employeeschool** | 0    | 0      | 0      | personid | 2   | 0           | A         | 0    | 0       |
| **fk\_pr\_employeeschool\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_employeeschool\_g\_workarea** | 1    | 1      | 1      | primaryworkareaid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data