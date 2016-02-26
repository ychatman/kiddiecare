# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_childabsences ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **childabsencesid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **absentdate** | datetime | NO   |     |         |       |         |
| **absentstart** | int(11) | NO   |     |         |       |         |
| **absentend** | int(11) | NO   |     |         |       |         |
| **absentreasontid** | int(11) | NO   | MUL |         |       |         |
| **comment** | varchar(30) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | childabsencesid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_childabsences** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_childabsences\_childschool\_absentdate** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_childabsences\_childschool\_absentdate** | 1    | 1      | 1      | absentdate | 2   |             | A         | 1    | 1       |
| **fk\_ar\_childabsences\_g\_typestable** | 1    | 1      | 1      | absentreasontid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data