# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_user\_passwordhistory ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **userid** | int(11) | NO   | PRI |         |       |         |
| **datechanged** | datetime | NO   | PRI |         |       |         |
| **previouspassword** | varchar(64) | NO   | PRI |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | userid | 1   |             | A         | 0    | 0       |
| **PRIMARY** | 0    | 0      | 0      | datechanged | 2   |             | A         | 0    | 0       |
| **PRIMARY** | 0    | 0      | 0      | previouspassword | 3   | 0           | A         | 0    | 0       |
| **ix\_g\_kiddiecareuser\_passwordhistory** | 0    | 0      | 0      | userid | 1   |             | A         | 0    | 0       |
| **ix\_g\_kiddiecareuser\_passwordhistory** | 0    | 0      | 0      | previouspassword | 2   | 0           | A         | 0    | 0       |


### Default Data ###
No Default Data