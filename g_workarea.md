# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_workarea ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **workareaid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **schoolid** | int(11) | NO   | MUL |         |       |         |
| **workareaname** | varchar(30) | NO   |     |         |       |         |
| **departmentid** | int(11) | NO   | MUL |         |       |         |
| **isactive** | tinyint(1) | NO   |     | 0       |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | workareaid | 1   | 11          | A         | 0    | 0       |
| **ix\_g\_workarea** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **ix\_g\_workarea\_schoolid** | 1    | 1      | 1      | schoolid | 1   |             | A         | 1    | 1       |
| **fk\_g\_workarea\_g\_department** | 1    | 1      | 1      | departmentid | 1   |             | A         | 1    | 1       |


### Default Data ###
| workareaid | schoolid | workareaname | departmentid | isactive | sortorder |
|:-----------|:---------|:-------------|:-------------|:---------|:----------|
| -1         | -1       | Unknown      | -1           | 1        | -1        |
| 228        | 1        | Office       | 154          | 1        | 8         |
| 229        | 1        | Infants Room | 147          | 1        | 1         |
| 233        | 1        | Toddlers Room | 149          | 1        | 2         |
| 235        | 1        | Preschool Room | 150          | 1        | 3         |
| 237        | 1        | PreK Room    | 151          | 1        | 4         |
| 239        | 1        | Kindergarten Room | 152          | 1        | 5         |
| 241        | 1        | Before School | 153          | 1        | 6         |
| 242        | 1        | After School | 153          | 1        | 7         |
| 243        | 1        | Bus / Van    | 155          | 1        | 9         |
| 245        | 1        | Kitchen      | 156          | 1        | 10        |