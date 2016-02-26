# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_userdefineddata ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **userdefineddataid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **userdefinedfieldid** | int(11) | NO   | MUL |         |       |         |
| **targetid** | int(11) | NO   |     |         |       |         |
| **txtvalue** | varchar(255) | YES  |     |         |       |         |
| **datvalue** | datetime | YES  |     |         |       |         |
| **boovalue** | tinyint(1) | YES  |     |         |       |         |
| **decvalue** | decimal(18,2) | YES  |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | userdefineddataid | 1   | 0           | A         | 0    | 0       |
| **ix\_g\_userdefined\_uniquerecord** | 0    | 0      | 0      | userdefinedfieldid | 1   |             | A         | 0    | 0       |
| **ix\_g\_userdefined\_uniquerecord** | 0    | 0      | 0      | targetid | 2   | 0           | A         | 0    | 0       |
| **idx\_udffieldid\_boovalue** | 1    | 1      | 1      | userdefinedfieldid | 1   |             | A         | 1    | 1       |
| **idx\_udffieldid\_boovalue** | 1    | 1      | 1      | boovalue | 2   |             | A         | 1    | 1       |
| **idx\_udffieldid\_datvalue** | 1    | 1      | 1      | userdefinedfieldid | 1   |             | A         | 1    | 1       |
| **idx\_udffieldid\_datvalue** | 1    | 1      | 1      | datvalue | 2   |             | A         | 1    | 1       |
| **idx\_udffieldid\_decvalue** | 1    | 1      | 1      | userdefinedfieldid | 1   |             | A         | 1    | 1       |
| **idx\_udffieldid\_decvalue** | 1    | 1      | 1      | decvalue | 2   |             | A         | 1    | 1       |
| **idx\_udffieldid\_txtvalue** | 1    | 1      | 1      | userdefinedfieldid | 1   |             | A         | 1    | 1       |
| **idx\_udffieldid\_txtvalue** | 1    | 1      | 1      | txtvalue | 2   |             | A         | 1    | 1       |


### Default Data ###
No Default Data