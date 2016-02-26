# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_schedule ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **scheduleid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **schedulekeyid** | int(11) | NO   | MUL |         |       |         |
| **startappliesto** | datetime | NO   |     |         |       |         |
| **endappliesto** | datetime | NO   |     |         |       |         |
| **startweek** | int(11) | NO   |     |         |       |         |
| **totalweeks** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | scheduleid | 1   | 1           | A         | 0    | 0       |
| **ix\_childschoolid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_schedule\_ar\_schedulekey1** | 1    | 1      | 1      | schedulekeyid | 1   |             | A         | 1    | 1       |


### Default Data ###
| scheduleid | childschoolid | schedulekeyid | startappliesto | endappliesto | startweek | totalweeks |
|:-----------|:--------------|:--------------|:---------------|:-------------|:----------|:-----------|
| -1         | -1            | -1            | 1900-01-01 00:00:00 | 2070-12-31 23:59:00 | 1         | 1          |