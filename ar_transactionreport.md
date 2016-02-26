# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_transactionreport ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **transactionreportid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **schooltransnumber** | int(11) | NO   |     |         |       |         |
| **closeddate** | datetime | NO   |     |         |       |         |
| **itemcount** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | transactionreportid | 1   | 1           | A         | 0    | 0       |
| **fk\_ar\_transactionreport\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_transactionreport\_g\_schools** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
| transactionreportid | schoolid | kiddiecareuserid | schooltransnumber | closeddate | itemcount |
|:--------------------|:---------|:-----------------|:------------------|:-----------|:----------|
| -1                  | -1       | -1               | 0                 | 1900-01-01 00:00:00 | -1        |