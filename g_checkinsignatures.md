# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_checkinsignatures ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **signatureid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **personid** | int(11) | NO   | MUL |         |       |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **inout** | tinyint(1) | NO   |     |         |       |         |
| **datetime** | datetime | NO   |     |         |       |         |
| **signature** | longblob | NO   |     |         |       |         |
| **workareaid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | signatureid | 1   | 0           | A         | 0    | 0       |
| **fk\_g\_checkinsignatures\_ar\_childschool** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |
| **fk\_g\_checkinsignatures\_g\_person** | 1    | 1      | 1      | personid | 1   |             | A         | 1    | 1       |
| **fk\_g\_checkinsignatures\_g\_workarea** | 1    | 1      | 1      | workareaid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data