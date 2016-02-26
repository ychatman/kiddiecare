# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_accountledgerrel ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **accountledgerrelid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **accountid** | int(11) | NO   | MUL |         |       |         |
| **agencyid** | int(11) | NO   | MUL | -1      |       |         |
| **accountledgerreltid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | accountledgerrelid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_accountledgerrel** | 0    | 0      | 0      | accountid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_accountledgerrel** | 0    | 0      | 0      | agencyid | 2   | 0           | A         | 0    | 0       |
| **idx\_accountledgerrel** | 1    | 1      | 1      | agencyid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_accountledgerrel\_g\_typestable** | 1    | 1      | 1      | accountledgerreltid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data