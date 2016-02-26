# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_enrollment ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **enrollmentid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **childschoolid** | int(11) | NO   | MUL |         |       |         |
| **startdate** | datetime | NO   |     |         |       |         |
| **enddate** | datetime | NO   |     |         |       |         |
| **enrollmentstatustid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | enrollmentid | 1   | 1           | A         | 0    | 0       |
| **idx\_enrollmentstatustid\_childschoolid\_startdate\_enddate** | 1    | 1      | 1      | enrollmentstatustid | 1   |             | A         | 1    | 1       |
| **idx\_enrollmentstatustid\_childschoolid\_startdate\_enddate** | 1    | 1      | 1      | childschoolid | 2   |             | A         | 1    | 1       |
| **idx\_enrollmentstatustid\_childschoolid\_startdate\_enddate** | 1    | 1      | 1      | startdate | 3   |             | A         | 1    | 1       |
| **idx\_enrollmentstatustid\_childschoolid\_startdate\_enddate** | 1    | 1      | 1      | enddate | 4   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid** | 1    | 1      | 1      | enrollmentstatustid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid** | 1    | 1      | 1      | childschoolid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid\_enddate** | 1    | 1      | 1      | enrollmentstatustid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid\_enddate** | 1    | 1      | 1      | childschoolid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid\_enddate** | 1    | 1      | 1      | enddate | 3   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid\_startdate** | 1    | 1      | 1      | enrollmentstatustid | 1   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid\_startdate** | 1    | 1      | 1      | childschoolid | 2   |             | A         | 1    | 1       |
| **ix\_ar\_enrollment\_enrollmentstatustid\_childschoolid\_startdate** | 1    | 1      | 1      | startdate | 3   |             | A         | 1    | 1       |
| **ix\_childschoollid** | 1    | 1      | 1      | childschoolid | 1   |             | A         | 1    | 1       |


### Default Data ###
| enrollmentid | childschoolid | startdate | enddate | enrollmentstatustid |
|:-------------|:--------------|:----------|:--------|:--------------------|
| -1           | -1            | 2008-01-01 00:00:00 | 2070-12-31 23:59:00 | 287                 |