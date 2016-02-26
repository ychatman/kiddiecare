# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_workhistory ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **workhistoryid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **startdate** | datetime | NO   |     |         |       |         |
| **enddate** | datetime | NO   |     |         |       |         |
| **workstatustid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | workhistoryid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_workhistory\_employyeschoolid** | 1    | 1      | 1      | employeeschoolid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_workhistory\_g\_typestable** | 1    | 1      | 1      | workstatustid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data