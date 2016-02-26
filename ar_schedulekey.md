# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_schedulekey ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **schedulekeyid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **istemplate** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | schedulekeyid | 1   | 1           | A         | 0    | 0       |
| **ix\_schedulekey\_istemplate** | 1    | 1      | 1      | schedulekeyid | 1   |             | A         | 1    | 1       |
| **ix\_schedulekey\_istemplate** | 1    | 1      | 1      | istemplate | 2   |             | A         | 1    | 1       |


### Default Data ###
| schedulekeyid | istemplate |
|:--------------|:-----------|
| -1            | 0          |