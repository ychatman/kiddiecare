# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_chargecreditdesc ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **chargecreditdescid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **chargecredittid** | int(11) | NO   | MUL |         |       |         |
| **description** | varchar(30) | NO   |     |         |       |         |
| **glaccountid** | int(11) | NO   | MUL |         |       |         |
| **chargecredittype** | int(11) | YES  |     | -1      |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | chargecreditdescid | 1   | 52          | A         | 0    | 0       |
| **fk\_ar\_chargecreditdesc\_g\_glaccount** | 1    | 1      | 1      | glaccountid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_chargecreditdesc\_g\_typestable** | 1    | 1      | 1      | chargecredittid | 1   |             | A         | 1    | 1       |


### Default Data ###
| chargecreditdescid | chargecredittid | description | glaccountid | chargecredittype | sortorder |
|:-------------------|:----------------|:------------|:------------|:-----------------|:----------|
| -215               | 153             | Deposit Refund: Supplies | 20          | -1               | 4         |
| -214               | 153             | Deposit Refund: Other | 20          | -1               | 5         |
| -213               | 153             | Deposit Refund: General | 20          | -1               | 1         |
| -212               | 153             | Deposit Refund: Fall | 20          | -1               | 3         |
| -211               | 153             | Deposit Refund: Summer | 20          | -1               | 2         |
| -115               | 151             | Deposit: Supplies | 20          | 1                | 5         |
| -114               | 151             | Deposit: Other | 20          | 1                | 6         |
| -113               | 151             | Deposit Tuition: General | 20          | 1                | 2         |
| -112               | 151             | Deposit Tuition: Fall | 20          | 1                | 4         |
| -111               | 151             | Deposit Tuition: Summer | 20          | 1                | 3         |
| -100               | 151             | Balance Forward | 4           | 1                | 1         |
| 151                | 149             | Tuition Infant | 34          | 1                | 1         |
| 153                | 149             | Tuition Toddler | 34          | 1                | 3         |
| 154                | 149             | Tuition Preschool | 34          | 1                | 4         |
| 155                | 149             | Tuition PreK | 34          | 1                | 5         |
| 156                | 149             | Tuition Kindergarten | 34          | 1                | 6         |
| 157                | 149             | Tuition School Age | 34          | 1                | 7         |
| 160                | 150             | Activity Fee | 37          | 1                | 1         |
| 161                | 150             | Registration | 36          | 1                | 2         |
| 162                | 150             | Diaper Fee  | 40          | 1                | 3         |
| 163                | 150             | Returned Check Fee | 39          | 1                | 4         |
| 164                | 150             | Late Pmt    | 38          | 1                | 5         |
| 165                | 150             | Late Pick Up | 38          | 1                | 6         |
| 166                | 150             | Customer Refund | 41          | 1                | 7         |
| 168                | 150             | Miscellaneous Charge | 40          | 1                | 9         |
| 169                | 152             | Absent / Vacation Credit | 34          | -1               | 4         |
| 171                | 152             | Family Discount | 34          | -1               | 1         |
| 172                | 152             | Employee Discount | 34          | -1               | 2         |
| 174                | 152             | Agency Adjustment | 103         | -1               | 7         |
| 175                | 152             | Bad Debt Write Off | 44          | -1               | 9         |
| 176                | 152             | Miscellaneous Credit | 40          | -1               | 10        |
| 177                | 155             | Pmt by Check | -100        | -1               | 1         |
| 178                | 155             | Pmt by Money Order | -100        | -1               | 2         |
| 179                | 155             | Pmt by Cash | -100        | -1               | 3         |
| 181                | 155             | Pmt by Agency | -100        | -1               | 5         |
| 182                | 155             | Returned Check (Negative Pmt) | -100        | -1               | 6         |
| 183                | 155             | Pmt Tuition Express: CC POS | -100        | -1               | 9         |
| 184                | 155             | Pmt Tuition Express: ACH Batch | -100        | -1               | 7         |
| 185                | 155             | Pmt Tuition Express: CC Batch | -100        | -1               | 8         |
| 186                | 150             | Food Revenue | 107         | 1                | 10        |
| 187                | 150             | Fund Raiser | 106         | 1                | 11        |
| 188                | 150             | Donations   | 106         | 1                | 12        |
| 189                | 150             | Merchandise | 43          | 1                | 13        |
| 190                | 152             | Payroll Deduction | 113         | -1               | 3         |
| 191                | 152             | Transfer to Private Payer | 102         | -1               | 8         |
| 193                | 150             | Transfer from Agency | 34          | 1                | 14        |
| 195                | 149             | Parent Co-Pay Fee | 34          | 1                | 12        |
| 197                | 149             | Summer Camp | 34          | 1                | 10        |
| 198                | 149             | Tuition Drop In | 35          | 1                | 11        |
| 199                | 155             | Declined ACH Payment | -100        | -1               | 10        |
| 200                | 155             | Declined CC Payment | -100        | -1               | 11        |
| 201                | 155             | Credit Card Refund | -100        | -1               | 12        |