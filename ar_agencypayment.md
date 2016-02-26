# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_agencypayment ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **agencypaymentid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **agencyid** | int(11) | NO   | MUL |         |       |         |
| **checknumber** | varchar(24) | NO   |     |         |       |         |
| **amount** | decimal(18,2) | NO   |     |         |       |         |
| **postdate** | datetime | NO   |     |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **isclosed** | tinyint(1) | NO   |     |         |       |         |
| **depositreportid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | agencypaymentid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_agencypayment\_ar\_agency** | 1    | 1      | 1      | agencyid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_agencypayment\_ar\_depositreport** | 1    | 1      | 1      | depositreportid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_agencypayment\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_agencypayment\_schoolid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data