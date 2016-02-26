# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_dailymealcount ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **dailymealcountid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **mealdate** | datetime | NO   |     |         |       |         |
| **foodstatusid** | int(11) | NO   | MUL |         |       |         |
| **mealabbid1** | tinyint(1) | NO   |     |         |       |         |
| **mealabbid2** | tinyint(1) | NO   |     |         |       |         |
| **mealabbid3** | tinyint(1) | NO   |     |         |       |         |
| **mealabbid4** | tinyint(1) | NO   |     |         |       |         |
| **mealabbid5** | tinyint(1) | NO   |     |         |       |         |
| **mealabbid6** | tinyint(1) | NO   |     |         |       |         |
| **atrisk** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | dailymealcountid | 1   | 0           | A         | 0    | 0       |
| **ix\_fp\_dailymealcount** | 0    | 0      | 0      | childschoolid | 1   |             | A         | 0    | 0       |
| **ix\_fp\_dailymealcount** | 0    | 0      | 0      | mealdate | 2   | 0           | A         | 0    | 0       |
| **fk\_fp\_dailymealcount\_fp\_foodstatus** | 1    | 1      | 1      | foodstatusid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data