# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_logtablechild ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **logtablechildid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **commentdate** | datetime | NO   |     |         |       |         |
| **originaldate** | datetime | NO   |     |         |       |         |
| **logsheettid** | int(11) | NO   | MUL |         |       |         |
| **isrestricted** | tinyint(1) | NO   |     |         |       |         |
| **comment** | varchar(2000) | NO   |     |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | logtablechildid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_logtablechild\_childschoolid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_g\_logtablechild\_kiddiecareuserid** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_logtablechild\_g\_typestable** | 1    | 1      | 1      | logsheettid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data