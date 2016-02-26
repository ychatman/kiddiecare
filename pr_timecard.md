# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_timecard ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **timecardid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **punchinid** | int(11) | NO   | MUL |         |       |         |
| **punchindate** | datetime | NO   |     |         |       |         |
| **punchinminute** | int(11) | NO   |     |         |       |         |
| **ispunchinrounded** | tinyint(1) | NO   |     | 0       |       |         |
| **punchoutid** | int(11) | NO   | MUL |         |       |         |
| **punchoutdate** | datetime | NO   |     |         |       |         |
| **punchoutminute** | int(11) | NO   |     |         |       |         |
| **ispunchoutrounded** | tinyint(1) | NO   |     | 0       |       |         |
| **comment** | varchar(35) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | timecardid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_timecard** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecard\_g\_personin** | 1    | 1      | 1      | punchinid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecard\_g\_personout** | 1    | 1      | 1      | punchoutid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecard\_g\_workplace** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_timecard\_pr\_paycode** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data