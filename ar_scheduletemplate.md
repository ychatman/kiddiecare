# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_scheduletemplate ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **schedulekeyid** | int(11) | NO   | PRI |         |       |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **templatename** | varchar(30) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **comment** | varchar(150) | NO   |     |         |       |         |
| **active** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | schedulekeyid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_scheduletemplate\_schoolid\_templatename** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_scheduletemplate\_schoolid\_templatename** | 0    | 0      | 0      | templatename | 2   | 0           | A         | 0    | 0       |
| **ix\_ar\_scheduletemplate\_schoolid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data