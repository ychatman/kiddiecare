# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingmethodprintline ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountledgerid** | int(11) | NO   | PRI |         |       |         |
| **sortorder** | int(11) | NO   | PRI |         |       |         |
| **statement** | varchar(100) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountledgerid | 1   |             | A         | 0    | 0       |
| **PRIMARY** | 0    | 0      | 0      | sortorder | 2   | 0           | A         | 0    | 0       |
| **ix\_ar\_billingmethodprintline\_ledgerid** | 1    | 1      | 1      | accountledgerid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data