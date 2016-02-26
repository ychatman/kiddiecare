# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_optionsdefault ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **optionsdefaultid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **description** | varchar(30) | NO   | UNI |         |       |         |
| **value** | varchar(500) | NO   |     |         |       |         |
| **tooltip** | varchar(250) | NO   |     |         |       |         |
| **sys**   | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | optionsdefaultid | 1   | 104         | A         | 0    | 0       |
| **ix\_g\_optionsdefault\_uniguedescription** | 0    | 0      | 0      | description | 1   | 104         | A         | 0    | 0       |


### Default Data ###
| optionsdefaultid | description | value | tooltip | sys |
|:-----------------|:------------|:------|:--------|:----|
| 15               | AddressFormat | TSA   | TB>USA

Unknown end tag for &lt;/B&gt;

 format uses City, State, Zip Code. 

&lt;B&gt;

Non-US

&lt;/B&gt;

 format uses City, Region, Postal Code | 0   |
| 16               | AR\_RoundTimeIn | T5    | Telect the number of minutes to which you want check IN times rounded (most common 5 or 15). | 0   |
| 17               | AR\_RoundTimeOut  | T5    | Telect the number of minutes to which you want check OUT times rounded (most common 5 or 15). | 0   |
| 18               | AR\_RoundTypeIn | Tlosest | Thoose how to round check IN times. �Closest� means the nearest interval (5 minutes, 15 minutes, etc.). �Back� means go back to the prior interval. �Forward� means jump ahead to the next interval. | 0   |
| 19               | AR\_RoundTypeOut | Tlosest | Thoose how to round check OUT times. �Closest� means the nearest interval (5 minutes, 15 minutes, etc.). �Back� means go back to the prior interval. �Forward� means jump ahead to the next interval. | 0   |
| 20               | AR\_MaxHoursCheckedIn | T6    | Tnter the maximum number of hours (8-24) a child may be checked in. They will be prevented from checking out if the time is exceeded.  | 0   |
| 22               | PR\_RoundTimeIn | T     | Telect the number of minutes to which you want check IN times rounded (most common 5 or 15). | 0   |
| 23               | PR\_RoundTimeOut | T     | Telect the number of minutes to which you want check OUT times rounded (most common 5 or 15). | 0   |
| 24               | PR\_RoundTypeIn | Tlosest | Thoose how to round check IN times. �Closest� means the nearest interval (5 minutes, 15 minutes, etc.). �Back� means go back to the prior interval. �Forward� means jump ahead to the next interval. | 0   |
| 25               | PR\_RoundTypeOut | Tlosest | Thoose how to round check OUT times. �Closest� means the nearest interval (5 minutes, 15 minutes, etc.). �Back� means go back to the prior interval. �Forward� means jump ahead to the next interval. | 0   |
| 26               | PR\_MaxHoursCheckedIn | T6    | Tnter the maximum number of hours (8-24) an employee may be checked in. They will be prevented from checking out if the time is exceeded.  | 0   |
| 27               | ChildMaxAge | T8    | Taximum age (in years) for a person to be considered a child. Enter a number from 0 to 99. | 0   |
| 28               | MondayOpenTime | T20   | Thoose the time this location opens or scroll to the top and pick "Closed". | 0   |
| 30               | MondayCloseTime | T080  | Thoose the time this location closes or scroll to the top and pick "Closed". | 0   |
| 34               | TuesdayOpenTime | T20   | Thoose the time this location opens or scroll to the top and pick "Closed". | 0   |
| 35               | TuesdayCloseTime | T080  | Thoose the time this location closes or scroll to the top and pick "Closed". | 0   |
| 36               | WednesdayOpenTime | T20   | Thoose the time this location opens or scroll to the top and pick "Closed". | 0   |
| 37               | WednesdayCloseTime | T080  | Thoose the time this location closes or scroll to the top and pick "Closed". | 0   |
| 38               | ThursdayOpenTime | T20   | Thoose the time this location opens or scroll to the top and pick "Closed". | 0   |
| 39               | ThursdayCloseTime | T080  | Thoose the time this location closes or scroll to the top and pick "Closed". | 0   |
| 40               | FridayOpenTime | T20   | Thoose the time this location opens or scroll to the top and pick "Closed". | 0   |
| 41               | FridayCloseTime | T080  | Thoose the time this location closes or scroll to the top and pick "Closed". | 0   |
| 42               | SaturdayOpenTime | T1    | Thoose the time this location opens or scroll to the top and pick "Closed". | 0   |
| 43               | SaturdayCloseTime | T1    | Thoose the time this location closes or scroll to the top and pick "Closed". | 0   |
| 44               | SundayOpenTime | T1    | Thoose the time this location opens or scroll to the top and pick "Closed". | 0   |
| 45               | SundayCloseTime | T1    | Thoose the time this location closes or scroll to the top and pick "Closed". | 0   |
| 48               | AR\_LimitLedgerPostingDate | T/1/2009 12:00AM | Tnter the earliest date allowed for items to be posted on a Ledger Card. Typically the first day of the calendar year or fiscal year. Takes precedent over Days Back & Forward settings. | 0   |
| 49               | AR\_LimitLedgerStart | T0    | Taximum number of days in the PAST a person is allowed to post an item on a Ledger Card. Enter 30 to allow entries to be recorded up to 30 days prior to the current date. | 0   |
| 50               | AR\_LimitLedgerEnd | T0    | Taximum number of days in the FUTURE a person is allowed to post an item on a Ledger Card. Enter 30 to allow entries to be recorded up to 30 days beyond the current date. | 0   |
| 51               | PR\_CurrentPayrollYear | T009  | Telect the current year for payroll purposes. | 0   |
| 52               | PR\_StartDayOfPayWeek | T     | The Starting Day of the Pay Week is important for determining when a 40 hour week begins for overtime purposes. In most cases it should be set to Sunday or Monday. | 0   |
| 53               | PR\_PayPeriodsInAYear | T4    | Tnter the number of Pay Periods in a year for tax calculation purposes. Examples: 52 (weekly), 26 (every 2 weeks), 24 (twice a month), 12 (once a month). | 0   |
| 54               | PR\_OTCalcOver8HrPerDay | Talse | Thoose "True" if you pay overtime for more than 8 hours worked in a single day. | 0   |
| 55               | PR\_OTCalcOver40HrPerWk | True  | Thoose "True" if you pay overtime for more than 40 hours worked in a week. | 0   |
| 56               | PR\_OTCalcIncludeTrainingTime | True  | Thoose "True" if Training Time should be counted toward overtime. | 0   |
| 57               | PR\_PayrollCheckbook | T1    | Thoose the bank account used for payroll checks. | 0   |
| 58               | PR\_EmployeeAdvance | T1    | Thoose an Asset Account to use for Employee Payroll Advances. | 0   |
| 63               | AR\_AuditTimeCards | True  | To keep a record of all Time Card changes choose �True�. If you don�t need to track changes to Time Cards choose �False�. | 0   |
| 64               | PR\_AuditTimeCards | True  | To keep a record of all Time Card changes choose �True�. If you don�t need to track changes to Time Cards choose �False�. | 0   |
| 65               | AR\_MonitorVacation | To Not Monitor | Tontrols how vacation �Balances� are totaled on the child�s �Schedule Exceptions� screen. Past 12 Months totals hours from 1 year ago until today. Current Calendar Year totals hours since Jan. 1st. | 0   |
| 66               | PR\_PayPeriodStartDate | T/15/2008 | Telect a Start Day for your Pay Period. The Pay Period is the date range for which employees are paid. You MUST select these dates prior to processing payroll checks. | 0   |
| 67               | PR\_PayPeriodEndDate | T/30/2008 | Telect an End Day for your Pay Period. The Pay Period is the date range for which employees are paid. You MUST select these dates prior to processing payroll checks. | 0   |
| 68               | AR\_SchedulingType | Tasy  | Thoose "Easy" scheduling for single week schedules (week 1 repeats over & over). Choose "Advanced" to allow multiple week rotations (with a 2 week rotation weeks 1 & 2 alternate over & over). | 0   |
| 69               | PR\_SchedulingType | Tasy  | Thoose "Easy" scheduling for single week schedules (week 1 repeats over & over). Choose "Advanced" to allow multiple week rotations (with a 2 week rotation weeks 1 & 2 alternate over & over). | 0   |
| 70               | FP\_AgeGroup1 | T2    | Tnter the age (in months) when a person moves to the next age group (examples: 12, 36, 72, 156, 999). | 0   |
| 71               | FP\_AgeGroup2 | T6    | Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156). | 0   |
| 72               | FP\_AgeGroup3 | T2    | Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156). | 0   |
| 73               | FP\_AgeGroup4 | T44   | Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156). | 0   |
| 74               | FP\_AgeGroup5 | T99   | Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156). | 0   |
| 75               | FP\_AgeGroup6 | T99   | Thoose the maximum age (in months) that a person should be counted in this age group (examples: 12, 36, 72, 156). | 0   |
| 76               | FP\_AgeGroupName1 | Tnfants | Tnter a name for the 1st Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.) | 0   |
| 78               | FP\_AgeGroupName2 | Tges 1-2 | Tnter a name for the 2nd Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.) | 0   |
| 80               | FP\_AgeGroupName3 | Tges 3-5 | Tnter a name for the 3rd Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.) | 0   |
| 81               | FP\_AgeGroupName4 | Tges 6-12 | Tnter a name for the 4th Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.) | 0   |
| 82               | FP\_AgeGroupName5 | Tge 12 & Over | Tnter a name for the 5th Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.) | 0   |
| 83               | FP\_AgeGroupName6 | Tot Used | Tnter a name for the 6th Food Program age group (Infants, 1-2 Year Olds, 3-5 Year Olds, etc.) | 0   |
| 84               | TestSysObject | Test System Object | This is a required System Object and cannot be deleted. | 0   |
| 85               | AR\_AgencyPaymentDescription | T     | Thoose a Payment Description (like �Agency Payment�) to record payments from Third Party Agencies. | 1   |
| 86               | AR\_ParentChargeDescription | T     | Thoose a Charge Description (like �Agency Transfer�) to transfer money owed from an Agency to a Family. Example: Agency does not pay full amount and balance is responsibility of family. | 1   |
| 87               | TE\_AccountNumber |       | Tnter your Tuition Express Account Number | 1   |
| 88               | TE\_ACHPayDesc | T1    | Thoose a Payment Description (like �Pmt Tuition Express Batch�) to record BATCH payments made through Tuition Express. | 0   |
| 89               | TE\_MinAmount | T0    | Tnter the minimum amount (0.01 to 100.00) you want to collect through Tuition Express. Typically this would be in the range of $5 to $10. | 0   |
| 90               | TE\_MaxAmount | T500  | The �global� maximum that may be collected from any single family is determined by Tuition Express. You may set individual maximums at the Tuition Express screen of each family. | 1   |
| 91               | TE\_Comment | Talse | Thoose �True� to enable the Comment feature. This allows you to enter a comment for parent email receipts such as the dates of service. The Comment is entered when you process a Tuition Express batch. | 0   |
| 92               | TE\_Date    | Talse | Thoose �True� to allow selection of a batch processing date up to 14 days in the future. Helpful if you need to submit a batch ahead of time. The date is selected when you submit a batch. | 0   |
| 93               | TE\_Card    | T000  | Tisplays the types of credit cards (Visa, Mastercard, American Express, Discover) that you are set up to process. | 1   |
| 95               | TE\_POSPayDesc | T1    | Thoose a Payment Description (like �Pmt Tuition Express POS�) to record Point of Sale (POS) payments made through Tuition Express. | 0   |
| 96               | Receipt\_PrintingOn | Talse | Thoose "True" to enable receipt printing for payments received from families. | 1   |
| 97               | Receipt\_Format | T     | Telect a Receipt Format. One Per Page (prints 1 receipt on page), Two Per Page (prints 2 receipts for 2 different families on same page), Duplicate Receipt (prints 2 copies of the same receipt). | 1   |
| 98               | Receipt\_ConfirmPrinting | Talse | Thoose �True� to have a message ask whether or not you wish to print a receipt. Choose �False� to automatically print receipts without being asked. | 1   |
| 99               | Receipt\_PrintNumbers | Talse | Thoose �True� to have a Receipt Number printed on each receipt. | 1   |
| 100              | Receipt\_Number | T     | Tnter the last receipt number used to control the starting point for new receipt numbers. If the last number were 100, the next receipt printed would be 101. | 1   |
| 101              | Receipt\_Message |       | Tnter a standard message to appear at the bottom of all receipts. Example: �Thank you for your payment. Our billing office hours are 9:00 to 5:00. Please call 555-1212 with any questions.� | 1   |
| 104              | Receipt\_TrackItem | T1    | Teave the default setting to print receipts for all families or select a particular Tracking item (like �Receipt Requested�) to print receipts for only those families. | 1   |
| 107              | FD\_ImmunDayBuffer | T0    | Tow many days ahead do you wish to know that immunizations are coming due? Enter a number from 0-99. Example: Enter 30 to be track immunizations 30 days before their due date. | 0   |
| 108              | ED\_ImmunDayBuffer | T0    | Tow many days ahead do you wish to know that immunizations are coming due? Enter a number from 0-99. Example: Enter 30 to be track immunizations 30 days before their due date. | 0   |
| 109              | FD\_StandardFilter | Tisible Accounts | Thoose families to show by default. �All Accounts� means every family will be displayed, even those marked as Hidden. �Visible Accounts� means those marked as Hidden will not be shown. | 0   |
| 110              | ED\_StandardFilter | Tisible Employees | Thoose employees to show by default. �All Employees� means every employee will be displayed, even those marked as Hidden. �Visible Employee� means those marked as Hidden will not be shown. | 0   |
| 111              | TE\_Active  | Talse | Thows whether Tuition Express has been set up for this location. | 0   |
| 113              | Rpt\_NextDepositRptNumber | T     | Tou may manually adjust the number for your Next Deposit Report. For example if the default setting were 1 and you wanted to begin on 100. | 1   |
| 114              | FDED\_TrackingUsageLimitBuffer | T     | Then do you want to be warned that you�re approaching a Tracking Category limit? Example: �Field Trip� has limit of 24. Enter 3 and you�ll be warned when you assign that item to the 21st person. | 0   |
| 116              | TE\_ACHComment |       | Tomment used for Tuition Express ACH batches | 1   |
| 117              | TE\_CRCComment |       | Tomment used for Tuition Express CRC batches | 1   |
| 118              | TE\_CRCPayDesc | T1    | Tuition Express Credit Card Batch Process Payment Category | 0   |
| 119              | TE\_SyncNumber | T     | Tuition Express Sync Number | 1   |
| 120              | TE\_BatchBankAccountID | T1    | Tuition Express link to Bank Account for Deposit Report | 0   |
| 121              | Email\_SchoolEmailAddress |       | Tnter the email address to use as the �From Address� when sending email | 1   |
| 122              | Email\_UseOutlook | Talse | Thoose �True� to use the local Outlook account to send email. | 1   |
| 123              | Email\_UseSMTPServer | Talse | Thoose �True� to use an SMTP server to send email. | 1   |
| 124              | Email\_SMTPUserName |       | Tf your SMTP server requires authentication then enter your �User Name�. | 1   |
| 125              | Email\_SMTPPassword |       | Tf your SMTP server requires authentication then enter your �Password�. | 1   |
| 126              | Email\_SMTPAddressOrName | T     | Tour SMTP Server Address or Name | 1   |
| 127              | TaxIdNumber |       | Tax Identification Number | 1   |
| 128              | FTE\_FullDayHours | T     | Tow many hours/day represents a Full Time child. For example, if you consider a child full time if they attend 7 hours per day, the number would be 7. | 0   |
| 129              | FTE\_MaxPerDay | T2    | That is the maximum FTE value per day. Typically, this would be 0.2 (5 days x 0.2 FTE / Day = 1 FTE for the week). | 0   |
| 130              | AR\_FirstDayOfWeek | T     | The First day of the week | 0   |
| 131              | PR\_PayPeriodType | T6    | Tay Period Type | 0   |
| 132              | PR\_PayPeriodStart1 | T1-JAN-2009 | Tirst Pay Period Start Date | 0   |
| 133              | PR\_PayPeriodStart2 | T1-JAN-1900 | Tecond Pay Period if pay period type is Twice a Month | 0   |
| 136              | ED\_TimeCardInOutLimit | T     | The number of minutes an employee may check in or out before or after their scheduled work time | 0   |
| 137              | ED\_RestrChkInOutToSched | Talse | Theck In/Out times are restricted to the times on the schedule | 0   |
| 138              | LastkiddiecareNewsUpdate | T/1/1900 12:00AM | This is the last time the computer attempted to download from kiddiecareNews at kiddiecare Headquarters | 1   |
| 139              | RegisterAutomatically | Talse | Thether or not to attempt automatic registration over the internet | 1   |
| 140              | LastRegistrationAttempt | T/1/1900 12:00AM | Tast time automatic registration was attempted | 1   |