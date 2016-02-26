# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_checkinissues ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **prcheckinissuesid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **issuedate** | datetime | NO   |     |         |       |         |
| **checkinissuestid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | prcheckinissuesid | 1   | 0           | A         | 0    | 0       |
| **fk\_pr\_checkinissues\_g\_typestable** | 1    | 1      | 1      | checkinissuestid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_checkinissues\_g\_workarea** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_checkinissues\_pr\_employeeschool** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_checkinissues\_pr\_paycode** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data