# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_personconfidential ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **personid** | int(11) | NO   | PRI |         |       |         |
| **visiblessn** | char(11) | NO   |     |         |       |         |
| **encryptedssn** | varbinary(64) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | personid | 1   | 0           | A         | 0    | 0       |


### Default Data ###
No Default Data