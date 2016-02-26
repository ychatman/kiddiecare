# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_timecardaudit ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **timecardauditid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **timecardid** | int(11) | NO   |     |         |       |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **punchinid** | int(11) | NO   | MUL |         |       |         |
| **punchindate** | datetime | NO   |     |         |       |         |
| **punchinminute** | int(11) | NO   |     |         |       |         |
| **punchoutid** | int(11) | NO   | MUL |         |       |         |
| **punchoutdate** | datetime | NO   |     |         |       |         |
| **punchoutminute** | int(11) | NO   |     | 0       |       |         |
| **changebyid** | int(11) | NO   | MUL |         |       |         |
| **changecode** | char(1) | NO   |     |         |       |         |
| **changedate** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | timecardauditid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_timecardaudit\_ar\_childschool** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_timecardaudit\_ar\_classroom** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_timecardaudit\_g\_person\_punchin** | 1    | 1      | 1      | punchinid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_timecardaudit\_g\_person\_punchout** | 1    | 1      | 1      | punchoutid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_timecardaudit\_g\_kiddiecareuser** | 1    | 1      | 1      | changebyid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data