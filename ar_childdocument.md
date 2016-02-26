# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_childdocument ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **childdocumentid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **dateadded** | datetime | NO   |     |         |       |         |
| **documentdescription** | varchar(50) | NO   |     |         |       |         |
| **childdocument** | longblob | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | childdocumentid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_childdocument\_ar\_childschool** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_childdocument\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data