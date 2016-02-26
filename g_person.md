# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_person ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **personid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **firstname** | varchar(30) | NO   |     |         |       |         |
| **middleinit** | varchar(1) | NO   |     |         |       |         |
| **lastname** | varchar(30) | NO   |     |         |       |         |
| **dob**   | datetime | NO   |     |         |       |         |
| **gender** | char(1) | NO   |     |         |       |         |
| **email** | varchar(50) | NO   |     |         |       |         |
| **photodata** | longblob | YES  |     |         |       |         |
| **photodate** | datetime | NO   |     |         |       |         |
| **comment** | varchar(200) | NO   |     |         |       |         |
| **identificationnumber** | varchar(30) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | personid | 1   | 2           | A         | 0    | 0       |
| **ix\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **ix\_g\_person** | 1    | 1      | 1      | firstname | 2   |             | A         | 1    | 1       |
| **ix\_g\_person** | 1    | 1      | 1      | lastname | 3   |             | A         | 1    | 1       |


### Default Data ###
| personid | firstname | middleinit | lastname | dob | gender | email | photodata | photodate | comment | identificationnumber |
|:---------|:----------|:-----------|:---------|:----|:-------|:------|:----------|:----------|:--------|:---------------------|
| -1       | Sys       |            | Sys      | 1900-01-01 00:00:00 | U      |       |           | 1900-01-01 00:00:00 | Sys     |                      |
| 1        | Demo      |            | SysAdmin | 1900-01-01 00:00:00 | U      |       |           | 0000-00-00 00:00:00 |         |                      |