# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_trackingcategories ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **trackingcategoryid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **trackingextid** | int(11) | NO   | MUL |         |       |         |
| **description** | varchar(30) | NO   |     |         |       |         |
| **categoryclass** | varchar(3) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **tooltip** | varchar(150) | NO   |     |         |       |         |
| **active** | tinyint(1) | NO   |     | 0       |       |         |
| **isschoolspecific** | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | trackingcategoryid | 1   | 15          | A         | 0    | 0       |
| **fk\_g\_trackingcategories\_typestable** | 1    | 1      | 1      | trackingextid | 1   |             | A         | 1    | 1       |


### Default Data ###
| trackingcategoryid | trackingextid | description | categoryclass | sortorder | tooltip | active | isschoolspecific |
|:-------------------|:--------------|:------------|:--------------|:----------|:--------|:-------|:-----------------|
| 306                | 51            | Private Pay/Agency | mul           | 3         | Is the family private pay or assigned to an agency? | 1      | 0                |
| 308                | 48            | Allergies   | mul           | 1         | List of possible allergies. | 1      | 0                |
| 320                | 48            | Behaviors   | mul           | 2         | Behavioral issues. | 1      | 0                |
| 321                | 51            | Marital Status | sng           | 2         | Select a status like single, married, etc. | 1      | 0                |
| 322                | 51            | Marketing   | mul           | 1         | How did you hear about us? | 1      | 0                |
| 323                | 51            | Payment Preference | sng           | 4         | How family pays. | 1      | 0                |
| 324                | 51            | Parent Forms | mul           | 5         | Required forms. | 1      | 0                |
| 325                | 51            | Parent Volunteer | mul           | 6         | Parent volunteer opportunities. | 1      | 0                |
| 326                | 51            | General Information | mul           | 7         | School directory permission & misc. | 1      | 0                |
| 327                | 48            | Potty Trained | sng           | 3         | Is the child potty trained? | 1      | 0                |
| 328                | 48            | Child Forms | mul           | 4         | Required forms for child. | 1      | 0                |
| 329                | 48            | Transportation | mul           | 5         | Bus transportation. | 1      | 0                |
| 330                | 48            | Program     | sng           | 6         | Part-time, full-time, etc. | 1      | 0                |
| 331                | 48            | Activities  | mul           | 7         | Extra activities. | 1      | 0                |
| 332                | 49            | Certifications | mul           | 1         | Current staff certifications. | 1      | 0                |