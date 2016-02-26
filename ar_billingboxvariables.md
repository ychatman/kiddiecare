# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingboxvariables ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **billingboxvariableid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **billingboxid** | int(11) | NO   | MUL |         |       |         |
| **variableid** | int(11) | NO   | MUL |         |       |         |
| **varvalue** | decimal(18,4) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | billingboxvariableid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_billingboxvariables\_ar\_billingbox** | 1    | 1      | 1      | billingboxid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_billingboxvariables\_ar\_billingboxformulavariables** | 1    | 1      | 1      | variableid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data