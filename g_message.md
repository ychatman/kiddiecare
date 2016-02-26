# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_message ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **messageid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **kiddiecareuserid** | int(11) | NO   | MUL |         |       |         |
| **startdate** | datetime | NO   |     |         |       |         |
| **enddate** | datetime | NO   |     |         |       |         |
| **messagetypetid** | int(11) | NO   | MUL |         |       |         |
| **showonce** | tinyint(1) | NO   |     |         |       |         |
| **criteria** | longtext | NO   |     |         |       |         |
| **messagetext** | longtext | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | messageid | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_message\_g\_kiddiecareuser** | 1    | 1      | 1      | kiddiecareuserid | 1   |             | A         | 1    | 1       |
| **fk\_g\_messages\_g\_schools** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **fk\_g\_message\_g\_typestable** | 1    | 1      | 1      | messagetypetid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data