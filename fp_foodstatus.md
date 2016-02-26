# [< Database Schema](DatabaseSchema.md) #

## kc\_fp\_foodstatus ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **foodstatusid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **description** | varchar(30) | NO   | UNI |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **isreimbursable** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | foodstatusid | 1   | 4           | A         | 0    | 0       |
| **ix\_fp\_foodstatus\_description** | 0    | 0      | 0      | description | 1   | 4           | A         | 0    | 0       |


### Default Data ###
| foodstatusid | description | sortorder | isreimbursable |
|:-------------|:------------|:----------|:---------------|
| -1           | Not Enrolled | 4         | 0              |
| 137          | Free        | 16        | 1              |
| 138          | Reduced     | 17        | 1              |
| 139          | Paid        | 18        | 1              |