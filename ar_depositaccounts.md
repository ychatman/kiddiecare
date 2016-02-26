# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_depositaccounts ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **depositaccountsid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **glaccountid** | int(11) | NO   | MUL |         |       |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | depositaccountsid | 1   | 4           | A         | 0    | 0       |
| **fk\_ar\_depositaccounts\_g\_glbankaccount** | 1    | 1      | 1      | glaccountid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_depositaccounts\_g\_schools** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
| depositaccountsid | glaccountid | schoolid |
|:------------------|:------------|:---------|
| 1                 | 1           | 1        |
| 2                 | 3           | 1        |
| 203               | 2           | 1        |
| 205               | 105         | 1        |