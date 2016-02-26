# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_usergrouplimits ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **usergrouplimitsid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **usergrouptid** | int(11) | NO   | UNI |         |       |         |
| **alias** | varchar(255) | NO   |     |         |       |         |
| **front\_end** | int(1) | NO   |     | 0       |       |         |
| **config** | int(1) | NO   |     | 0       |       |         |
| **gen**   | int(1) | NO   |     | 0       |       |         |
| **ar**    | int(1) | NO   |     | 0       |       |         |
| **ap**    | int(1) | NO   |     | 0       |       |         |
| **fp**    | int(1) | NO   |     | 0       |       |         |
| **ed**    | int(1) | NO   |     | 0       |       |         |
| **pr**    | int(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | usergrouplimitsid | 1   | 1           | A         | 0    | 0       |
| **ix\_g\_usergrouplimits** | 0    | 0      | 0      | usergrouptid | 1   | 1           | A         | 0    | 0       |


### Default Data ###
| usergrouplimitsid | usergrouptid | alias | front\_end | config | gen | ar | ap | fp | ed | pr |
|:------------------|:-------------|:------|:-----------|:-------|:----|:---|:---|:---|:---|:---|
| 62                | 200          | System Admin | 4          | 4      | 4   | 4  | 4  | 4  | 4  | 4  |