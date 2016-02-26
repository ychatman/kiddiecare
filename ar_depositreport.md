# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_depositreport ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **depositreportid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **schooldepositnumber** | int(11) | NO   |     |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **creationdate** | datetime | NO   |     |         |       |         |
| **postdate** | datetime | NO   |     |         |       |         |
| **comment** | varchar(50) | NO   |     |         |       |         |
| **istebatch** | tinyint(1) | NO   |     |         |       |         |
| **receiptdata** | longblob | YES  |     |         |       |         |
| **receiptdate** | datetime | YES  |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | depositreportid | 1   | 1           | A         | 0    | 0       |
| **ix\_ar\_schoolid\_schooldepositnumber** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_schoolid\_schooldepositnumber** | 0    | 0      | 0      | schooldepositnumber | 2   | 1           | A         | 0    | 0       |
| **ix\_ar\_depositreport** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_depositreport\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |


### Default Data ###
| depositreportid | schoolid | schooldepositnumber | kiddiecareuserid | creationdate | postdate | comment | istebatch | receiptdata | receiptdate |
|:----------------|:---------|:--------------------|:-----------------|:-------------|:---------|:--------|:----------|:------------|:------------|
| -1              | -1       | 0                   | -1               | 1900-01-01 00:00:00 | 1900-01-01 00:00:00 | System  | 0         |             |             |