# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_glbankaccount ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **glaccountid** | int(11) | NO   | PRI |         |       |         |
| **lastchecknumber** | int(11) | NO   |     |         |       |         |
| **ischeckbook** | tinyint(1) | NO   |     |         |       |         |
| **isinuse** | tinyint(1) | NO   |     | 0       |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **ix\_g\_glcheckbookaccountid** | 0    | 0      | 0      | glaccountid | 1   | 4           | A         | 0    | 0       |


### Default Data ###
| glaccountid | lastchecknumber | ischeckbook | isinuse | sortorder |
|:------------|:----------------|:------------|:--------|:----------|
| 1           | 0               | 1           | 0       | 1         |
| 2           | 0               | 0           | 0       | 2         |
| 3           | 0               | 1           | 0       | 3         |
| 105         | 0               | 0           | 0       | 4         |