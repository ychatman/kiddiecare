# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_logtableemployee ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **logtableemployeeid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **employeeid** | int(11) | NO   | MUL |         |       |         |
| **commentdate** | datetime | NO   |     |         |       |         |
| **originaldate** | datetime | NO   |     |         |       |         |
| **logsheettid** | int(11) | NO   | MUL |         |       |         |
| **isrestricted** | tinyint(1) | NO   |     |         |       |         |
| **comment** | varchar(2000) | NO   |     |         |       |         |
| **kiddiecareuserid** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | logtableemployeeid | 1   | 0           | A         | 0    | 0       |
| **ix\_logtableemployee** | 1    | 1      | 1      | employeeid | 1   |             | A         | 1    | 1       |
| **fk\_pr\_logtableemployee\_g\_typestable** | 1    | 1      | 1      | logsheettid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data