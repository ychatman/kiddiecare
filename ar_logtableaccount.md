# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_logtableaccount ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **logtableaccountid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **commentdate** | datetime | NO   |     |         |       |         |
| **originaldate** | datetime | NO   |     |         |       |         |
| **logsheettid** | int(11) | NO   | MUL |         |       |         |
| **isrestricted** | tinyint(1) | NO   |     |         |       |         |
| **comment** | varchar(2000) | NO   |     |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | logtableaccountid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_logtableaccount\_accountid** | 1    | 1      | 1      | accountid | 1   |             | A         | 1    | 1       |
| **fk\_g\_logtableaccount\_kiddiecareuserid** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_logtableaccount\_g\_typestable** | 1    | 1      | 1      | logsheettid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data