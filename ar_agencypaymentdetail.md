# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_agencypaymentdetail ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **agencypaymentdetailid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **agencypaymentid** | int(11) | NO   | MUL |         |       |         |
| **accountledgerid** | int(11) | NO   | MUL |         |       |         |
| **appliedamount** | decimal(18,2) | NO   |     |         |       |         |
| **adjustmentamount** | decimal(18,2) | NO   |     |         |       |         |
| **adjustmentcodeid** | int(11) | NO   | MUL |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | agencypaymentdetailid | 1   | 0           | A         | 0    | 0       |
| **ix\_ar\_agencypaymentdetailuniquerecord** | 0    | 0      | 0      | agencypaymentid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_agencypaymentdetailuniquerecord** | 0    | 0      | 0      | accountledgerid | 2   | 0           | A         | 0    | 0       |
| **fk\_ar\_agencypaymentdetail\_ar\_accountledger** | 1    | 1      | 1      | accountledgerid | 1   |             | A         | 1    | 1       |
| **fk\_ar\_agencypaymentdetail\_ar\_agencyadjustcodes** | 1    | 1      | 1      | adjustmentcodeid | 1   |             | A         | 1    | 1       |


### Default Data ###
No Default Data