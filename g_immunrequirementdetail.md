# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_immunrequirementdetail ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **immunrequirementid** | int(11) | NO   | PRI |         |       |         |
| **lineid** | int(11) | NO   | PRI |         |       |         |
| **linetype** | int(11) | NO   |     |         |       |         |
| **linevalue** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | immunrequirementid | 1   |             | A         | 0    | 0       |
| **PRIMARY** | 0    | 0      | 0      | lineid | 2   | 30          | A         | 0    | 0       |


### Default Data ###
| immunrequirementid | lineid | linetype | linevalue |
|:-------------------|:-------|:---------|:----------|
| 76                 | 0      | 1        | 12        |
| 76                 | 1      | 4        | 36        |
| 82                 | 0      | 1        | 2         |
| 82                 | 1      | 4        | 2         |
| 82                 | 2      | 4        | 2         |
| 82                 | 3      | 4        | 9         |
| 83                 | 0      | 1        | 1         |
| 83                 | 1      | 4        | 5         |
| 92                 | 0      | 1        | 2         |
| 92                 | 1      | 4        | 2         |
| 92                 | 2      | 4        | 2         |
| 93                 | 0      | 1        | 2         |
| 93                 | 1      | 4        | 2         |
| 93                 | 2      | 4        | 2         |
| 93                 | 3      | 4        | 8         |
| 94                 | 0      | 1        | 2         |
| 94                 | 1      | 4        | 2         |
| 94                 | 2      | 4        | 2         |
| 94                 | 3      | 4        | 6         |
| 95                 | 0      | 1        | 2         |
| 95                 | 1      | 4        | 2         |
| 95                 | 2      | 4        | 2         |
| 96                 | 0      | 1        | 6         |
| 96                 | 1      | 5        | 12        |
| 97                 | 0      | 1        | 12        |
| 97                 | 1      | 4        | 36        |
| 98                 | 0      | 1        | 12        |
| 98                 | 1      | 4        | 6         |
| 104                | 0      | 2        | 30        |
| 104                | 1      | 5        | 12        |