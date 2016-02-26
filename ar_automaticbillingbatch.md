# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_automaticbillingbatch ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **automaticbillingbatchid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **postdate** | datetime | NO   |     |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **autobatchtid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | automaticbillingbatchid | 1   | 1           | A         | 0    | 0       |
| **ix\_ar\_automaticbillingbatch\_schoolid\_autobatchtid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_automaticbillingbatch\_schoolid\_autobatchtid** | 1    | 1      | 1      | autobatchtid | 2   |             | A         | 1    | 1       |
| **fk\_ar\_automaticbillingbatch\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_automaticbillingbatch\_g\_typestable** | 1    | 1      | 1      | autobatchtid | 1   |             | A         | 1    | 1       |


### Default Data ###
| automaticbillingbatchid | schoolid | postdate | kiddiecareuserid | autobatchtid |
|:------------------------|:---------|:---------|:-----------------|:-------------|
| -1                      | -1       | 1900-01-01 00:00:00 | -1               | 479          |