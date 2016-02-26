# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingboxformula ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **billingboxformulaid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **formulaname** | varchar(40) | NO   | UNI |         |       |         |
| **tooltip** | varchar(150) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | billingboxformulaid | 1   | 13          | A         | 0    | 0       |
| **ix\_ar\_billingboxformula\_uniqueformulaname** | 0    | 0      | 0      | formulaname | 1   | 13          | A         | 0    | 0       |


### Default Data ###
| billingboxformulaid | formulaname | tooltip | sortorder |
|:--------------------|:------------|:--------|:----------|
| 231                 | After Hours Pickup | Late Pickup by the minute | 62        |
| 232                 | Hourly (Attendance) | Hourly rate for dates based on attendance | 63        |
| 235                 | Hourly (Extra Hours) | Hourly rate for more hours than scheduled | 68        |
| 236                 | Hourly (Schedule) | Hourly rate for dates based on schedule | 65        |
| 237                 | Hourly (Overtime) | Hourly rate for overtime outside of schedule | 67        |
| 238                 | Half/Full Day(Attendance) | Daily rate based on attendance | 69        |
| 245                 | Agency Not Allowed Absent Days | Bill family the daily rate any days over max allowed absences | 83        |
| 246                 | Agency w/Monthly Absent Days | Bill agency the daily rate plus absent days allowed. | 82        |
| 249                 | Before/After (Schedule) | Before and after school billing based on schedule | 80        |
| 250                 | Half/Full day(Extra Charge) | Extra charges for additional attendance | 76        |
| 251                 | Half/Full Day (Schedule) | Daily rate based on schedule | 71        |
| 252                 | Before/After(Extra Charge) | Extra charges for additional attendance | 81        |
| 253                 | Before/After (Attendance) | Before and after school billing based on attendance | 78        |