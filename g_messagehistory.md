# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_messagehistory ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **historyid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **messageid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **readdate** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | historyid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_messagehistory\_messageid** | 1    | 1      | 1      | messageid | 1   |             | A         | 1    | 1       |
| **fk\_g\_messagehistory\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data