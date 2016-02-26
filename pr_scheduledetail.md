# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_scheduledetail ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **scheduledetailid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **scheduleid** | int(11) | NO   | MUL |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **weeknumber** | int(11) | NO   |     |         |       |         |
| **daynumber** | int(11) | NO   |     |         |       |         |
| **inminute** | int(11) | NO   |     |         |       |         |
| **outminute** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | scheduledetailid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_scheduledetail** | 1    | 1      | 1      | scheduleid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_scheduledetail\_g\_workarea** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_scheduledetail\_pr\_paycode** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data