# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_depositreportdetail ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **depositreportdetailid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **depositreportid** | int(11) | NO   | MUL |         |       |         |
| **glaccountid** | int(11) | NO   | MUL |         |       |         |
| **amount** | decimal(18,2) | NO   |     |         |       |         |
| **isreconciled** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | depositreportdetailid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_depositreportdetail\_ar\_depositreport** | 1    | 1      | 1      | depositreportid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_depositreportdetail\_g\_glaccount** | 1    | 1      | 1      | glaccountid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data