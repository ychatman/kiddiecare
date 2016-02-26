# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_exposureschool ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **schoolexposureid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **exposurecattid** | int(11) | NO   | MUL |         |       |         |
| **targetid** | int(11) | NO   |     |         |       |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | schoolexposureid | 1   | 1           | A         | 0    | 0       |
| **ix\_g\_exposureschool** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_g\_exposureschool** | 0    | 0      | 0      | schoolexposureid | 2   |             | A         | 0    | 0       |
| **ix\_g\_exposureschool** | 0    | 0      | 0      | targetid | 3   | 1           | A         | 0    | 0       |
| **fk\_g\_exposureschool\_g\_typestable** | 1    | 1      | 1      | exposurecattid | 1   |             | A         | 1    | 1       |


### Default Data ###
| schoolexposureid | exposurecattid | targetid | schoolid |
|:-----------------|:---------------|:---------|:---------|
| 1                | 189            | 104      | 1        |