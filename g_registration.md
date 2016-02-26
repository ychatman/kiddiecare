# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_registration ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **registrationid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **regpin** | int(11) | NO   | UNI |         |       |         |
| **regdatetime** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | registrationid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_regpin** | 0    | 0      | 0      | regpin | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_registration\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data