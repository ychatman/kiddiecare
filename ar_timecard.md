# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_timecard ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **timecardid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **punchinid** | int(11) | NO   | MUL |         |       |         |
| **punchindate** | datetime | NO   | MUL |         |       |         |
| **punchinminute** | int(11) | NO   |     |         |       |         |
| **ispunchinrounded** | tinyint(1) | NO   |     | 0       |       |         |
| **punchoutid** | int(11) | NO   | MUL |         |       |         |
| **punchoutdate** | datetime | NO   | MUL |         |       |         |
| **punchoutminute** | int(11) | NO   | MUL |         |       |         |
| **ispunchoutrounded** | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | timecardid | 1   | 5           | A         | 0    | 0       |
| **ix\_ar\_timecard\_childschoolid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_childschoolid\_timecardid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_childschoolid\_timecardid** | 1    | 1      | 1      | timecardid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_outdatedesc** | 1    | 1      | 1      | punchoutdate | 1   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_outminute** | 1    | 1      | 1      | punchoutminute | 1   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_punchinid** | 1    | 1      | 1      | punchinid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_punchoutid** | 1    | 1      | 1      | punchoutid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_startadnenddate** | 1    | 1      | 1      | punchindate | 1   |             | A         | 1    | 1       |
| **ix\_ar\_timecard\_startadnenddate** | 1    | 1      | 1      | punchoutdate | 2   |             | A         | 1    | 1       |
| **fk\_ar\_timecard\_ar\_classroom** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |


### Default Data ###
| timecardid | childschoolid | workareaid | punchinid | punchindate | punchinminute | ispunchinrounded | punchoutid | punchoutdate | punchoutminute | ispunchoutrounded |
|:-----------|:--------------|:-----------|:----------|:------------|:--------------|:-----------------|:-----------|:-------------|:---------------|:------------------|
| 1          | -1            | -1         | -1        | 2009-06-29 00:00:00 | 480           | 1                | -1         | 2009-06-29 00:00:00 | 1020           | 1                 |
| 2          | -1            | -1         | -1        | 2009-06-30 00:00:00 | 480           | 1                | -1         | 2009-06-30 00:00:00 | 1020           | 1                 |
| 3          | -1            | -1         | -1        | 2009-07-01 00:00:00 | 480           | 1                | -1         | 2009-07-01 00:00:00 | 1020           | 1                 |
| 4          | -1            | -1         | -1        | 2009-07-02 00:00:00 | 480           | 1                | -1         | 2009-07-02 00:00:00 | 1020           | 1                 |
| 5          | -1            | -1         | -1        | 2009-07-03 00:00:00 | 480           | 1                | -1         | 2009-07-03 00:00:00 | 1020           | 1                 |