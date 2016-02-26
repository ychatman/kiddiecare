# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_kiddiecarenews ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **kiddiecarenewsid** | int(11) | NO   | PRI |         |       |         |
| **bamid** | int(11) | NO   | MUL | -1      |       |         |
| **postdate** | datetime | NO   |     |         |       |         |
| **expiresdate** | datetime | NO   |     |         |       |         |
| **title** | varchar(30) | NO   |     |         |       |         |
| **description** | varchar(500) | NO   |     |         |       |         |
| **fd**    | tinyint(1) | NO   |     | 0       |       |         |
| **fa**    | tinyint(1) | NO   |     | 0       |       |         |
| **ag**    | tinyint(1) | NO   |     | 0       |       |         |
| **mt**    | tinyint(1) | NO   |     | 0       |       |         |
| **at**    | tinyint(1) | NO   |     | 0       |       |         |
| **ed**    | tinyint(1) | NO   |     | 0       |       |         |
| **pr**    | tinyint(1) | NO   |     | 0       |       |         |
| **el**    | tinyint(1) | NO   |     | 0       |       |         |
| **te**    | tinyint(1) | NO   |     | 0       |       |         |
| **highpriority** | tinyint(1) | NO   |     | 0       |       |         |
| **url**   | varchar(500) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | kiddiecarenewsid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_kiddiecarenews\_uniquekiddiecarenewsid** | 0    | 0      | 0      | kiddiecarenewsid | 1   | 0           | A         | 0    | 0       |
| **ix\_kiddiecarenews\_bamid** | 1    | 1      | 1      | bamid  | 1   |             | A         | 1    | 1       |
| **ix\_kiddiecarenews\_bamid\_postdate** | 1    | 1      | 1      | bamid  | 1   |             | A         | 1    | 1       |
| **ix\_kiddiecarenews\_bamid\_postdate** | 1    | 1      | 1      | postdate | 2   |             | A         | 1    | 1       |


### Default Data ###
No Default Data