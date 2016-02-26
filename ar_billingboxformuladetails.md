# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingboxformuladetails ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **billingboxformulaid** | int(11) | NO   | PRI |         |       |         |
| **lineid** | int(11) | NO   | PRI |         |       |         |
| **comment** | varchar(30) | NO   |     |         |       |         |
| **formula** | varchar(250) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | billingboxformulaid | 1   |             | A         | 0    | 0       |
| **PRIMARY** | 0    | 0      | 0      | lineid | 2   | 301         | A         | 0    | 0       |


### Default Data ###
| billingboxformulaid | lineid | comment | formula |
|:--------------------|:-------|:--------|:--------|
| 231                 | 1      | Rate by the minute | 1.00    |
| 231                 | 2      | Minute over-ride rate | If[Var[minute](minute.md) = 0, Line[1](1.md), Var[minute](minute.md)] |
| 231                 | 4      |         | Loop[Days](Days.md) |
| 231                 | 5      | Daily time in hours | Attend[Days, 05:00pm, 12:00am] |
| 231                 | 7      | Calc. Day charge | Total[(Line[5](5.md) **(Line[2](2.md)** 60))] |
| 231                 | 8      | Calc. total time | Total[Line[5](5.md)] |
| 231                 | 9      | Total Days Attended | Total[If[Line[5](5.md) > 0, 1, 0]] |
| 231                 | 10     |         | Loop[End](End.md) |
| 231                 | 12     |         | Print["Total After Hours days  =  "Line[9](9.md)] |
| 231                 | 13     |         | Print["Total time in minutes  =  "(Line[8](8.md) **60)]**|
| 231                 | 14     |         | Print["Minute rate  =  $"Line[2](2.md)] |
| 231                 | 15     |         | Print["Total amount billed  =  $"Line[7](7.md)] |
| 231                 | 16     | TOTAL CHARGE | Line[7](7.md) |
| 232                 | 1      | Rate by the Hour | 5.00    |
| 232                 | 2      | Hourly over-ride rate | If[Var[hourly](hourly.md) = 0, Line[1](1.md), Var[hourly](hourly.md)] |
| 232                 | 3      | Min Daily rate | 0.00    |
| 232                 | 4      | Max Daily rate | 999.00  |
| 232                 | 6      |         | Loop[Days](Days.md) |
| 232                 | 7      | Daily time in hours | Attend[Days, 12:00am, 12:00am] |
| 232                 | 8      | calc Daily min if attend > 0 | If[Line[7](7.md) > 0, If[(Line[7](7.md) **Line[2](2.md)) > Line[3](3.md), (Line[7](7.md)** Line[2](2.md)), Line[3](3.md)], 0] |
| 232                 | 10     | Calc. Day charge | Total[If[Line[8](8.md) <= Line[4](4.md), Line[8](8.md), Line[4](4.md)] ] |
| 232                 | 11     | Calc. total time | Total[Line[7](7.md)] |
| 232                 | 12     | Total Days Attended | Total[If[Line[7](7.md) > 0, 1, 0]] |
| 232                 | 13     |         | Loop[End](End.md) |
| 232                 | 15     |         | Print["Days attended  =  "Line[12](12.md)] |
| 232                 | 16     |         | Print["Total billed hours  =  "Line[11](11.md)] |
| 232                 | 17     |         | Print["Hourly rate  =  $"Line[2](2.md)] |
| 232                 | 18     |         | Print["Total amount billed  =  $"Line[10](10.md)] |
| 232                 | 19     |         | Print["Note daily minimums or maximums may also apply."] |
| 232                 | 20     | TOTAL CHARGE | Line[10](10.md) |
| 235                 | 1      | Rate by the Hour | 5.00    |
| 235                 | 2      | Hourly over-ride rate | If[Var[hourly](hourly.md) = 0, Line[1](1.md), Var[hourly](hourly.md)] |
| 235                 | 4      |         | Loop[Days](Days.md) |
| 235                 | 5      | Daily time in hours | Attend[Days, 12:00am, 12:00am] |
| 235                 | 6      | Scheduled time in hours | Sched[Days, 12:00am, 12:00am] |
| 235                 | 7      | Extra hours  | If[(Line[5](5.md) - Line[6](6.md)) > 0, (Line[5](5.md) - Line[6](6.md)), 0] |
| 235                 | 9      | Calc. Day charge | Total[(Line[7](7.md) **Line[2](2.md))]**|
| 235                 | 10     | Calc. total time | Total[Line[7](7.md)] |
| 235                 | 11     | Total Days Attended | Total[If[Line[5](5.md) > 0, 1, 0]] |
| 235                 | 12     |         | Loop[End](End.md) |
| 235                 | 14     |         | Print["Total days  =  "Line[11](11.md)] |
| 235                 | 15     |         | Print["Total billed hours  =  "Line[10](10.md)] |
| 235                 | 16     |         | Print["Hourly rate  =  $"Line[2](2.md)] |
| 235                 | 17     |         | Print["Total amount billed  =  $"Line[9](9.md)] |
| 235                 | 18     | TOTAL CHARGE | Line[9](9.md) |
| 236                 | 1      | Rate by the Hour | 5.00    |
| 236                 | 2      | Hourly over-ride rate | If[Var[hourly](hourly.md) = 0, Line[1](1.md), Var[hourly](hourly.md)] |
| 236                 | 3      | Min Daily rate | 0.00    |
| 236                 | 4      | Max Daily rate | 999.00  |
| 236                 | 6      |         | Loop[Days](Days.md) |
| 236                 | 7      | Daily time in hours | Sched[Days, 12:00am, 12:00am] |
| 236                 | 8      | calc Daily min if attend > 0 | If[Line[7](7.md) > 0, If[(Line[7](7.md) **Line[2](2.md)) > Line[3](3.md), (Line[7](7.md)** Line[2](2.md)), Line[3](3.md)], 0] |
| 236                 | 10     | Calc. Day charge | Total[If[Line[8](8.md) <= Line[4](4.md), Line[8](8.md), Line[4](4.md)] ] |
| 236                 | 11     | Calc. total time | Total[Line[7](7.md)] |
| 236                 | 12     | Total Days Attended | Total[If[Line[7](7.md) > 0, 1, 0]] |
| 236                 | 13     |         | Loop[End](End.md) |
| 236                 | 15     |         | Print["Total days  =  "Line[12](12.md)] |
| 236                 | 16     |         | Print["Total billed hours  =  "Line[11](11.md)] |
| 236                 | 17     |         | Print["Hourly rate  =  $"Line[2](2.md)] |
| 236                 | 18     |         | Print["Total amount billed  =  $"Line[10](10.md)] |
| 236                 | 19     |         | Print["Note daily minimums or maximums also apply."] |
| 236                 | 20     | TOTAL CHARGE | Line[10](10.md) |
| 237                 | 1      | Rate by the Hour | 5.00    |
| 237                 | 2      | Hourly over-ride rate | If[Var[hourly](hourly.md) = 0, Line[1](1.md), Var[hourly](hourly.md)] |
| 237                 | 3      | Min Daily rate | 0.00    |
| 237                 | 4      | Max Daily rate | 999.00  |
| 237                 | 6      |         | Loop[Days](Days.md) |
| 237                 | 7      | Daily time in hours | OTime[Days, 12:00am, 12:00am] |
| 237                 | 8      | calc Daily min if attend > 0 | If[Line[7](7.md) > 0, If[(Line[7](7.md) **Line[2](2.md)) > Line[3](3.md), (Line[7](7.md)** Line[2](2.md)), Line[3](3.md)], 0] |
| 237                 | 10     | Calc. Day charge | Total[If[Line[8](8.md) <= Line[4](4.md), Line[8](8.md), Line[4](4.md)] ] |
| 237                 | 11     | Calc. total time | Total[Line[7](7.md)] |
| 237                 | 12     | Total Days Attended | Total[If[Line[7](7.md) > 0, 1, 0]] |
| 237                 | 13     |         | Loop[End](End.md) |
| 237                 | 15     |         | Print["Total days  =  "Line[12](12.md)] |
| 237                 | 16     |         | Print["Total billed hours  =  "Line[11](11.md)] |
| 237                 | 17     |         | Print["Hourly rate  =  $"Line[2](2.md)] |
| 237                 | 18     |         | Print["Total amount billed  =  $"Line[10](10.md)] |
| 237                 | 19     |         | Print["Note daily minimums or maximums also apply."] |
| 237                 | 20     | TOTAL CHARGE | Line[10](10.md) |
| 238                 | 1      | 1/2 day rate | 15.00   |
| 238                 | 2      | Full day rate | 25.00   |
| 238                 | 3      | # of hours Full Day starts at | 5.01    |
| 238                 | 5      | Half day over-ride rate | If[Var[halfda](halfda.md) = 0, Line[1](1.md), Var[halfda](halfda.md)] |
| 238                 | 6      | Full day over-ride rate | If[Var[fullda](fullda.md) = 0, Line[2](2.md), Var[fullda](fullda.md)] |
| 238                 | 8      |         | Loop[Days](Days.md) |
| 238                 | 9      | Daily time in hours | Attend[Days, 12:00am, 12:00am] |
| 238                 | 10     | Calc. Half Days | Total[If[Line[9](9.md) > 0, If[Line[9](9.md) < Line[3](3.md), 1, 0], 0]] |
| 238                 | 11     | Calc. Full Days | Total[If[Line[9](9.md) >= Line[3](3.md), 1, 0]] |
| 238                 | 12     | Calc. total time | Total[Line[9](9.md)] |
| 238                 | 13     | Total Days Attended | Total[If[Line[9](9.md) > 0, 1, 0]] |
| 238                 | 14     |         | Loop[End](End.md) |
| 238                 | 16     | Calc. charge | Total[((Line[10](10.md) **Line[5](5.md)) + (Line[11](11.md)** Line[6](6.md)))] |
| 238                 | 18     |         | Print["Total half days  =  "Line[10](10.md)] |
| 238                 | 19     |         | Print["Total full days  =  "Line[11](11.md)] |
| 238                 | 20     |         | Print["Half day rate  =  $"Line[5](5.md)] |
| 238                 | 21     |         | Print["Full day rate  =  $"Line[6](6.md)] |
| 238                 | 22     |         | Print["Total amount billed  =  $"Line[16](16.md)] |
| 238                 | 23     | TOTAL CHARGE | Line[16](16.md) |
| 245                 | 1      | Daily Rate | 20.00   |
| 245                 | 2      | Max Absent days | 5       |
| 245                 | 3      | max absent to only bill atten | 99      |
| 245                 | 4      | over-ride rate | If[Var[daily](daily.md) > 0, Var[daily](daily.md), Line[1](1.md)] |
| 245                 | 5      | over-ride max absent | If[Var[maxab](maxab.md) > 0, Var[maxab](maxab.md), Line[3](3.md)] |
| 245                 | 7      | monthly range | Loop[Days](Days.md) |
| 245                 | 8      | Total Days Scheduled  | Total[If[Sched[Days, 12:00am, 12:00am] > 0, 1, 0]] |
| 245                 | 9      | Total Days Attended | Total[If[Attend[Days, 12:00am, 12:00am] > 0, 1, 0]] |
| 245                 | 10     |         | Loop[End](End.md) |
| 245                 | 11     | are attend days acceptable |         |
| 245                 | 12     | to bill for absent days | If[(Line[9](9.md) + Line[5](5.md)) >= Line[8](8.md), 0, (Line[8](8.md) - Line[9](9.md))] |
| 245                 | 13     | Total Days missed beyond max | If[Line[12](12.md) = 0, If[(Line[9](9.md) + Line[2](2.md)) >= Line[8](8.md), 0, (Line[8](8.md) - (Line[9](9.md) + Line[2](2.md)))], 0] |
| 245                 | 14     | Calculate charge | (((Line[13](13.md) + Line[12](12.md)) **Line[4](4.md)) + 0.00)**|
| 245                 | 16     |         | Print["Max absent days  =  "Line[2](2.md)] |
| 245                 | 17     |         | Print["Total days attended  =  "Line[9](9.md)] |
| 245                 | 18     |         | Print["Total days scheduled  =  "Line[8](8.md)] |
| 245                 | 19     |         | Print["Total days billed  =  "Line[13](13.md)] |
| 245                 | 20     |         | Print["Daily rate  =  $"Line[4](4.md)] |
| 245                 | 21     |         | Print["Total amount billed  =  $"Line[14](14.md)] |
| 245                 | 22     | TOTAL CHARGE | Line[14](14.md) |
| 246                 | 1      | Daily Rate | 20.00   |
| 246                 | 2      | Max Absent days | 5       |
| 246                 | 3      | max absent to only bill atten | 5       |
| 246                 | 4      | over-ride rate | If[Var[daily](daily.md) > 0, Var[daily](daily.md), Line[1](1.md)] |
| 246                 | 5      | over-ride max absent | If[Var[maxab](maxab.md) > 0, Var[maxab](maxab.md), Line[3](3.md)] |
| 246                 | 7      | monthly range | Loop[Days](Days.md) |
| 246                 | 8      | Total Days Scheduled  | Total[If[Sched[Days, 12:00am, 12:00am] > 0, 1, 0]] |
| 246                 | 9      | Total Days Attended | Total[If[Attend[Days, 12:00am, 12:00am] > 0, 1, 0]] |
| 246                 | 10     |         | Loop[End](End.md) |
| 246                 | 11     | are attend days acceptable |         |
| 246                 | 12     | to bill for absent days | If[(Line[9](9.md) + Line[5](5.md)) >= Line[8](8.md), 1, 0] |
| 246                 | 13     | Total days to bill w/sick day | If[Line[12](12.md) = 1, If[Line[9](9.md) >= Line[8](8.md), Line[9](9.md), If[(Line[9](9.md) + Line[2](2.md)) >= Line[8](8.md), Line[8](8.md), (Line[9](9.md) + Line[2](2.md))]], 0] |
| 246                 | 14     | Total days billed no absent | If[Line[12](12.md) = 0, Line[9](9.md), 0] |
| 246                 | 15     | Calculate charge | (((Line[13](13.md) + Line[14](14.md)) **Line[4](4.md)) + 0.00)**|
| 246                 | 17     |         | Print["Max absent days  =  "Line[2](2.md)] |
| 246                 | 18     |         | Print["Max override absent days  =  "Line[5](5.md)] |
| 246                 | 19     |         | Print["Total days attended  =  "Line[9](9.md)] |
| 246                 | 20     |         | Print["Total days scheduled  =  "Line[8](8.md)] |
| 246                 | 21     |         | Print["Total days billed  =  "(Line[13](13.md) + Line[14](14.md))] |
| 246                 | 22     |         | Print["Daily rate  =  $"Line[4](4.md)] |
| 246                 | 23     |         | Print["Total amount billed  =  $"Line[15](15.md)] |
| 246                 | 24     | TOTAL CHARGE | Line[15](15.md) |
| 249                 | 1      | All day rate | 30.00   |
| 249                 | 2      | AM day rate | 10.00   |
| 249                 | 3      | Mid day rate | 12.00   |
| 249                 | 4      | PM day rate | 15.00   |
| 249                 | 5      | AM-Mid rate | 17.00   |
| 249                 | 6      | AM-PM rate | 20.00   |
| 249                 | 7      | Mid-PM rate | 25.00   |
| 249                 | 9      | All day over-ride rate | If[Var[allday](allday.md) = 0, Line[1](1.md), Var[allday](allday.md)] |
| 249                 | 10     | AM over-ride rate | If[Var[am](am.md) = 0, Line[2](2.md), Var[am](am.md)] |
| 249                 | 11     | Mid over-ride rate | If[Var[mid](mid.md) = 0, Line[3](3.md), Var[mid](mid.md)] |
| 249                 | 12     | PM over-ride rate | If[Var[pm](pm.md) = 0, Line[4](4.md), Var[pm](pm.md)] |
| 249                 | 13     | AM-Mid over-ride rate | If[Var[ammid](ammid.md) = 0, Line[5](5.md), Var[ammid](ammid.md)] |
| 249                 | 14     | AM-PM over-ride rate | If[Var[ampm](ampm.md) = 0, Line[6](6.md), Var[ampm](ampm.md)] |
| 249                 | 15     | Mid-PM over-ride rate | If[Var[midpm](midpm.md) = 0, Line[7](7.md), Var[midpm](midpm.md)] |
| 249                 | 17     |         | Loop[Days](Days.md) |
| 249                 | 18     | AM hours | If[Sched[Days, 6:00am, 9:00am] > 0, 1, 0] |
| 249                 | 19     | Mid hours | If[Sched[Days, 9:01am, 2:00pm] > 0, 1, 0] |
| 249                 | 20     | PM Hours | If[Sched[Days, 2:01pm, 5:00pm] > 0, 1, 0] |
| 249                 | 22     | all day | Total[If[Line[18](18.md) > 0 and Line[19](19.md) > 0, If[Line[20](20.md) > 0, 1, 0], 0]] |
| 249                 | 23     | am only | Total[If[Line[18](18.md) > 0 and Line[19](19.md) < 1, If[Line[20](20.md) < 1, 1, 0], 0]] |
| 249                 | 24     | mid only | Total[If[Line[19](19.md) > 0 and Line[18](18.md) < 1, If[Line[20](20.md) < 1, 1, 0], 0]] |
| 249                 | 25     | pm only | Total[If[Line[20](20.md) > 0 and Line[19](19.md) < 1, If[Line[18](18.md) < 1, 1, 0], 0]] |
| 249                 | 26     | am-mid  | Total[If[Line[18](18.md) > 0 and Line[19](19.md) > 0, If[Line[20](20.md) < 1, 1, 0], 0]] |
| 249                 | 27     | am-pm   | Total[If[Line[18](18.md) > 0 and Line[20](20.md) > 0, If[Line[19](19.md) < 1, 1, 0], 0]] |
| 249                 | 28     | mid-pm  | Total[If[Line[19](19.md) > 0 and Line[20](20.md) > 0, If[Line[18](18.md) < 1, 1, 0], 0]] |
| 249                 | 29     |         | Loop[End](End.md) |
| 249                 | 31     | calculate totals | (Line[22](22.md) **Line[9](9.md)) + (Line[23](23.md)** Line[10](10.md)) + (Line[24](24.md) **Line[11](11.md)) + (Line[25](25.md)** Line[12](12.md)) + (Line[26](26.md) **Line[13](13.md)) + (Line[27](27.md)** Line[14](14.md)) + (Line[28](28.md) **Line[15](15.md))**|
| 249                 | 33     |         | Print["Total Full days  =  "Line[22](22.md) " @ $"Line[9](9.md) " a day"] |
| 249                 | 34     |         | Print["Total AM only days  =  "Line[23](23.md) " @ $"Line[10](10.md) " a day"] |
| 249                 | 35     |         | Print["Total Mid only days  =  "Line[24](24.md) " @ $"Line[11](11.md) " a day"] |
| 249                 | 36     |         | Print["Total PM only days  =  "Line[25](25.md) " @ $"Line[12](12.md) " a day"] |
| 249                 | 37     |         | Print["Total AM & Mid only days  =  "Line[26](26.md) " @ $"Line[13](13.md) " a day"] |
| 249                 | 38     |         | Print["Total AM & PM only days  =  "Line[27](27.md) " @ $"Line[14](14.md) " a day"] |
| 249                 | 39     |         | Print["Total Mid & PM only days  =  "Line[28](28.md) " @ $"Line[15](15.md) " a day"] |
| 249                 | 40     |         | Print["Total amount billed  =  $"Line[31](31.md)] |
| 249                 | 41     | TOTAL CHARGE | Line[31](31.md) |
| 250                 | 1      | 1/2 day rate | 15.00   |
| 250                 | 2      | Full day rate | 25.00   |
| 250                 | 3      | Half to full days rate | 10.00   |
| 250                 | 4      | # of hours Full Day starts at | 5.01    |
| 250                 | 6      | Half day over-ride rate | If[Var[halfda](halfda.md) = 0, Line[1](1.md), Var[halfda](halfda.md)] |
| 250                 | 7      | Full day over-ride rate | If[Var[fullda](fullda.md) = 0, Line[2](2.md), Var[fullda](fullda.md)] |
| 250                 | 8      | Half to full over-ride rate | If[Var[tofull](tofull.md) = 0, Line[3](3.md), Var[tofull](tofull.md)] |
| 250                 | 10     | look at attend vs sched and |         |
| 250                 | 11     | bill difference if any |         |
| 250                 | 12     |         | Loop[Days](Days.md) |
| 250                 | 13     | Daily time in hours | Attend[Days, 12:00am, 12:00am] |
| 250                 | 14     |         | Sched[Days, 12:00am, 12:00am] |
| 250                 | 15     | 1=1/2 day, 2= full day |         |
| 250                 | 16     | if attend, is it full or 1/2 | If[Line[13](13.md) > 0, If[Line[13](13.md) < Line[4](4.md), 1, 2], 0] |
| 250                 | 17     | if sched, is it full or 1/2 | If[Line[14](14.md) > 0, If[Line[14](14.md) < Line[4](4.md), 1, 2], 0] |
| 250                 | 19     | count extra 1/2 days | Total[If[Line[16](16.md) = 1 and Line[17](17.md) = 0, 1, 0]] |
| 250                 | 20     | count extra full days | Total[If[Line[16](16.md) = 2 and Line[17](17.md) = 0, 1, 0]] |
| 250                 | 21     | count 1/2 sched to full atten | Total[If[Line[16](16.md) = 2 and Line[17](17.md) = 1, 1, 0]] |
| 250                 | 22     |         | Loop[End](End.md) |
| 250                 | 24     | total extra charges | (Line[19](19.md) **Line[6](6.md)) + (Line[20](20.md)** Line[7](7.md)) + (Line[21](21.md) **Line[8](8.md))**|
| 250                 | 26     |         | Print["Total extra half days  =  "Line[19](19.md)] |
| 250                 | 27     |         | Print["Total extra full days  =  "Line[20](20.md)] |
| 250                 | 28     |         | Print["Total half to full days  =  "Line[21](21.md)] |
| 250                 | 29     |         | Print["Half day rate  =  $"Line[6](6.md)] |
| 250                 | 30     |         | Print["Full day rate  =  $"Line[7](7.md)] |
| 250                 | 31     |         | Print["Half to full day rate  =  $"Line[8](8.md)] |
| 250                 | 32     |         | Print["Total amount billed  =  $"Line[24](24.md)] |
| 250                 | 33     | TOTAL CHARGE | Line[24](24.md) |
| 251                 | 1      | 1/2 day rate | 15.00   |
| 251                 | 2      | Full day rate | 25.00   |
| 251                 | 3      | # of hours Full Day starts at | 5.01    |
| 251                 | 5      | Half dayover-ride rate | If[Var[halfda](halfda.md) = 0, Line[1](1.md), Var[halfda](halfda.md)] |
| 251                 | 6      | Full day over-ride rate | If[Var[fullda](fullda.md) = 0, Line[2](2.md), Var[fullda](fullda.md)] |
| 251                 | 8      |         | Loop[Days](Days.md) |
| 251                 | 9      | Daily time in hours | Sched[Days, 12:00am, 12:00am] |
| 251                 | 10     | Calc. Half Days | Total[If[Line[9](9.md) > 0, If[Line[9](9.md) < Line[3](3.md), 1, 0], 0]] |
| 251                 | 11     | Calc. Full Days | Total[If[Line[9](9.md) >= Line[3](3.md), 1, 0]] |
| 251                 | 12     | Calc. total time | Total[Line[9](9.md)] |
| 251                 | 13     | Total Days Attended | Total[If[Line[9](9.md) > 0, 1, 0]] |
| 251                 | 14     |         | Loop[End](End.md) |
| 251                 | 16     | Calc. charge | Total[((Line[10](10.md) **Line[5](5.md)) + (Line[11](11.md)** Line[6](6.md)))] |
| 251                 | 18     |         | Print["Total half days  =  "Line[10](10.md)] |
| 251                 | 19     |         | Print["Total full days  =  "Line[11](11.md)] |
| 251                 | 20     |         | Print["Half day rate  =  $"Line[5](5.md)] |
| 251                 | 21     |         | Print["Full day rate  =  $"Line[6](6.md)] |
| 251                 | 22     |         | Print["Total amount billed  =  $"Line[16](16.md)] |
| 251                 | 23     | TOTAL CHARGE | Line[16](16.md) |
| 252                 | 1      | All day rate | 30.00   |
| 252                 | 2      | AM day rate | 10.00   |
| 252                 | 3      | Mid day rate | 12.00   |
| 252                 | 4      | PM day rate | 15.00   |
| 252                 | 5      | AM-Mid rate | 17.00   |
| 252                 | 6      | AM-PM rate | 20.00   |
| 252                 | 7      | Mid-PM rate | 25.00   |
| 252                 | 9      | All day over-ride rate | If[Var[allday](allday.md) = 0, Line[1](1.md), Var[allday](allday.md)] |
| 252                 | 10     | AM over-ride rate | If[Var[am](am.md) = 0, Line[2](2.md), Var[am](am.md)] |
| 252                 | 11     | Mid over-ride rate | If[Var[mid](mid.md) = 0, Line[3](3.md), Var[mid](mid.md)] |
| 252                 | 12     | PM over-ride rate | If[Var[pm](pm.md) = 0, Line[4](4.md), Var[pm](pm.md)] |
| 252                 | 13     | AM-Mid over-ride rate | If[Var[ammid](ammid.md) = 0, Line[5](5.md), Var[ammid](ammid.md)] |
| 252                 | 14     | AM-PM over-ride rate | If[Var[ampm](ampm.md) = 0, Line[6](6.md), Var[ampm](ampm.md)] |
| 252                 | 15     | Mid-PM over-ride rate | If[Var[midpm](midpm.md) = 0, Line[7](7.md), Var[midpm](midpm.md)] |
| 252                 | 17     |         | Loop[Days](Days.md) |
| 252                 | 18     | AM hours | If[Attend[Days, 6:00am, 9:00am], 1, 0] |
| 252                 | 19     | Mid hours | If[Attend[Days, 9:01am, 2:00pm], 1, 0] |
| 252                 | 20     | PM Hours | If[Attend[Days, 2:01pm, 5:00pm], 1, 0] |
| 252                 | 22     | AM hours | If[Sched[Days, 6:00am, 9:00am], 1, 0] |
| 252                 | 23     | Mid hours | If[Sched[Days, 9:01am, 2:00pm], 1, 0] |
| 252                 | 24     | PM Hours | If[Sched[Days, 2:01pm, 5:00pm], 1, 0] |
| 252                 | 26     | count extra AM attend | If[Line[18](18.md) > Line[22](22.md), 1, 0] |
| 252                 | 27     | count extra Mid attend | If[Line[19](19.md) > Line[23](23.md), 1, 0] |
| 252                 | 28     | count extra PM attend | If[Line[20](20.md) > Line[24](24.md), 1, 0] |
| 252                 | 30     | all day | Total[If[Line[26](26.md) > 0 and Line[27](27.md) > 0, If[Line[28](28.md) > 0, 1, 0], 0]] |
| 252                 | 31     | am only | Total[If[Line[26](26.md) > 0 and Line[27](27.md) < 1, If[Line[28](28.md) < 1, 1, 0], 0]] |
| 252                 | 32     | mid only | Total[If[Line[27](27.md) > 0 and Line[26](26.md) < 1, If[Line[28](28.md) < 1, 1, 0], 0]] |
| 252                 | 33     | pm only | Total[If[Line[28](28.md) > 0 and Line[27](27.md) < 1, If[Line[26](26.md) < 1, 1, 0], 0]] |
| 252                 | 34     | am-mid  | Total[If[Line[26](26.md) > 0 and Line[27](27.md) > 0, If[Line[28](28.md) < 1, 1, 0], 0]] |
| 252                 | 35     | am-pm   | Total[If[Line[26](26.md) > 0 and Line[28](28.md) > 0, If[Line[27](27.md) < 1, 1, 0], 0]] |
| 252                 | 36     | mid-pm  | Total[If[Line[27](27.md) > 0 and Line[28](28.md) > 0, If[Line[26](26.md) < 1, 1, 0], 0]] |
| 252                 | 38     |         | Loop[End](End.md) |
| 252                 | 40     | calculate totals | (Line[30](30.md) **Line[9](9.md)) + (Line[31](31.md)** Line[10](10.md)) + (Line[32](32.md) **Line[11](11.md)) + (Line[33](33.md)** Line[12](12.md)) + (Line[34](34.md) **Line[13](13.md)) + (Line[35](35.md)** Line[14](14.md)) + (Line[36](36.md) **Line[15](15.md))**|
| 252                 | 42     |         | Print["Extra Full days  =  "Line[30](30.md) " @ $"Line[9](9.md) " a day"] |
| 252                 | 43     |         | Print["Extra AM only days  =  "Line[31](31.md) " @ $"Line[10](10.md) " a day"] |
| 252                 | 44     |         | Print["Extra Mid only days  =  "Line[32](32.md) " @ $"Line[11](11.md) " a day"] |
| 252                 | 45     |         | Print["Extra PM only days  =  "Line[33](33.md) " @ $"Line[12](12.md) " a day"] |
| 252                 | 46     |         | Print["Extra AM & Mid only days  =  "Line[34](34.md) " @ $"Line[13](13.md) " a day"] |
| 252                 | 47     |         | Print["Extra AM & PM only days  =  "Line[35](35.md) " @ $"Line[14](14.md) " a day"] |
| 252                 | 48     |         | Print["Extra Mid & PM only days  =  "Line[36](36.md) " @ $"Line[15](15.md) " a day"] |
| 252                 | 49     |         | Print["Total amount billed  =  $"Line[40](40.md)] |
| 252                 | 50     | TOTAL CHARGE | Line[40](40.md) |
| 253                 | 1      | All day rate | 30.00   |
| 253                 | 2      | AM day rate | 10.00   |
| 253                 | 3      | Mid day rate | 12.00   |
| 253                 | 4      | PM day rate | 15.00   |
| 253                 | 5      | AM-Mid rate | 17.00   |
| 253                 | 6      | AM-PM rate | 20.00   |
| 253                 | 7      | Mid-PM rate | 25.00   |
| 253                 | 9      | All day over-ride rate | If[Var[allday](allday.md) = 0, Line[1](1.md), Var[allday](allday.md)] |
| 253                 | 10     | AM over-ride rate | If[Var[am](am.md) = 0, Line[2](2.md), Var[am](am.md)] |
| 253                 | 11     | Mid over-ride rate | If[Var[mid](mid.md) = 0, Line[3](3.md), Var[mid](mid.md)] |
| 253                 | 12     | PM over-ride rate | If[Var[pm](pm.md) = 0, Line[4](4.md), Var[pm](pm.md)] |
| 253                 | 13     | AM-Mid over-ride rate | If[Var[ammid](ammid.md) = 0, Line[5](5.md), Var[ammid](ammid.md)] |
| 253                 | 14     | AM-PM over-ride rate | If[Var[ampm](ampm.md) = 0, Line[6](6.md), Var[ampm](ampm.md)] |
| 253                 | 15     | Mid-PM over-ride rate | If[Var[midpm](midpm.md) = 0, Line[7](7.md), Var[midpm](midpm.md)] |
| 253                 | 17     |         | Loop[Days](Days.md) |
| 253                 | 18     | AM hours | If[Attend[Days, 6:00am, 9:00am] > 0, 1, 0] |
| 253                 | 19     | Mid hours | If[Attend[Days, 9:01am, 2:00pm] > 0, 1, 0] |
| 253                 | 20     | PM Hours | If[Attend[Days, 2:01pm, 5:00pm] > 0, 1, 0] |
| 253                 | 22     | all day | Total[If[Line[18](18.md) > 0 and Line[19](19.md) > 0, If[Line[20](20.md) > 0, 1, 0], 0]] |
| 253                 | 23     | am only | Total[If[Line[18](18.md) > 0 and Line[19](19.md) < 1, If[Line[20](20.md) < 1, 1, 0], 0]] |
| 253                 | 24     | mid only | Total[If[Line[19](19.md) > 0 and Line[18](18.md) < 1, If[Line[20](20.md) < 1, 1, 0], 0]] |
| 253                 | 25     | pm only | Total[If[Line[20](20.md) > 0 and Line[19](19.md) < 1, If[Line[18](18.md) < 1, 1, 0], 0]] |
| 253                 | 26     | am-mid  | Total[If[Line[18](18.md) > 0 and Line[19](19.md) > 0, If[Line[20](20.md) < 1, 1, 0], 0]] |
| 253                 | 27     | am-pm   | Total[If[Line[18](18.md) > 0 and Line[20](20.md) > 0, If[Line[19](19.md) < 1, 1, 0], 0]] |
| 253                 | 28     | mid-pm  | Total[If[Line[19](19.md) > 0 and Line[20](20.md) > 0, If[Line[18](18.md) < 1, 1, 0], 0]] |
| 253                 | 29     |         | Loop[End](End.md) |
| 253                 | 31     | calculate totals | (Line[22](22.md) **Line[9](9.md)) + (Line[23](23.md)** Line[10](10.md)) + (Line[24](24.md) **Line[11](11.md)) + (Line[25](25.md)** Line[12](12.md)) + (Line[26](26.md) **Line[13](13.md)) + (Line[27](27.md)** Line[14](14.md)) + (Line[28](28.md) **Line[15](15.md))**|
| 253                 | 33     |         | Print["Total Full days  =  "Line[22](22.md) " @ $"Line[9](9.md) " a day"] |
| 253                 | 34     |         | Print["Total AM only days  =  "Line[23](23.md) " @ $"Line[10](10.md) " a day"] |
| 253                 | 35     |         | Print["Total Mid only days  =  "Line[24](24.md) " @ $"Line[11](11.md) " a day"] |
| 253                 | 36     |         | Print["Total PM only days  =  "Line[25](25.md) " @ $"Line[12](12.md) " a day"] |
| 253                 | 37     |         | Print["Total AM & Mid only days  =  "Line[26](26.md) " @ $"Line[13](13.md) " a day"] |
| 253                 | 38     |         | Print["Total AM & PM only days  =  "Line[27](27.md) " @ $"Line[14](14.md) " a day"] |
| 253                 | 39     |         | Print["Total Mid & PM only days  =  "Line[28](28.md) " @ $"Line[15](15.md) " a day"] |
| 253                 | 40     |         | Print["Total amount billed  =  $"Line[31](31.md)] |
| 253                 | 41     | TOTAL CHARGE | Line[31](31.md) |