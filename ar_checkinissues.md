# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_checkinissues ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **checkinissuesid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **issuedate** | datetime | NO   |     |         |       |         |
| **checkinissuestid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | checkinissuesid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_checkinissues\_ar\_childschool** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_checkinissues\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_checkinissues\_g\_typestable** | 1    | 1      | 1      | checkinissuestid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data