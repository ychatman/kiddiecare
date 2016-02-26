# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_reportdata ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **reportid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   |     |         |       |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **vendorid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **ix\_g\_reportdata\_accountid** | 1    | 1      | 1      | accountid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata\_childschoolid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata\_employeeschoolid** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata\_reportid** | 1    | 1      | 1      | reportid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata\_vendorid** | 1    | 1      | 1      | vendorid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data