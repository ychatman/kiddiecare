# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_chargecreditdescstdamt ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **chargecreditdescstdamtid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **chargecreditdescid** | int(11) | NO   | MUL |         |       |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **standardamount** | decimal(18,2) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | chargecreditdescstdamtid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_chargecreditdescstdamt** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_chargecreditdescstdamt** | 0    | 0      | 0      | chargecreditdescid | 2   | 0           | A         | 0    | 0       |
| **fk\_ar\_chargecreditdescstdamt\_ar\_chargecreditdesc** | 1    | 1      | 1      | chargecreditdescid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data