# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingboxmethod ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **billingboxid** | int(11) | NO   | PRI |         |       |         |
| **billingboxformulaid** | int(11) | NO   | MUL |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **scheduleid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | billingboxid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_billingboxmethod\_ar\_billingboxformula** | 1    | 1      | 1      | billingboxformulaid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_billingboxmethod\_ar\_schedule** | 1    | 1      | 1      | scheduleid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data