# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_glaccountgroup ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **glaccountgroupid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **glaccounttypeid** | int(11) | NO   | MUL |         |       |         |
| **glaccounttype** | int(11) | NO   |     |         |       |         |
| **description** | varchar(35) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | glaccountgroupid | 1   | 12          | A         | 0    | 0       |
| **ix\_g\_glaccount\_glaccounttypeid** | 1    | 1      | 1      | glaccounttypeid | 1   |             | A         | 1    | 1       |
| **ix\_g\_glaccountgroup\_glaccountgroupid** | 1    | 1      | 1      | glaccountgroupid | 1   |             | A         | 1    | 1       |


### Default Data ###
| glaccountgroupid | glaccounttypeid | glaccounttype | description | sortorder |
|:-----------------|:----------------|:--------------|:------------|:----------|
| -1               | 0               | 0             | SysOwned    | 0         |
| 2                | 1               | -1            | Current Assets | 1         |
| 3                | 1               | -1            | Long Term Assets | 2         |
| 4                | 1               | -1            | Other Assets | 3         |
| 5                | 2               | 1             | Current Liabilities | 1         |
| 6                | 2               | 1             | Long Term Liabilities | 2         |
| 7                | 3               | 1             | Equity Accounts | 1         |
| 8                | 4               | 1             | Revenue From Services | 1         |
| 9                | 4               | 1             | Other Revenue | 2         |
| 10               | 5               | -1            | Operational Expenses | 1         |
| 11               | 5               | -1            | Tax Expenses | 2         |
| 12               | 5               | -1            | Other Expenses | 3         |