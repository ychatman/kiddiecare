# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingbox ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **billingboxid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **accountledgerrelid** | int(11) | NO   | MUL |         |       |         |
| **billingboxtid** | int(11) | NO   | MUL |         |       |         |
| **chargecreditdescid** | int(11) | NO   | MUL |         |       |         |
| **comment** | varchar(50) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | billingboxid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_billingbox\_ar\_accountledgerrel** | 1    | 1      | 1      | accountledgerrelid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_billingbox\_ar\_chargecreditdesc** | 1    | 1      | 1      | chargecreditdescid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_billingbox\_ar\_childschool** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_billingbox\_g\_typestable** | 1    | 1      | 1      | billingboxtid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data