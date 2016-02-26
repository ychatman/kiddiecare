# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_childrel ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **childrelid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **childreltid** | int(11) | NO   | MUL |         |       |         |
| **isliveswith** | tinyint(1) | NO   |     |         |       |         |
| **isemergency** | tinyint(1) | NO   |     |         |       |         |
| **ispickup** | tinyint(1) | NO   |     |         |       |         |
| **vieworder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | childrelid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_childrel** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_childrel\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountchildrel\_g\_typestable** | 1    | 1      | 1      | childreltid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data