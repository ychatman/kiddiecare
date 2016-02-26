# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_paycode ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **paycodeid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **paycodename** | varchar(25) | NO   |     |         |       |         |
| **glaccountid** | int(11) | NO   | MUL |         |       |         |
| **payot** | tinyint(1) | NO   |     | 0       |       |         |
| **isactive** | tinyint(1) | NO   | MUL |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | paycodeid | 1   | 14          | A         | 0    | 0       |
| **ix\_pr\_paycode\_isactive** | 1    | 1      | 1      | isactive | 1   |             | A         | 1    | 1       |
| **fk\_pr\_paycode\_pr\_paycode** | 1    | 1      | 1      | glaccountid | 1   |             | A         | 1    | 1       |


### Default Data ###
| paycodeid | paycodename | glaccountid | payot | isactive | sortorder |
|:----------|:------------|:------------|:------|:---------|:----------|
| 26        | Owner       | 55          | 1     | 1        | 1         |
| 27        | Director    | 55          | 1     | 1        | 2         |
| 28        | Teacher     | 56          | 1     | 1        | 4         |
| 29        | Assistant Teacher | 57          | 1     | 1        | 5         |
| 30        | Vacation    | 58          | 0     | 1        | 9         |
| 31        | Sick        | 59          | 0     | 1        | 10        |
| 32        | Training    | 60          | 0     | 1        | 11        |
| 33        | Maintenance | 116         | 1     | 1        | 6         |
| 34        | Cook        | 116         | 1     | 1        | 8         |
| 35        | Assistant Director | 55          | 1     | 1        | 3         |
| 36        | Bonus       | 55          | 0     | 1        | 12        |
| 37        | Holiday     | 55          | 0     | 1        | 13        |
| 38        | Jury Duty   | 55          | 0     | 1        | 14        |
| 39        | Driver      | 116         | 1     | 1        | 7         |