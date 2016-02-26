# [< Database Schema](DatabaseSchema.md) #

## kc\_pr\_employeesalary ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **employeesalaryid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **paycodeid** | int(11) | NO   | MUL |         |       |         |
| **employeeschoolid** | int(11) | NO   | MUL |         |       |         |
| **salaryrate** | decimal(18,2) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | employeesalaryid | 1   | 0           | A         | 0    | 0       |
| **ix\_pr\_employeesalary** | 0    | 0      | 0      | employeeschoolid | 1   |             | A         | 0    | 0       |
| **ix\_pr\_employeesalary** | 0    | 0      | 0      | paycodeid | 2   | 0           | A         | 0    | 0       |
| **fk\_pr\_employeesalary\_pr\_paycode** | 1    | 1      | 1      | paycodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data