# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_glaccount ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **glaccountid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **glaccountgroupid** | int(11) | NO   | MUL |         |       |         |
| **glaccountnumber** | varchar(15) | NO   | UNI |         |       |         |
| **description** | varchar(35) | NO   | MUL |         |       |         |
| **isactive** | tinyint(1) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | glaccountid | 1   | 87          | A         | 0    | 0       |
| **ix\_g\_glaccountnumber** | 0    | 0      | 0      | glaccountnumber | 1   | 87          | A         | 0    | 0       |
| **ix\_g\_glaccountdescription** | 1    | 1      | 1      | description | 1   |             | A         | 1    | 1       |
| **ix\_g\_glaccountgroupid** | 1    | 1      | 1      | glaccountgroupid | 1   |             | A         | 1    | 1       |


### Default Data ###
| glaccountid | glaccountgroupid | glaccountnumber | description | isactive | sortorder |
|:------------|:-----------------|:----------------|:------------|:---------|:----------|
| -100        | 2                | 900.00          | Undeposited Payments | 1        | 1         |
| -1          | -1               | 0.00            | Sys         | 1        | 0         |
| 1           | 2                | 1000.00         | My Checking Account | 1        | 2         |
| 2           | 2                | 1001.00         | My Savings Account | 1        | 3         |
| 3           | 2                | 1002.00         | My Money Market Account | 1        | 7         |
| 4           | 2                | 1110.00         | Accounts Receivable | 1        | 9         |
| 5           | 2                | 1140.00         | Bad Debt Allowance | 1        | 12        |
| 6           | 2                | 1120.00         | Employee Advances | 1        | 10        |
| 7           | 3                | 1200.00         | Inventory   | 1        | 1         |
| 8           | 3                | 1205.00         | Office Equipment | 1        | 2         |
| 9           | 3                | 1210.00         | Depreciate-Off Equip | 1        | 3         |
| 10          | 3                | 1215.00         | Furniture   | 1        | 4         |
| 11          | 3                | 1220.00         | Depreciate-Furniture | 1        | 5         |
| 12          | 3                | 1225.00         | Vehicles    | 1        | 6         |
| 13          | 3                | 1230.00         | Depreciate-Vehicles | 1        | 7         |
| 14          | 3                | 1235.00         | Buildings   | 1        | 8         |
| 15          | 3                | 1240.00         | Depreciate-Buildings | 1        | 9         |
| 16          | 3                | 1245.00         | Land        | 1        | 10        |
| 17          | 4                | 1300.00         | Long Term Investment | 1        | 1         |
| 19          | 5                | 2000.00         | Accounts Payable | 1        | 1         |
| 20          | 5                | 2005.00         | Customer Deposit | 1        | 2         |
| 21          | 5                | 2010.00         | Federal Tax Liability | 1        | 3         |
| 22          | 5                | 2015.00         | FICA (Social Security) | 1        | 4         |
| 23          | 5                | 2020.00         | FICA (Medicare) | 1        | 5         |
| 24          | 5                | 2025.00         | State Tax Liability | 1        | 6         |
| 25          | 5                | 2030.00         | Local Tax Liability | 1        | 7         |
| 26          | 5                | 2035.00         | Worker's Comp | 1        | 8         |
| 27          | 5                | 2040.00         | Health Plan | 1        | 9         |
| 28          | 5                | 2045.00         | Retirement Plan | 1        | 10        |
| 29          | 5                | 2050.00         | Employee Child Care | 1        | 11        |
| 30          | 6                | 2100.00         | Mortgages   | 1        | 1         |
| 31          | 6                | 2105.00         | Long Term Notes | 1        | 2         |
| 32          | 7                | 3000.00         | Owner's Equity | 1        | 1         |
| 33          | 7                | 3010.00         | Profit & Loss | 1        | 2         |
| 34          | 8                | 4000.00         | Tuition     | 1        | 1         |
| 35          | 8                | 4010.00         | Tuition: Drop In | 1        | 4         |
| 36          | 8                | 4015.00         | Registration | 1        | 5         |
| 37          | 8                | 4020.00         | Activity Fees | 1        | 6         |
| 38          | 8                | 4025.00         | Late Fees   | 1        | 7         |
| 39          | 8                | 4030.00         | NSF Fees    | 1        | 8         |
| 40          | 8                | 4035.00         | Misc. Charges | 1        | 9         |
| 41          | 8                | 4040.00         | Customer Refund | 1        | 10        |
| 42          | 9                | 4100.00         | Interest Revenue | 1        | 1         |
| 43          | 9                | 4105.00         | Other Revenue | 1        | 2         |
| 44          | 9                | 4190.00         | Bad Debt    | 1        | 5         |
| 45          | 10               | 5000.00         | Office Supplies | 1        | 1         |
| 46          | 10               | 5005.00         | School Supplies | 1        | 2         |
| 47          | 10               | 5010.00         | Teacher Supplies | 1        | 3         |
| 48          | 10               | 5015.00         | Phone Company | 1        | 4         |
| 49          | 10               | 5020.00         | Electric Company | 1        | 5         |
| 50          | 10               | 5025.00         | Insurance   | 1        | 6         |
| 51          | 10               | 5030.00         | Maintenance | 1        | 7         |
| 52          | 10               | 5035.00         | Amortization | 1        | 8         |
| 53          | 10               | 5040.00         | Depreciation | 1        | 9         |
| 54          | 10               | 5045.00         | Rent & Leases | 1        | 10        |
| 55          | 10               | 5050.00         | Payroll-Administration | 1        | 11        |
| 56          | 10               | 5055.00         | Payroll-Teachers | 1        | 12        |
| 57          | 10               | 5060.00         | Payroll-Assistant Teachers | 1        | 13        |
| 58          | 10               | 5070.00         | Payroll-Vacation Benefits | 1        | 15        |
| 59          | 10               | 5075.00         | Payroll-Sick Time Benefits | 1        | 16        |
| 60          | 10               | 5080.00         | Payroll-Training Benefits | 1        | 17        |
| 61          | 10               | 5085.00         | Contract Labor | 1        | 18        |
| 62          | 10               | 5090.00         | Consulting Fees | 1        | 19        |
| 63          | 10               | 5095.00         | Bank Fees   | 1        | 20        |
| 64          | 10               | 5200.00         | Bad Debt Loss | 1        | 22        |
| 65          | 11               | 5500.00         | FICA Share (Social Security) | 1        | 1         |
| 66          | 11               | 5510.00         | FUTA Tax    | 1        | 3         |
| 67          | 11               | 5530.00         | Workman's Comp | 1        | 5         |
| 68          | 12               | 5800.00         | Travel      | 1        | 1         |
| 69          | 12               | 5805.00         | Meals       | 1        | 2         |
| 70          | 12               | 5810.00         | Lodging     | 1        | 3         |
| 71          | 12               | 5815.00         | Personal Expenses | 1        | 4         |
| 102         | 9                | 4110.00         | Agency Transfer | 1        | 3         |
| 103         | 9                | 4115.00         | Agency Adjustment | 1        | 4         |
| 104         | 5                | 2090.00         | Credit Card Debt | 1        | 12        |
| 105         | 2                | 1130.00         | Petty Cash  | 1        | 11        |
| 106         | 8                | 4045.00         | Grants, Donations, Fundraisers | 1        | 11        |
| 107         | 8                | 4050.00         | Food Program Reimbursement | 1        | 12        |
| 108         | 8                | 4005.00         | Tuition: Subsidized | 1        | 2         |
| 109         | 11               | 5505.00         | FICA Share (Medicare) | 1        | 2         |
| 110         | 11               | 5515.00         | SUTA Tax    | 1        | 4         |
| 111         | 12               | 5820.00         | Entertainment | 1        | 5         |
| 112         | 10               | 5100.00         | Interest Paid | 1        | 21        |
| 113         | 8                | 4006.00         | Tuition: Employee Child Care | 1        | 3         |
| 114         | 2                | 1003.00         | My CD Account | 1        | 8         |
| 115         | 11               | 5535.00         | Other Tax   | 1        | 6         |
| 116         | 10               | 5065.00         | Payroll-Other | 1        | 14        |