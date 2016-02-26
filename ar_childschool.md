# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_childschool ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **childschoolid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **primaryworkareaid** | int(11) | NO   | MUL | -1      |       |         |
| **foodstatusid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | childschoolid | 1   | 1           | A         | 0    | 0       |
| **ix\_ar\_childinfo\_schoolid\_personid** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_childinfo\_schoolid\_personid** | 0    | 0      | 0      | personid | 2   | 1           | A         | 0    | 0       |
| **idx\_schoolid\_primaryworkareaid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **idx\_schoolid\_primaryworkareaid** | 1    | 1      | 1      | primaryworkareaid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_childschool** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_childschool\_fp\_foodstatus** | 1    | 1      | 1      | foodstatusid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_child\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_childschool\_g\_workarea** | 1    | 1      | 1      | primaryworkareaid | 1   |             | A         | 1    | 1       |


### Default Data ###
| childschoolid | schoolid | personid | primaryworkareaid | foodstatusid |
|:--------------|:---------|:---------|:------------------|:-------------|
| -1            | -1       | -1       | -1                | -1           |