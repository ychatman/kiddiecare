# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_employeedocument ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **employeedocumentid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **dateadded** | datetime | NO   |     |         |       |         |
| **documentdescription** | varchar(50) | NO   |     |         |       |         |
| **employeedocument** | longblob | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | employeedocumentid | 1   | 0           | A         | 0    | 0       |
| **fk\_pr\_employeedocument\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_employeedocument\_pr\_employeeschool** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data