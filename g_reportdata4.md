# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_reportdata4 ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **reportid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **keyid1** | int(11) | NO   | MUL |         |       |         |
| **keyid2** | int(11) | NO   | MUL |         |       |         |
| **employeechildschoolid** | int(11) | NO   | MUL |         |       |         |
| **recorddate** | datetime | NO   |     |         |       |         |
| **primarylocationid** | int(11) | NO   |     |         |       |         |
| **scheduletimes** | varchar(256) | NO   |     |         |       |         |
| **schedulelocations** | varchar(256) | NO   |     |         |       |         |
| **scheduletotalminutes** | int(11) | NO   |     |         |       |         |
| **attendtimes** | varchar(256) | NO   |     |         |       |         |
| **attendlocations** | varchar(256) | NO   |     |         |       |         |
| **attendtotalminutes** | int(11) | NO   |     |         |       |         |
| **outsideofscheduleminutes** | int(11) | NO   |     |         |       |         |
| **greaterthanscheduleminutes** | int(11) | NO   |     |         |       |         |
| **havetimecardintime** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **ix\_g\_reportdata4\_employeechildschoolid** | 1    | 1      | 1      | employeechildschoolid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata4\_keyid1** | 1    | 1      | 1      | keyid1 | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata4\_keyid2** | 1    | 1      | 1      | keyid2 | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata4\_kiddiecareuserid** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **ix\_g\_reportdata4\_reportid** | 1    | 1      | 1      | reportid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data