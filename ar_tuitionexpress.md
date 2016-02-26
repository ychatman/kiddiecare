# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_tuitionexpress ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountid** | int(11) | NO   | PRI |         |       |         |
| **objectdata** | longblob | NO   |     |         |       |         |
| **clientidfortewebsite** | char(13) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_tuitionexpress\_accountid** | 0    | 0      | 0      | accountid | 1   | 0           | A         | 0    | 0       |


### Default Data ###
No Default Data