# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_scheduledetail ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **scheduledetailid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schedulekeyid** | int(11) | NO   | MUL |         |       |         |
| **weeknumber** | int(11) | NO   |     |         |       |         |
| **daynumber** | int(11) | NO   |     |         |       |         |
| **inminute** | int(11) | NO   |     |         |       |         |
| **outminute** | int(11) | NO   |     |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | scheduledetailid | 1   | 5           | A         | 0    | 0       |
| **ix\_schedulekeyid** | 1    | 1      | 1      | schedulekeyid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_scheduledetail\_ar\_classroom** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |


### Default Data ###
| scheduledetailid | schedulekeyid | weeknumber | daynumber | inminute | outminute | workareaid |
|:-----------------|:--------------|:-----------|:----------|:---------|:----------|:-----------|
| 1                | -1            | 0          | 1         | 480      | 960       | -1         |
| 2                | -1            | 0          | 2         | 480      | 960       | -1         |
| 3                | -1            | 0          | 3         | 480      | 960       | -1         |
| 4                | -1            | 0          | 4         | 480      | 960       | -1         |
| 5                | -1            | 0          | 5         | 480      | 960       | -1         |