# [< Database Schema](DatabaseSchema.md) #

## kc\_ap\_logtablevendor ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **logtablevendorid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **vendorid** | int(11) | NO   | MUL |         |       |         |
| **commentdate** | datetime | NO   |     |         |       |         |
| **originaldate** | datetime | NO   |     |         |       |         |
| **logsheettid** | int(11) | NO   | MUL |         |       |         |
| **isrestricted** | tinyint(1) | NO   |     |         |       |         |
| **comment** | varchar(2000) | NO   |     |         |       |         |
| **kiddiecareuserid** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | logtablevendorid | 1   | 0           | A         | 0    | 0       |
| **ix\_logtablevendor** | 1    | 1      | 1      | vendorid | 1   |             | A         | 1    | 1       |
| **fk\_ap\_logtablevendor\_g\_typestable** | 1    | 1      | 1      | logsheettid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data