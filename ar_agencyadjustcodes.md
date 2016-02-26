# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_agencyadjustcodes ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **agencyadjustcodeid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **description** | varchar(15) | NO   |     |         |       |         |
| **chargecreditdescid** | int(11) | NO   | MUL |         |       |         |
| **istransfer** | tinyint(1) | NO   |     |         |       |         |
| **isactive** | tinyint(1) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | agencyadjustcodeid | 1   | 4           | A         | 0    | 0       |
| **fk\_ar\_agencyadjustcodes\_ar\_chargecreditdesc** | 1    | 1      | 1      | chargecreditdescid | 1   |             | A         | 1    | 1       |


### Default Data ###
| agencyadjustcodeid | description | chargecreditdescid | istransfer | isactive | sortorder |
|:-------------------|:------------|:-------------------|:-----------|:---------|:----------|
| -1                 |             | -100               | 0          | 1        | 0         |
| 16                 | Parent Transfer | 191                | 1          | 1        | 1         |
| 17                 | Agcy Write Off | 174                | 0          | 1        | 2         |
| 18                 | Agcy Credit | 176                | 0          | 1        | 3         |