# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_elements ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **elementid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **elementname** | varchar(128) | NO   | UNI |         |       |         |
| **minimumusergrouptid** | int(11) | NO   | MUL |         |       |         |
| **active** | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | elementid | 1   | 7           | A         | 0    | 0       |
| **ix\_g\_elements\_elementname** | 0    | 0      | 0      | elementname | 1   | 7           | A         | 0    | 0       |
| **fk\_g\_elements\_g\_typestable** | 1    | 1      | 1      | minimumusergrouptid | 1   |             | A         | 1    | 1       |


### Default Data ###
| elementid | elementname | minimumusergrouptid | active |
|:----------|:------------|:--------------------|:-------|
| 48        | kiddiecare.Component.Element.ClassroomChildrenCounts.dll | 138                 | 1      |
| 49        | kiddiecare.Component.Element.ClassroomChildrenTeacherCounts.dll | 138                 | 1      |
| 50        | kiddiecare.Component.Element.EmployeeLocationsNow.dll | 138                 | 1      |
| 51        | kiddiecare.Component.Element.FTESummaryElement.dll | 138                 | 1      |
| 52        | kiddiecare.Component.Element.RevenuesViewer.dll | 138                 | 1      |
| 53        | kiddiecare.Component.Element.UpcomingBirthdays.dll | 138                 | 1      |
| 56        | kiddiecare.Component.Element.AccountLedgerRollup.dll | 138                 | 1      |