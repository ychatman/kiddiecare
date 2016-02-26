# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_reportcriteria ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **reportcriteriaid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **personid** | int(11) | NO   |     |         |       |         |
| **criteriasettings** | longblob | NO   |     |         |       |         |
| **datesaved** | datetime | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | reportcriteriaid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_reportcriteria\_schoolid\_personid** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_g\_reportcriteria\_schoolid\_personid** | 0    | 0      | 0      | personid | 2   | 0           | A         | 0    | 0       |


### Default Data ###
No Default Data