# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_accountpayorrel ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountpayorrelid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountpayorrelid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_accountpayorrel\_accountid\_personid** | 0    | 0      | 0      | accountid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_accountpayorrel\_accountid\_personid** | 0    | 0      | 0      | personid | 2   | 0           | A         | 0    | 0       |
| **fk\_ar\_accountpayorrel\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data