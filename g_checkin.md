# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_checkin ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **checkinid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **personid** | int(11) | NO   | UNI |         |       |         |
| **persondata** | varchar(8) | NO   |     |         |       |         |
| **fingerprintdata** | longblob | YES  |     |         |       |         |
| **cardswipedata** | varchar(25) | NO   |     |         |       |         |
| **pin**   | int(11) | NO   | MUL |         |       |         |
| **lastused** | datetime | NO   |     |         |       |         |
| **personsignature** | longblob | YES  |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | checkinid | 1   | 0           | A         | 0    | 0       |
| **ix\_personid\_unigue** | 0    | 0      | 0      | personid | 1   | 0           | A         | 0    | 0       |
| **ix\_pin** | 1    | 1      | 1      | pin    | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data