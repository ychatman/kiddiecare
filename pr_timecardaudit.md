# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_timecardaudit ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **timecardauditid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **timecardid** | int(11) | NO   | MUL |         |       |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **punchinid** | int(11) | NO   | MUL |         |       |         |
| **punchindate** | datetime | NO   |     |         |       |         |
| **punchinminute** | int(11) | NO   |     |         |       |         |
| **punchoutid** | int(11) | NO   | MUL |         |       |         |
| **punchoutdate** | datetime | NO   |     |         |       |         |
| **punchoutminute** | int(11) | NO   |     |         |       |         |
| **changebyid** | int(11) | NO   | MUL |         |       |         |
| **changecode** | char(1) | NO   |     |         |       |         |
| **changedate** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | timecardauditid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_timecardaudit** | 1    | 1      | 1      | timecardid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecardaudit\_g\_personin** | 1    | 1      | 1      | punchinid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecardaudit\_g\_personout** | 1    | 1      | 1      | punchoutid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecardaudit\_g\_kiddiecareuser** | 1    | 1      | 1      | changebyid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecardaudit\_g\_workplace** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecardaudit\_pr\_employeeschool** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecardaudit\_pr\_paycode** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data