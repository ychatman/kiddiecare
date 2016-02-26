# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_trackingdata ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **trackingdataid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **trackingitemid** | int(11) | NO   | MUL |         |       |         |
| **trackingextid** | int(11) | NO   | MUL |         |       |         |
| **targetid** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | trackingdataid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_trackingdata** | 0    | 0      | 0      | trackingitemid | 1   |             | A         | 0    | 0       |
| **ix\_g\_trackingdata** | 0    | 0      | 0      | targetid | 2   | 0           | A         | 0    | 0       |
| **idx\_trackingextid\_trackingitemid** | 1    | 1      | 1      | trackingextid | 1   |             | A         | 1    | 1       |
| **idx\_trackingextid\_trackingitemid** | 1    | 1      | 1      | trackingitemid | 2   |             | A         | 1    | 1       |


### Default Data ###
No Default Data