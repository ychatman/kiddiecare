# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_user ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **userid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **title** | varchar(25) | NO   |     |         |       |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **identifier** | varchar(4) | NO   |     |         |       |         |
| **username** | varchar(20) | NO   | UNI |         |       |         |
| **password** | varchar(64) | NO   |     |         |       | md5     |
| **lang**  | varchar(4) | YES  |     |         |       |         |
| **usergrouptid** | int(11) | NO   | MUL |         |       |         |
| **isactive** | tinyint(1) | NO   |     | 0       |       |         |
| **isadmin** | int(1) | NO   |     | 0       |       |         |
| **template** | varchar(32) | YES  |     |         |       |         |
| **ar\_childgridlayout** | longblob | YES  |     |         |       |         |
| **lastloggedinschoolid** | int(11) | NO   |     | -1      |       |         |
| **lockedoutuntil** | datetime | YES  |     |         |       |         |
| **dashboardlayout** | longblob | YES  |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | userid | 1   | 2           | A         | 0    | 0       |
| **ix\_unique\_username** | 0    | 0      | 0      | username | 1   | 2           | A         | 0    | 0       |
| **ikiddiecareusergrouptid\_g\_kiddiecareuser** | 1    | 1      | 1      | usergrouptid | 1   |             | A         | 1    | 1       |
| **fk\_g\_kiddiecareuser\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |


### Default Data ###
| userid | title | personid | identifier | username | password | lang | usergrouptid | isactive | isadmin | template | ar\_childgridlayout | lastloggedinschoolid | lockedoutuntil | dashboardlayout |
|:-------|:------|:---------|:-----------|:---------|:---------|:-----|:-------------|:---------|:--------|:---------|:--------------------|:---------------------|:---------------|:----------------|
| -1     | Sys   | -1       | Sys        | Sys      |          |      | 138          | 0        | 0       |          |                     | -1                   |                |                 |
| 2      | Demo Account | 1        | DEMO       | demo     | fe01ce2a7fbac8fafaed7c982a04e229 |      | 200          | 1        | 1       |          |                     | -1                   |                |                 |