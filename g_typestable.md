# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_typestable ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **typeid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **groupname** | varchar(30) | NO   | MUL |         |       |         |
| **typedescription** | varchar(64) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **comment** | varchar(50) | NO   |     |         |       |         |
| **active** | tinyint(1) | NO   |     |         |       |         |
| **sysitem** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | typeid | 1   | 145         | A         | 0    | 0       |
| **ix\_g\_typestable\_groupname\_typedescription** | 0    | 0      | 0      | groupname | 1   |             | A         | 0    | 0       |
| **ix\_g\_typestable\_groupname\_typedescription** | 0    | 0      | 0      | typedescription | 2   | 145         | A         | 0    | 0       |


### Default Data ###
| typeid | groupname | typedescription | sortorder | comment | active | sysitem |
|:-------|:----------|:----------------|:----------|:--------|:-------|:--------|
| 1      | PhoneNumber | Cell            | 2         | cell phone number | 1      | 1       |
| 2      | PhoneNumber | Home            | 1         | home phone number | 1      | 1       |
| 3      | PhoneNumber | Work            | 6         | work phone number | 1      | 1       |
| 11     | ChildRel  | Mom             | 3         |         | 1      | 1       |
| 12     | ChildRel  | Dad             | 4         |         | 1      | 1       |
| 15     | AccountLedgerRel | Standard        | 0         |  ledger card entry type | 1      | 1       |
| 16     | AccountLedgerRel | Agency          | 1         |  ledger card entry type | 1      | 1       |
| 24     | ChildRel  | Family Friend   | 11        |         | 1      | 1       |
| 25     | ChildRel  | Doctor          | 18        |         | 1      | 1       |
| 26     | ChildRel  | Dentist         | 7         |         | 1      | 1       |
| 27     | EmployeeRel | Emergency Contact | 6         |         | 1      | 1       |
| 28     | EmployeeRel | Doctor          | 11        |         | 1      | 1       |
| 29     | EmployeeRel | Dentist         | 12        |         | 1      | 1       |
| 34     | Payment   | ???? Payment by check | 0         |         | 1      | 1       |
| 35     | Payment   | ???? Payment by Cash | 1         |         | 1      | 1       |
| 36     | Payment   | ???? Payment by CC | 2         |         | 1      | 1       |
| 37     | Payment   | ???? Payment by TE | 3         |         | 1      | 1       |
| 38     | Payment   | ???? Payments on hand | 4         |         | 1      | 1       |
| 41     | AccessCode | kiddiecare Timeclock (Alpha Only) | 1         | 6 Char code for kiddiecare TimeClock | 1      | 1       |
| 42     | AccessCode | TimeKeeper Key (Alphanumeric) | 2         | 24 Char code for TimeKeeper System  | 1      | 1       |
| 43     | AccessCode | kiddiecare Timeclock - DISABLED | 3         | TimeClock code that is locked out (disabled) | 1      | 1       |
| 48     | TrackingEx | Child           | 1         | Tracking ExposedTo code | 1      | 1       |
| 49     | TrackingEx | Employee        | 2         | Tracking ExposedTo code | 1      | 1       |
| 50     | TrackingEx | Vendor          | 3         | Tracking ExposedTo code | 1      | 1       |
| 51     | TrackingEx | Account         | 0         | Tracking ExposedTo code | 1      | 1       |
| 52     | TrackingCat | Bus runs        | 1         | Tracking category | 1      | 1       |
| 53     | TrackingCat | Allergy         | 2         | Tracking category | 1      | 1       |
| 54     | TrackingCat | Medical alert   | 3         | Tracking category | 1      | 1       |
| 55     | TrackingCat | Payroll         | 4         | Tracking category | 1      | 1       |
| 56     | TrackingCat | AR Due          | 5         | Tracking category | 1      | 1       |
| 57     | TrackingCat | Activity        | 6         | Tracking category | 1      | 1       |
| 58     | TrackingCat | Pay type        | 7         | Tracking category | 1      | 1       |
| 59     | TrackingCat | Neighborhood    | 8         | Tracking category | 1      | 1       |
| 60     | TrackingCat | Agency Process  | 9         | Tracking category | 1      | 1       |
| 63     | Account   | AR              | 0         | ???? This account brings me money | 1      | 1       |
| 64     | Account   | AP              | 1         | ???? This account costs me money | 1      | 1       |
| 65     | TrackingCat | Account Status  | 10        | Account status | 1      | 1       |
| 68     | UserDefinedEx | Child           | 1         |         | 1      | 1       |
| 69     | UserDefinedEx | Account         | 0         |         | 1      | 1       |
| 71     | UserDefinedEx | Employee        | 2         |         | 1      | 1       |
| 72     | UserDefinedEx | Vendor          | 3         |         | 1      | 1       |
| 102    | LedgerLock | Tuition Express | 0         |         | 1      | 1       |
| 103    | LedgerLock | Agency Charge - Payment Applied | 1         |         | 1      | 1       |
| 104    | LedgerLock | Agency Method Posting | 2         |         | 1      | 1       |
| 120    | BillingBox | Contract        | 0         |         | 1      | 1       |
| 121    | BillingBox | Method          | 1         |         | 1      | 1       |
| 138    | UserGroup | System Supervisor | 0         | Ability to modify User Group Limits at will. | 1      | 1       |
| 143    | VarMask   | Boolean         | 3         | True/False | 1      | 1       |
| 144    | VarMask   | Percent         | 2         | ###.##  | 1      | 1       |
| 145    | VarMask   | Integer         | 1         | #       | 1      | 1       |
| 146    | VarMask   | Money           | 0         | #####.## | 1      | 1       |
| 147    | TEAccount | ???? BankAccount | 0         |         | 1      | 1       |
| 148    | TEAccount | ???? CreditCard | 1         |         | 1      | 1       |
| 149    | ChargeCredit | Tuition Charges | 0         |         | 1      | 1       |
| 150    | ChargeCredit | Other Charges   | 1         |         | 1      | 1       |
| 151    | ChargeCredit | Special Charges | 2         |         | 1      | 1       |
| 152    | ChargeCredit | Credits         | 3         |         | 1      | 1       |
| 153    | ChargeCredit | Special Credits | 4         |         | 1      | 1       |
| 155    | ChargeCredit | Payments        | 5         |         | 1      | 1       |
| 156    | Title     | ???? Owner      | 0         | kiddiecare user Type | 1      | 1       |
| 157    | Title     | Director        | 1         | kiddiecare user Type | 1      | 1       |
| 185    | ExposureCat | kiddiecare User | 0         | kiddiecare User to Regions and Schools | 1      | 1       |
| 186    | ExposureCat | Tracking Category | 1         | Tracking Category to Regions and schools | 1      | 1       |
| 187    | ExposureCat | User Defined Field | 2         | User Defined Field to Regions and Schools | 1      | 1       |
| 189    | ExposureCat | Immunization    | 3         | Immunization to Regions and schools | 1      | 1       |
| 190    | ExposureCat | AR Description  | 4         | AR Description to Regions and Schools | 1      | 1       |
| 268    | TimeInterval | OpenClose       | 0         | 15      | 1      | 1       |
| 287    | EnrollmentStatus | Enrolled        | 0         | Enrolled in the school | 1      | 1       |
| 290    | LedgerLock | Deposit Closed  | 3         | Item is Locked because it belongs to a closed depo | 1      | 1       |
| 291    | LedgerLock | Not Locked      | 4         | The item is not locked in any way | 1      | 1       |
| 294    | WorkStatus | Currently Employed | 0         | Employed at the school | 1      | 1       |
| 310    | ChildRel  | Unknown         | 0         | Unknown relationship to child | 1      | 1       |
| 312    | ExposureCat | Agency          | 5         | Agency to Regions and schools | 1      | 1       |
| 317    | LogSheetAccount | Letter Printed/Emailed | 0         |         | 0      | 1       |
| 330    | CheckinLanguage | English         | 0         | Display English | 1      | 1       |
| 332    | CheckinLanguage | Espa�ol         | 1         | Display Spanish | 1      | 1       |
| 375    | ImmunRequirement | Immunization    | 0         | System owned ImmunRequirement category 1 of 2 | 1      | 1       |
| 376    | ImmunRequirement | Requirement     | 1         | System owned ImmunRequirement category 2 of 2 | 1      | 1       |
| 478    | AutoBatchTID | Tuition Express | 0         | TE Type | 1      | 1       |
| 479    | AutoBatchTID | Other           | 4         | Other Types not fitting a specific category  | 1      | 1       |
| 480    | AutoBatchTID | ContractBilling | 1         | Auto Contract Billing Type  | 1      | 1       |
| 481    | AutoBatchTID | SelectedBilling | 2         | Auto Selected Billing type | 1      | 1       |
| 483    | AutoBatchTID | Billing Methods | 3         | Auto Method Billing Type | 1      | 1       |
| 489    | AutoBatchTID | LatePayment     | 5         | Late Payment Batch | 1      | 1       |
| 497    | LogSheetEmployee | Letter Printed/Emailed | 0         |         | 1      | 1       |
| 498    | LogSheetVendor | Letter Printed/Emailed | 0         |         | 1      | 1       |
| 503    | CheckinIssue | OutBeforeIn     | 0         | Out time before last in time. | 1      | 1       |
| 505    | CheckinIssue | InBeforeOut     | 1         | In time before last out time. | 1      | 1       |
| 506    | CheckinIssue | ExceedMaximum   | 2         | Time would exceed daily maximum. | 1      | 1       |
| 511    | CheckinIssue | RecordChanged   | 3         | Record has changed. | 1      | 1       |
| 512    | CheckinIssue | Unknown         | 4         | Unknown | 1      | 1       |
| 523    | MessageType | Person          | 0         | Sent to specific people | 1      | 1       |
| 524    | MessageType | Classroom       | 1         | Sent to a specific classroom | 1      | 1       |
| 527    | MessageType | Tracking Items  | 2         | Sent to people with specific tracking | 1      | 1       |
| 528    | MessageType | Current Balance | 3         | Send to people with specific balance | 1      | 1       |
| 529    | MessageType | Everyone        | 4         | Send to everyone | 1      | 1       |
| 552    | EnrollmentStatus | Withdrawn       | 3         | No longer enrolled | 1      | 0       |
| 553    | EnrollmentStatus | Waiting List    | 4         | On the waiting list | 1      | 0       |
| 554    | EnrollmentStatus | Summer Break    | 5         | Returning in the fall | 1      | 0       |
| 555    | ChildRel  | Neighbor        | 12        |         | 1      | 0       |
| 556    | ChildRel  | Grandmother     | 13        |         | 1      | 0       |
| 557    | ChildRel  | Grandfather     | 14        |         | 1      | 0       |
| 558    | ChildRel  | Aunt            | 15        |         | 1      | 0       |
| 559    | ChildRel  | Uncle           | 16        |         | 1      | 0       |
| 560    | ChildRel  | Other Relative  | 17        |         | 1      | 0       |
| 561    | AbsentReason | Vacation        | 1         |         | 1      | 0       |
| 562    | AbsentReason | Sick            | 2         |         | 1      | 0       |
| 564    | AbsentReason | Other           | 4         |         | 1      | 0       |
| 566    | LogSheetAccount | Billing/Financial | 3         |         | 1      | 0       |
| 567    | LogSheetChild | Injury Incident | 1         |         | 1      | 0       |
| 568    | LogSheetChild | Behavior        | 2         |         | 1      | 0       |
| 569    | LogSheetChild | Developmental   | 3         |         | 1      | 0       |
| 570    | LogSheetChild | Special Needs   | 4         |         | 1      | 0       |
| 571    | LogSheetChild | Parent Conference | 5         |         | 1      | 0       |
| 572    | LogSheetAccount | General Account Notes | 4         |         | 1      | 0       |
| 573    | UserGroup | Director        | 1         |         | 1      | 0       |
| 574    | UserGroup | Assistant Director | 2         |         | 1      | 0       |
| 575    | UserGroup | Teacher         | 4         |         | 1      | 0       |
| 576    | UserGroup | Office Staff    | 3         |         | 1      | 0       |
| 577    | ContractCycle | Weekly          | 1         |         | 1      | 0       |
| 578    | ContractCycle | Monthly         | 2         |         | 1      | 0       |
| 579    | EnrollmentStatus | Pre-Registered  | 6         | Registered, but has not yet started | 1      | 0       |
| 580    | ContractCycle | Daily           | 3         |         | 1      | 0       |
| 581    | ChildRel  | Foster Parent   | 6         |         | 1      | 0       |
| 582    | ChildRel  | Guardian        | 10        |         | 1      | 0       |
| 583    | WorkStatus | Terminated Positive | 7         | Okay to rehire | 1      | 0       |
| 584    | WorkStatus | Terminated Negative | 8         | Do not rehire | 1      | 0       |
| 585    | WorkStatus | Other Approved Leave | 6         | On approved leave | 1      | 0       |
| 586    | WorkStatus | Family Leave    | 5         | On family leave | 1      | 0       |
| 587    | EmployeeRel | Spouse          | 7         |         | 1      | 0       |
| 588    | EmployeeRel | Son             | 8         |         | 1      | 0       |
| 589    | EmployeeRel | Daughter        | 9         |         | 1      | 0       |
| 590    | EmployeeRel | Other Relative  | 10        |         | 1      | 0       |
| 591    | LogSheetEmployee | Evaluation      | 2         |         | 1      | 0       |
| 592    | LogSheetEmployee | Disciplinary    | 3         |         | 1      | 0       |
| 593    | LogSheetEmployee | Recognition/Awards | 4         |         | 1      | 0       |
| 594    | CheckinIssue | ScheduleAdherence | 5         | Schedule Adherence | 1      | 1       |
| 595    | MessageType | ED\_Employee    | 5         | Send to specific Employee | 1      | 1       |
| 596    | MessageType | ED\_Primary Work Area | 6         | Send to all Employees in a Work Area | 1      | 1       |
| 597    | MessageType | ED\_Tracking    | 7         | Send to all Employees with a specific Tracking | 1      | 1       |
| 598    | MessageType | ED\_Everyone    | 9         | Send to all Employees | 1      | 1       |
| 599    | EmployeeRel | Unknown         | 1         | Unknown relationship to employee | 1      | 1       |
| 600    | LogSheetAccount | Statement Emailed | 2         |         | 0      | 1       |
| 601    | WorkStatus | Hire Pool       | 4         | New applicant | 1      | 0       |
| 602    | WorkStatus | Laid Off        | 9         | Workforce reduction | 1      | 0       |