# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_custompayperiods ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **payperiodid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **regionid** | int(11) | NO   | MUL |         |       |         |
| **startdate** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | payperiodid | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_payperiods\_g\_regions** | 1    | 1      | 1      | regionid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data