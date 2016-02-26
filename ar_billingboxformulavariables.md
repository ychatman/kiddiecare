# [< Database Schema](DatabaseSchema.md) #

## kc\_ar\_billingboxformulavariables ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **variableid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **billingboxformulaid** | int(11) | NO   | MUL |         |       |         |
| **varname** | varchar(6) | NO   |     |         |       |         |
| **varmasktid** | int(11) | NO   | MUL |         |       |         |
| **samplevalue** | decimal(18,2) | NO   |     |         |       |         |
| **variabledesc** | varchar(50) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | variableid | 1   | 38          | A         | 0    | 0       |
| **ix\_ar\_billingboxformulavariables** | 0    | 0      | 0      | billingboxformulaid | 1   |             | A         | 0    | 0       |
| **ix\_ar\_billingboxformulavariables** | 0    | 0      | 0      | varname | 2   | 38          | A         | 0    | 0       |
| **fk\_ar\_billingboxformulavariables\_g\_typestable** | 1    | 1      | 1      | varmasktid | 1   |             | A         | 1    | 1       |


### Default Data ###
| variableid | billingboxformulaid | varname | varmasktid | samplevalue | variabledesc | sortorder |
|:-----------|:--------------------|:--------|:-----------|:------------|:-------------|:----------|
| 559        | 231                 | minute  | 146        | 0.00        | Rate per minute variable by child | 1         |
| 560        | 232                 | hourly  | 146        | 0.00        | Hourly rate variable by child | 1         |
| 563        | 235                 | hourly  | 146        | 0.00        | Hourly rate variable by child | 1         |
| 564        | 236                 | hourly  | 146        | 0.00        | Hourly rate variable by child | 1         |
| 565        | 237                 | hourly  | 146        | 0.00        | Hourly rate variable by child | 1         |
| 576        | 245                 | daily   | 146        | 0.00        | Daily rate variable by child | 2         |
| 577        | 246                 | daily   | 146        | 0.00        | Daily rate variable by child | 2         |
| 588        | 249                 | allday  | 146        | 0.00        | All day over ride rate | 2         |
| 589        | 249                 | am      | 146        | 0.00        | AM over ride rate | 3         |
| 590        | 249                 | mid     | 146        | 0.00        | Mid over ride rate | 4         |
| 591        | 249                 | pm      | 146        | 0.00        | PM over ride rate | 5         |
| 592        | 249                 | ammid   | 146        | 0.00        | AM-Mid over ride rate  | 7         |
| 593        | 249                 | ampm    | 146        | 0.00        | AM-PM over ride rate | 8         |
| 594        | 249                 | midpm   | 146        | 0.00        | Mid-PM over ride rate | 9         |
| 595        | 250                 | halfda  | 146        | 0.00        | Half day rate | 1         |
| 596        | 250                 | fullda  | 146        | 0.00        | Full day rate | 2         |
| 597        | 250                 | tofull  | 146        | 0.00        | Half day to full day rate | 3         |
| 598        | 250                 | hourly  | 145        | 0.00        |              | 4         |
| 599        | 238                 | halfda  | 146        | 0.00        |  Half day rate | 1         |
| 600        | 238                 | fullda  | 146        | 0.00        | Full Day Rate | 2         |
| 601        | 251                 | halfda  | 146        | 0.00        |  Half day rate | 1         |
| 602        | 251                 | fullda  | 146        | 0.00        | Full Day Rate | 2         |
| 603        | 252                 | allday  | 146        | 0.00        | All day over ride rate | 2         |
| 604        | 252                 | am      | 146        | 0.00        | AM over ride rate | 3         |
| 605        | 252                 | mid     | 146        | 0.00        | Mid over ride rate | 4         |
| 606        | 252                 | pm      | 146        | 0.00        | PM over ride rate | 5         |
| 607        | 252                 | ammid   | 146        | 0.00        | AM-Mid over ride rate  | 7         |
| 608        | 252                 | ampm    | 146        | 0.00        | AM-PM over ride rate | 8         |
| 609        | 252                 | midpm   | 146        | 0.00        | Mid-PM over ride rate | 9         |
| 610        | 253                 | allday  | 146        | 0.00        | All day over ride rate | 2         |
| 611        | 253                 | am      | 146        | 0.00        | AM over ride rate | 3         |
| 612        | 253                 | mid     | 146        | 0.00        | Mid over ride rate | 4         |
| 613        | 253                 | pm      | 146        | 0.00        | PM over ride rate | 5         |
| 614        | 253                 | ammid   | 146        | 0.00        | AM-Mid over ride rate  | 7         |
| 615        | 253                 | ampm    | 146        | 0.00        | AM-PM over ride rate | 8         |
| 616        | 253                 | midpm   | 146        | 0.00        | Mid-PM over ride rate | 9         |
| 617        | 246                 | maxab   | 145        | 5.00        | Max absent days to bill only actual attendance | 3         |
| 618        | 245                 | maxab   | 145        | 0.00        |  Max absent days to bill only actual attendance | 3         |