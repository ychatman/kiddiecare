# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingboxcontract ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **billingboxid** | int(11) | NO   | PRI |         |       |         |
| **contractcycletid** | int(11) | NO   | MUL |         |       |         |
| **amount** | decimal(18,2) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **scheduleid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | billingboxid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_billingboxcontract\_ar\_schedule** | 1    | 1      | 1      | scheduleid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_billingboxcontract\_g\_typestable** | 1    | 1      | 1      | contractcycletid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data