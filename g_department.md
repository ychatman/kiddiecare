# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_department ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **departmentid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **departmentname** | varchar(30) | NO   | UNI |         |       |         |
| **sortorder** | int(11) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | departmentid | 1   | 10          | A         | 0    | 0       |
| **ix\_g\_department\_departmentname** | 0    | 0      | 0      | departmentname | 1   | 10          | A         | 0    | 0       |


### Default Data ###
| departmentid | departmentname | sortorder |
|:-------------|:---------------|:----------|
| -1           | Unknown        | -1        |
| 147          | Infants        | 1         |
| 149          | Toddlers       | 2         |
| 150          | Preschool      | 3         |
| 151          | PreKindergarten | 4         |
| 152          | Kindergarten   | 5         |
| 153          | School Age     | 6         |
| 154          | Administration | 7         |
| 155          | Transportation | 8         |
| 156          | Food Service   | 9         |