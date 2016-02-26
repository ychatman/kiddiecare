# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_optionsschool ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **optionsschoolid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **optionsdefaultid** | int(11) | NO   | MUL |         |       |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **value** | varchar(500) | NO   |     |         |       |         |
| **sys**   | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | optionsschoolid | 1   | 6           | A         | 0    | 0       |
| **ix\_g\_optionsschool\_uniqueschoolidoptionsdefaultid** | 0    | 0      | 0      | schoolid | 1   |             | A         | 0    | 0       |
| **ix\_g\_optionsschool\_uniqueschoolidoptionsdefaultid** | 0    | 0      | 0      | optionsdefaultid | 2   | 6           | A         | 0    | 0       |
| **ix\_g\_schooloptions\_schoolid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **fk\_g\_optionsschool\_g\_optionsdefault** | 1    | 1      | 1      | optionsdefaultid | 1   |             | A         | 1    | 1       |


### Default Data ###
| optionsschoolid | optionsdefaultid | schoolid | value | sys |
|:----------------|:-----------------|:---------|:------|:----|
| 1               | 85               | 1        | 181   | 1   |
| 2               | 86               | 1        | 193   | 1   |
| 3               | 88               | 1        | 184   | 0   |
| 4               | 95               | 1        | 183   | 0   |
| 5               | 118              | 1        | 185   | 0   |
| 6               | 120              | 1        | 1     | 0   |