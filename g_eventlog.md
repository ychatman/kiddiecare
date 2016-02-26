# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_eventlog ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **severity** | int(11) | NO   |     |         |       |         |
| **eventtype** | int(11) | NO   |     |         |       |         |
| **component** | int(11) | NO   |     |         |       |         |
| **eventdate** | datetime | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **computer** | varchar(50) | NO   |     |         |       |         |
| **eventmessage** | varchar(140) | NO   |     |         |       |         |
| **schoolid** | int(11) | NO   | MUL | -1      |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **ix\_g\_eventlog\_date** | 1    | 1      | 1      | eventdate | 1   |             | A         | 1    | 1       |
| **ix\_g\_eventlog\_kiddiecareuserid** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_g\_eventlog\_g\_schools** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data