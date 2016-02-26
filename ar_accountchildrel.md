# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_accountchildrel ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountchildrelid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountchildrelid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_accountchildrel** | 0    | 0      | 0      | accountid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_accountchildrel** | 0    | 0      | 0      | childschoolid | 2   | 0           | A         | 0    | 0       |
| **fk\_ar\_accountchildrel\_ar\_childschool** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data