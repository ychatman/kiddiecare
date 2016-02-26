# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_scheduleoverrides ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **scheduleoverridesid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **overridedate** | datetime | NO   |     |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |
| **inminute** | int(11) | NO   |     |         |       |         |
| **outminute** | int(11) | NO   |     |         |       |         |
| **comment** | varchar(30) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | scheduleoverridesid | 1   | 0           | A         | 0    | 0       |
| **fk\_ar\_scheduleoverrides\_ar\_childschool** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_scheduleoverrides\_g\_workarea** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data