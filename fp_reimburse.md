# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_reimburse ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **reimburseid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **foodstatusid** | int(11) | NO   | MUL |         |       |         |
| **mealabbreviationid** | int(11) | NO   | MUL |         |       |         |
| **amount** | decimal(6,4) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | reimburseid | 1   | 0           | A         | 0    | 0       |
| **ix\_fp\_reimburse** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_fp\_reimburse** | 0    | 0      | 0      | foodstatusid | 2   |             | A         | 0    | 0       |
| **ix\_fp\_reimburse** | 0    | 0      | 0      | mealabbreviationid | 3   | 0           | A         | 0    | 0       |
| **fk\_fp\_reimburse\_fp\_foodstatus** | 1    | 1      | 1      | foodstatusid | 1   |             | A         | 1    | 1       |
| **fk\_fp\_reimburse\_fp\_mealabbreviation** | 1    | 1      | 1      | mealabbreviationid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data