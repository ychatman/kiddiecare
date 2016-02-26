# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_programlimit ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **programlimitid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **module** | int(11) | NO   | MUL |         |       |         |
| **section** | int(11) | NO   |     |         |       |         |
| **general** | int(11) | NO   |     |         |       |         |
| **specific** | int(11) | NO   |     |         |       |         |
| **description** | varchar(100) | NO   |     |         |       |         |
| **tooltip** | varchar(300) | YES  |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | programlimitid | 1   | 204         | A         | 0    | 0       |
| **ix\_g\_programlimituniquerecord** | 0    | 0      | 0      | module | 1   |             | A         | 0    | 0       |
| **ix\_g\_programlimituniquerecord** | 0    | 0      | 0      | section | 2   |             | A         | 0    | 0       |
| **ix\_g\_programlimituniquerecord** | 0    | 0      | 0      | general | 3   |             | A         | 0    | 0       |
| **ix\_g\_programlimituniquerecord** | 0    | 0      | 0      | specific | 4   | 204         | A         | 0    | 0       |


### Default Data ###
| programlimitid | module | section | general | specific | description | tooltip |
|:---------------|:-------|:--------|:--------|:---------|:------------|:--------|
| 3083           | 10     | 0       | 0       | 0        | Utilities   | Manage items related to the Utilities menu. |
| 3084           | 10     | 10      | 0       | 0        | Database Backup/Restore | Make a backup or restore from an existing backup. |
| 3085           | 10     | 10      | 10      | 0        | Backup Data | Make a backup of the kiddiecare v10 database. |
| 3086           | 10     | 10      | 20      | 0        | Restore Data | Restore from an existing kiddiecare v10 database from a backup. |
| 3087           | 10     | 20      | 0       | 0        | Check for Online Update | Check to see if there is an Update of kiddiecare v10 available. |
| 3088           | 10     | 30      | 0       | 0        | Account Search - All Locations | Search for a person across all locations. |
| 3089           | 10     | 40      | 0       | 0        | Remove Duplicate People | Remove and / or merge together duplicate people. |
| 3090           | 10     | 50      | 0       | 0        | Unassigned People | View a list of unassigned people and delete them from the system. |
| 3091           | 15     | 0       | 0       | 0        | Corporate Reports | Print Corporate Reports. |
| 3092           | 15     | 10      | 0       | 0        | Family Data & Accounting Reports | Print Family Data & Accounting Reports. |
| 3093           | 15     | 10      | 10      | 0        | Account/Child Data Reports | Print Family Account and Child Data related reports. |
| 3094           | 15     | 10      | 20      | 0        | Accounting Reports | Print Family Accounting related reports. |
| 3095           | 15     | 10      | 30      | 0        | Agency Accounting Reports | Print Agency Accounting related reports. |
| 3096           | 15     | 10      | 40      | 0        | Meal Tracking | Print Meal Tracking related reports. |
| 3097           | 15     | 10      | 50      | 0        | Attendance Tracking | Print Attendance Tracker related reports. |
| 3098           | 15     | 20      | 0       | 0        | Employee Data & Payroll Reports | Print Employee Data & Payroll reports. |
| 3099           | 15     | 20      | 10      | 0        | Employee Data Reports | Print Employee Data related reports. |
| 3100           | 15     | 20      | 20      | 0        | Payroll Reports | Print Payroll related reports. |
| 3101           | 15     | 30      | 0       | 0        | Expense Tracker | Print Expense Tracker related reports. |
| 3102           | 15     | 40      | 0       | 0        | General Ledger | Print General Ledger related reports. |
| 3103           | 20     | 0       | 0       | 0        | Family Data & Accounting | Manage all items related to family & child information including: Family Data, Family Accounting, Agency Accounting, Meal Tracker, Attendance Tracker, Tuition Express, and Reports. |
| 3104           | 20     | 10      | 0       | 0        | Family Data Functions | Perform tasks specific to the Family Data module. |
| 3105           | 20     | 10      | 10      | 0        | Account (Family) Data Functions | Perform tasks related to the "Account" (the family as a whole) rather than the children. |
| 3106           | 20     | 10      | 10      | 10       | Add / View / Edit Account | Add, change or view information for any account. |
| 3107           | 20     | 10      | 10      | 20       | Remove Account | Delete an account. Requires that children within the account be removed first. |
| 3108           | 20     | 10      | 10      | 30       | Account Tracking | Access the Account Tracking screen for any family. |
| 3109           | 20     | 10      | 10      | 40       | Account User Defined Fields | Access User Defined Fields for any account. |
| 3110           | 20     | 10      | 10      | 50       | Account Log Sheets | Access the Log Sheet for any account. |
| 3111           | 20     | 10      | 10      | 55       | Account Log Sheets - View Restricted | Access the Restricted Logs for any account. |
| 3112           | 20     | 10      | 10      | 90       | Account Documents | Access the Account Documents for any account. |
| 3113           | 20     | 10      | 20      | 0        | Letter Merge | Access items related to the Letter Merge (word processor) feature. |
| 3114           | 20     | 10      | 20      | 10       | Edit New Letter | Add or change a new letter.  |
| 3115           | 20     | 10      | 20      | 20       | Edit Existing Letters | Change an existing letter. |
| 3116           | 20     | 10      | 20      | 30       | Save / Save As / Delete Letters | Save (or Save As) for any letter or delete a letter. Note: If you block this item, but allow adding new or changing existing letters those changes are only temporary. They would not be able to save the new letter or changes. |
| 3117           | 20     | 10      | 30      | 0        | Child Data Functions | Perform tasks related to child information like: enrollment, scheduling, immunizations, tracking categories, log sheets, etc. |
| 3118           | 20     | 10      | 30      | 10       | Add / View / Edit Child Information | Add, change or view information for any child. |
| 3119           | 20     | 10      | 30      | 15       | Remove Child | Delete a child. |
| 3120           | 20     | 10      | 30      | 20       | Child Enrollment Status | Add, change or view enrollment information for any child. |
| 3121           | 20     | 10      | 30      | 30       | Child Schedule - New / Edit / Delete | Add, Edit or Delete a Schedule for any child. |
| 3122           | 20     | 10      | 30      | 35       | Child Schedule - Review | Review the Schedule for any child. |
| 3123           | 20     | 10      | 30      | 40       | Child Schedule Exceptions | Access the Schedule Exceptions screen for any child including overrides and absences (vacations, etc.). |
| 3124           | 20     | 10      | 30      | 50       | Child Immunizations and Requirements | Access the Immunizations & Requirements for any child. |
| 3125           | 20     | 10      | 30      | 60       | Child Tracking | Access the Child Tracking screen for any child. |
| 3126           | 20     | 10      | 30      | 70       | Child User Defined Fields | Access the User Defined Fields for any child. |
| 3127           | 20     | 10      | 30      | 80       | Child Log Sheets | Access the Log Sheet for any child. |
| 3128           | 20     | 10      | 30      | 85       | Child Log Sheets - View Restricted | Access the Restricted Logs for any child. |
| 3129           | 20     | 10      | 30      | 90       | Child Documents | Access the Child Documents for any child. |
| 3130           | 20     | 20      | 0       | 0        | Family Accounting Functions | Items related to Family Accounting. |
| 3131           | 20     | 20      | 10      | 0        | Child Billing Box | Access the Billing Box for any child. |
| 3132           | 20     | 20      | 20      | 0        | Automated Billing Functions | Use features like Automated Contract Billing that allow you to post items to many Ledger Cards at once. |
| 3133           | 20     | 20      | 30      | 0        | Single Account Posting Functions | Use features like Drop In Billing that allow you to post items to one Ledger Card at a time. |
| 3134           | 20     | 20      | 40      | 0        | Account Ledger | Access the Ledger Card for any account. |
| 3135           | 20     | 20      | 40      | 10       | Post New or Void Existing Ledger Entries | Post New Entries or Void any Existing Entries on any Ledger Card. |
| 3136           | 20     | 20      | 40      | 20       | Modify Posted Ledger Entries | Change a Posted Item on any Ledger Card. |
| 3137           | 20     | 20      | 40      | 30       | Void Account Ledger Entries | Void an item on any Ledger Card. |
| 3138           | 20     | 20      | 40      | 40       | Print Specific Customer Statement | Print an Account Statement from the current Account Ledger Card. |
| 3139           | 20     | 20      | 40      | 90       | View Account Ledger Audit | Use the Audit feature (on the Ledger Card) to see what changes have been made and by whom. |
| 3140           | 20     | 20      | 50      | 0        | Deposit Report | Access Deposit Reports. |
| 3141           | 20     | 20      | 50      | 10       | Close Current Deposit Report | Close a Deposit Report that is currently open. |
| 3142           | 20     | 20      | 50      | 20       | Modify Closed Deposit Reports | Change a Deposit Report that has already been closed. Excludes Tuition Express deposits which cannot be changed regardless of this setting. |
| 3143           | 20     | 20      | 55      | 0        | Transaction Summary | Access Transaction Summary. |
| 3144           | 20     | 20      | 60      | 0        | Tuition Express Functions | Access any items related to Tuition Express. |
| 3145           | 20     | 20      | 60      | 10       | Tuition Express Family Setup | Set up an account (a family) for recurring Tuition Express payments. |
| 3146           | 20     | 20      | 60      | 20       | Process Tuition Express | Process a batch of recurring Tuition Express payments. |
| 3147           | 20     | 20      | 60      | 30       | Tuition Express - POS | Process an individual Point of Sale payment. |
| 3148           | 20     | 30      | 0       | 0        | Agency Accounting | Perform tasks related to Agency Accounting. |
| 3149           | 20     | 30      | 10      | 0        | View Previous Agency Payments | See details of previously recorded agency payments using the "View Selected" button. |
| 3150           | 20     | 30      | 20      | 0        | Post New Agency Payments | Process new agency payments using the "Current Posting" button. |
| 3151           | 20     | 40      | 0       | 0        | Meal Tracker | Perform tasks related to Meal Tracking (meal counts). |
| 3152           | 20     | 40      | 10      | 0        | View/Edit Individual Meal Counts | Access meals served for an individual child. |
| 3153           | 20     | 40      | 20      | 0        | View/Edit Daily Meal Tracker | Access meals served for all children at once. |
| 3154           | 20     | 50      | 0       | 0        | Attendance Tracker | Perform tasks related to Child Time Cards & attendance. |
| 3155           | 20     | 50      | 10      | 0        | Child Time Card | Access any Child Time Card features. |
| 3156           | 20     | 50      | 10      | 10       | New / Edit / Delete Time Card Entries | Create a new Item, change an existing Item or delete an Item on any Time Card. |
| 3157           | 20     | 50      | 10      | 20       | Print Time Card Summary | Print a Child Time Card. |
| 3158           | 20     | 50      | 10      | 90       | View Child Time Card Audit | Use the Audit feature (on the Time Card) to see what changes have been made and by whom. |
| 3159           | 20     | 50      | 20      | 0        | Batch Check In/Out | Check a batch of many children in or out. |
| 3160           | 20     | 50      | 25      | 0        | Batch Post Child Time Card | Use the Function to Batch Post Child Time Card entries. |
| 3161           | 20     | 50      | 30      | 0        | View Check In Issues | Use the Function to View Check In Issues (in/out times that are outside certain parameters). |
| 3162           | 20     | 50      | 40      | 0        | Messages    | Control messages sent to families at the check in screen. |
| 3163           | 20     | 50      | 40      | 10       | Create / Delete New Messages | Make new messages or delete messages. |
| 3164           | 20     | 50      | 40      | 20       | Delete Viewed Messages | Delete messages that have already been viewed. |
| 3165           | 20     | 60      | 0       | 0        | Family Data & Accounting Reports | Print all kinds of reports that include financial, family, child and agency information. |
| 3166           | 20     | 60      | 10      | 0        | Account/Child Data Reports | Print reports with basic family or child information like roll call sheets, schedules, birthday lists, school directories, etc. |
| 3167           | 20     | 60      | 20      | 0        | Accounting Reports | Print financial reports for individual families or the center as a whole. |
| 3168           | 20     | 60      | 20      | 10       | Internal Use | Print financial reports for use by the center (Family Accounting module). |
| 3169           | 20     | 60      | 20      | 20       | Customer Distribution | Print financial reports for distribution to families like Customer Statements, etc. |
| 3170           | 20     | 60      | 30      | 0        | Agency Accounting | Print agency related financial reports. |
| 3171           | 20     | 60      | 40      | 0        | Meal Tracking | Print reports related to meal counts and menus. |
| 3172           | 20     | 60      | 50      | 0        | Attendance Tracking | Print reports related to child time and attendance. |
| 3173           | 30     | 0       | 0       | 0        | Employee Data & Payroll | Perform tasks related to Employee Data & Payroll. |
| 3174           | 30     | 10      | 0       | 0        | Employee Data Functions | Perform tasks related to Employee Data. |
| 3175           | 30     | 10      | 10      | 0        | Add / View / Edit Employee Information | Add, change or view information for any employee. |
| 3176           | 30     | 10      | 12      | 0        | View Employee Confidential Information | View employee confidential information (such as Social Security Number) |
| 3177           | 30     | 10      | 15      | 0        | Remove Employee | Delete an employee. |
| 3178           | 30     | 10      | 20      | 0        | Employee Work History | Add, change or view Work History for any employee. |
| 3179           | 30     | 10      | 25      | 0        | Employee Schedule | Access employee Schedule features. |
| 3180           | 30     | 10      | 25      | 10       | New / Edit / Delete Employee Schedule | Add, edit or delete a Schedule for any employee. |
| 3181           | 30     | 10      | 25      | 20       | Review Employee Schedule | Review the Schedule for any employee. |
| 3182           | 30     | 10      | 30      | 0        | Employee Benefits | Access the Benefits screen for any employee. |
| 3183           | 30     | 10      | 35      | 0        | Employee Pay Rate | Access the Pay Rate screen for any employee. |
| 3184           | 30     | 10      | 40      | 0        | Employee Immunizations and Requirements | Access the Immunizations & Requirements for any employee. |
| 3185           | 30     | 10      | 45      | 0        | Employee Time Card | Access employee Time Card features. |
| 3186           | 30     | 10      | 45      | 10       | New / Edit / Delete Time Card Entries | Create a new Item, change an existing Item or delete an Item on any Time Card. |
| 3187           | 30     | 10      | 45      | 20       | Print Time Card Summary | Print an employee Time Card. |
| 3188           | 30     | 10      | 45      | 90       | View Employee Time Card Audit | Use the Audit feature (on the Time Card) to see what changes have been made and by whom. |
| 3189           | 30     | 10      | 50      | 0        | Employee Tracking | Access the employee Tracking screen for any employee. |
| 3190           | 30     | 10      | 55      | 0        | Employee User Defined Fields | Access the User Defined Fields for any employee. |
| 3191           | 30     | 10      | 60      | 0        | Employee Log Sheets | Access the Log Sheet for any employee. |
| 3192           | 30     | 10      | 65      | 0        | Employee Log Sheets - View Restricted | Access the Restricted Logs for any employee. |
| 3193           | 30     | 10      | 90      | 0        | Employee Documents | Access the Employee Documents for and employee. |
| 3194           | 30     | 20      | 0       | 0        | Letter Merge | Access items related to the Letter Merge (word processor) feature. |
| 3195           | 30     | 20      | 10      | 0        | Edit New Letter | Add or change a new letter.  |
| 3196           | 30     | 20      | 20      | 0        | Edit Existing Letters | Change an existing letter. |
| 3197           | 30     | 20      | 30      | 0        | Save / Save As / Delete Letters | Save (or Save As) for any letter or delete a letter. Note: If you block this item, but allow adding new or changing existing letters those changes are only temporary. They would not be able to save the new letter or changes. |
| 3198           | 30     | 30      | 0       | 0        | Batch Post Accrued Benefits | Use the Function to Batch Post Accrued Benefits. |
| 3199           | 30     | 35      | 0       | 0        | Batch Post Employee Time Card | Use the Function to Batch Post Child Time Card entries. |
| 3200           | 30     | 40      | 0       | 0        | View Check In Issues | Use the Function to View Check In Issues (in/out times that are outside certain parameters). |
| 3201           | 30     | 45      | 0       | 0        | Messages    | Control messages sent to families at the check in screen. |
| 3202           | 30     | 45      | 10      | 0        | Create / Delete New Messages | Make new messages or delete messages. |
| 3203           | 30     | 45      | 20      | 0        | Delete Viewed Messages | Delete messages that have already been viewed. |
| 3204           | 30     | 50      | 0       | 0        | Payroll Functions |         |
| 3205           | 30     | 50      | 10      | 0        | Payroll Function 1 |         |
| 3206           | 30     | 50      | 20      | 0        | Payroll Function 2 |         |
| 3207           | 30     | 50      | 30      | 0        | Payroll Function 3 |         |
| 3208           | 30     | 60      | 0       | 0        | Reports     | Print all kinds of reports that include employee data, time and attendance and payroll information. |
| 3209           | 30     | 60      | 10      | 0        | Employee Data Reports | Print basic employee data and/or time and attendance reports. |
| 3210           | 30     | 60      | 15      | 0        | Employee Data Reports with Confidential Information | Print employee data reports that contain Confidential Information |
| 3211           | 30     | 60      | 20      | 0        | Payroll Reports | Print payroll related reports. |
| 3212           | 40     | 0       | 0       | 0        | Expense Tracker | Perform tasks related to tracking Expenses. |
| 3213           | 40     | 10      | 0       | 0        | xxxxxxxxxxx |         |
| 3214           | 40     | 20      | 0       | 0        | xxxxxxxxxxx |         |
| 3215           | 40     | 30      | 0       | 0        | xxxxxxxxxxx |         |
| 3216           | 50     | 0       | 0       | 0        | General Ledger | Perform tasks related to General Ledger. |
| 3217           | 50     | 10      | 0       | 0        | xxxxxxxxxxx |         |
| 3218           | 50     | 20      | 0       | 0        | xxxxxxxxxxx |         |
| 3219           | 50     | 30      | 0       | 0        | xxxxxxxxxxx |         |
| 3220           | 60     | 0       | 0       | 0        | System Configuration | Perform tasks related to System Configuration like: adding Users and overall settings for Data Management, Accounting Management, Report Management, etc. |
| 3221           | 60     | 10      | 0       | 0        | Locations & Users | Manage kiddiecare Users and User Groups. |
| 3222           | 60     | 10      | 10      | 0        | kiddiecare Users | Manage kiddiecare Users |
| 3223           | 60     | 10      | 10      | 10       | Add / Edit / Delete kiddiecare User | Add, Edit or Delete kiddiecare Users |
| 3224           | 60     | 10      | 10      | 20       | Reset kiddiecare User's Password | Reset the kiddiecare User's Password - Password is always reset to the User Name of the kiddiecare User. |
| 3225           | 60     | 20      | 0       | 0        | Accounting Management | Manage Chart of Accounts and Bank Account settings. |
| 3226           | 60     | 20      | 10      | 0        | Chart of Accounts | Manage the Chart of Accounts. |
| 3227           | 60     | 20      | 20      | 0        | Bank Accounts | Determine which asset accounts are to be used as Bank Accounts. |
| 3228           | 60     | 20      | 30      | 0        | Family Accounting | Manage Family Accounting settings. |
| 3229           | 60     | 20      | 30      | 10       | Charge / Credit Descriptions | Manage all charge, credit and payment descriptions. |
| 3230           | 60     | 20      | 30      | 20       | Standard Amounts | Set standard amounts for all charge, credit and payment descriptions including things like tuition, activity fees, etc. |
| 3231           | 60     | 20      | 30      | 30       | Deposit Accounts | Determine which bank accounts are available for use with Deposit Reports. |
| 3232           | 60     | 20      | 30      | 40       | Billing Cycles | Manage Billing Cycles like weekly, monthly, etc. |
| 3233           | 60     | 20      | 30      | 50       | Billing Formulas | Manage formulas used for attendance based billing. |
| 3234           | 60     | 20      | 30      | 60       | Third Party Agencies | Manage name and contact information for third party agencies like DHS, DFACS, Head Start, etc. |
| 3235           | 60     | 20      | 30      | 70       | Third Party Agency Adjustment Codes | Manage adjustment codes for agencies. Used to write off balances or transfer them to families, etc. |
| 3236           | 60     | 20      | 30      | 80       | Receipt Options | Set options for how receipts print when a payment from a family is recorded. |
| 3237           | 60     | 20      | 40      | 0        | Employee Data | Manage Employee Data settings. |
| 3238           | 60     | 20      | 40      | 10       | Pay Codes   | Manage names of Pay Codes like: Administrator, Teacher, Teaching Assistant, Vacation, Sick, Holiday, etc. |
| 3239           | 60     | 20      | 40      | 20       | Benefit Codes | Manage Benefit Codes from your list of Pay Codes such as Vacation, Sick, Holiday, etc. |
| 3240           | 60     | 20      | 50      | 0        | Payroll     | Manage Payroll settings. |
| 3241           | 60     | 20      | 50      | 10       | Payroll Check Format | Adjust settings for checks issued from Payroll. |
| 3242           | 60     | 20      | 50      | 20       | xxxxxxxxx   |         |
| 3243           | 60     | 20      | 50      | 30       | xxxxxxxxx   |         |
| 3244           | 60     | 20      | 50      | 40       | xxxxxxxxx   |         |
| 3245           | 60     | 20      | 60      | 0        | Expense Tracker | Manage settings for Expense Tracker. |
| 3246           | 60     | 20      | 60      | 10       | Expense Tracker Check Format | Adjust settings for checks issued from Expense Tracker. |
| 3247           | 60     | 20      | 60      | 20       | xxxxxxxxxxx |         |
| 3248           | 60     | 20      | 70      | 0        | General Ledger | Manage settings for General Ledger. |
| 3249           | 60     | 20      | 70      | 10       | Fiscal Year Calendar | Set the calendar for the fiscal year. |
| 3250           | 60     | 20      | 70      | 20       | General Journals | Add, edit, void journal entries. |
| 3251           | 60     | 20      | 70      | 30       | Fiscal Year Budget | Set up and manage budgets. |
| 3252           | 60     | 20      | 70      | 40       | Beginning Balance | Manage beginning balances for the fiscal year. |
| 3253           | 60     | 30      | 0       | 0        | Data Management | Control Data Management settings. |
| 3254           | 60     | 30      | 10      | 0        | Status & Relationships | Manage enrollment, employment and relationship categories. |
| 3255           | 60     | 30      | 10      | 10       | Child's Enrollment Status | Manage Enrollment Status categories for children. |
| 3256           | 60     | 30      | 10      | 20       | Employee's Employment Status | Manage Employment Status categories for staff. |
| 3257           | 60     | 30      | 10      | 30       | Child Relationships | Manage categories describing how people are related to a child like mom, dad, aunt, uncle, neighbor, friend, doctor, etc. |
| 3258           | 60     | 30      | 10      | 40       | Employee Relationships | Manage categories describing how people are related to a staff member like their child, neighbor, friend, emergency contact, doctor, etc. |
| 3259           | 60     | 30      | 20      | 0        | Tracking Items & User Defined Fields | Manage all tracking categories and User Defined Fields. |
| 3260           | 60     | 30      | 20      | 10       | Global Tracking Items | Manage "Global" Tracking categories that affect all locations. |
| 3261           | 60     | 30      | 20      | 20       | Local Tracking Items | Manage "Local" tracking categories that affect a single location. |
| 3262           | 60     | 30      | 20      | 30       | User Defined Fields | Manage User Defined Fields |
| 3263           | 60     | 30      | 30      | 0        | Scheduling  | Manage all aspects of scheduling including classroom names. |
| 3264           | 60     | 30      | 30      | 10       | School Close Dates | Manage business holidays (dates a location will be closed). |
| 3265           | 60     | 30      | 30      | 20       | Departments | Manage the names of Departments like infants, toddlers, preschool, administration, etc. |
| 3266           | 60     | 30      | 30      | 30       | Work Areas  | Manage the names of Work Areas like Infant Room, Room 101, Ms Green's Room, etc. and assign them to Departments. |
| 3267           | 60     | 30      | 30      | 40       | Classrooms  | Select Classroom Names from your list of Work Areas and assign maximum class size and child/teacher ratios. |
| 3268           | 60     | 30      | 30      | 50       | Schedule Templates | Create and manage Schedule Templates that may be assigned to many children. |
| 3269           | 60     | 30      | 30      | 60       | Absent Reasons | Manage the reasons a child may be absent. Used for tracking things like family vacation hours. |
| 3270           | 60     | 30      | 40      | 0        | Immunizations & Requirements | Manage all Immunizations and Other Requirements. |
| 3271           | 60     | 30      | 40      | 10       | Global Child Immunizations & Requirements | Manage "Global" Immunizations and Requirements that affect children at all locations. |
| 3272           | 60     | 30      | 40      | 20       | Global Employee Immunization & Requirements | Manage "Global" Immunizations and Requirements that affect employees at all locations. |
| 3273           | 60     | 30      | 40      | 30       | Local Child Requirements | Manage "Local" date based requirements that affect children at a single location. |
| 3274           | 60     | 30      | 40      | 40       | Local Employee Requirements | Manage "Local" date based requirements that affect employees at a single location. |
| 3275           | 60     | 30      | 50      | 0        | Meals & Menus | Manage settings for Meals & Menus. |
| 3276           | 60     | 30      | 50      | 10       | Food Program Status | Manage status levels for the Food Program like Free, Reduced and Above Scale. |
| 3277           | 60     | 30      | 50      | 20       | Meal Abbreviations | Manage abbreviations and meal types like "B" for Breakfast. |
| 3278           | 60     | 30      | 50      | 30       | Meal Times  | Manage the times meals are served for each classroom. |
| 3279           | 60     | 30      | 50      | 40       | School Menus | Create and manage menus. |
| 3280           | 60     | 30      | 50      | 50       | Reimbursement Amounts | Manage Reimbursement Amounts for each type of meal and status level. |
| 3281           | 60     | 30      | 60      | 0        | Miscellaneous | Manage "Miscellaneous" settings for things like phone number and log sheet types. |
| 3282           | 60     | 30      | 60      | 10       | Phone Number Types | Manage types of phone numbers like home, work, cell / mobile, pager, etc. |
| 3283           | 60     | 30      | 60      | 20       | Account Log Sheet Types | Manage types of log sheets for the family as a whole (the Account) like financial, scheduling, parent/teacher conference, etc. |
| 3284           | 60     | 30      | 60      | 30       | Child Log Sheet Types | Manage types of log sheets for children like injury report, behavioral issues, progress report, etc. |
| 3285           | 60     | 30      | 60      | 40       | Employee Log Sheet Types | Manage types of log sheets for staff like employee review, attendance issues, scheduling, etc. |
| 3286           | 60     | 30      | 60      | 50       | Vendor Log Sheet Types | Manage types of log sheets for vendors like payment terms, invoice notes, special arrangements, etc. |