# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_trackingitems ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **trackingitemid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **trackingcategoryid** | int(11) | NO   | MUL |         |       |         |
| **description** | varchar(30) | NO   |     |         |       |         |
| **sizelimit** | int(11) | NO   |     |         |       |         |
| **sortorder** | int(11) | NO   |     |         |       |         |
| **tooltip** | varchar(150) | NO   |     |         |       |         |
| **active** | tinyint(1) | NO   |     | 0       |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | trackingitemid | 1   | 53          | A         | 0    | 0       |
| **ix\_g\_trackingitems\_category** | 0    | 0      | 0      | trackingcategoryid | 1   |             | A         | 0    | 0       |
| **ix\_g\_trackingitems\_category** | 0    | 0      | 0      | description | 2   | 53          | A         | 0    | 0       |


### Default Data ###
| trackingitemid | trackingcategoryid | description | sizelimit | sortorder | tooltip | active |
|:---------------|:-------------------|:------------|:----------|:----------|:--------|:-------|
| 630            | 306                | State       | 0         | 3         | State Subsidized | 1      |
| 631            | 306                | County      | 0         | 4         | County Subsidized | 1      |
| 632            | 308                | Milk        | 0         | 1         |         | 1      |
| 633            | 308                | Wheat       | 0         | 2         |         | 1      |
| 634            | 308                | Peanuts     | 0         | 3         |         | 1      |
| 635            | 308                | Bee Sting   | 0         | 4         |         | 1      |
| 644            | 308                | Pollen      | 0         | 5         |         | 1      |
| 646            | 320                | Hitting     | 0         | 1         |         | 1      |
| 647            | 306                | Private Pay | 0         | 2         | Private Pay Family | 1      |
| 648            | 321                | Single      | 0         | 1         |         | 1      |
| 649            | 321                | Married     | 0         | 2         |         | 1      |
| 650            | 321                | Significant Other | 0         | 3         |         | 1      |
| 651            | 321                | Divorced    | 0         | 4         |         | 1      |
| 652            | 321                | Separated   | 0         | 5         |         | 1      |
| 653            | 321                | Widowed     | 0         | 6         |         | 1      |
| 654            | 322                | Friend / Referral | 0         | 1         |         | 1      |
| 655            | 322                | Yellow Pages | 0         | 2         |         | 1      |
| 656            | 322                | Sign        | 0         | 3         |         | 1      |
| 657            | 322                | Website     | 0         | 4         |         | 1      |
| 658            | 322                | Advertisement | 0         | 5         |         | 1      |
| 659            | 322                | Newspaper   | 0         | 6         |         | 1      |
| 660            | 323                | Cash        | 0         | 1         |         | 1      |
| 661            | 323                | Check       | 0         | 2         |         | 1      |
| 662            | 323                | Tuition Express | 0         | 3         |         | 1      |
| 663            | 324                | Center Agreement | 0         | 1         | Check if they have signed & returned document. | 1      |
| 664            | 325                | Driver      | 0         | 1         |         | 1      |
| 665            | 325                | Event Planning | 0         | 2         |         | 1      |
| 666            | 325                | Fundraising | 0         | 3         |         | 1      |
| 667            | 325                | Reading     | 0         | 4         |         | 1      |
| 668            | 325                | Field Trips | 0         | 5         |         | 1      |
| 669            | 325                | Snacks      | 0         | 6         |         | 1      |
| 670            | 326                | School Directory OK | 0         | 1         | Check if okay to print their name in school directory. | 1      |
| 671            | 320                | Biting      | 0         | 2         |         | 1      |
| 672            | 320                | Oppositional | 0         | 4         |         | 1      |
| 673            | 320                | Kicking     | 0         | 3         |         | 1      |
| 674            | 327                | Fully Potty Trained | 0         | 3         |         | 1      |
| 675            | 327                | Diapers     | 0         | 1         |         | 1      |
| 676            | 327                | In Training | 0         | 2         |         | 1      |
| 677            | 328                | Health Form | 0         | 1         |         | 1      |
| 678            | 328                | Immunizations | 0         | 2         |         | 1      |
| 679            | 328                | Schedule Agreement | 0         | 3         |         | 1      |
| 680            | 328                | Photograph Allowed | 0         | 4         |         | 1      |
| 681            | 329                | AM Bus      | 0         | 1         |         | 1      |
| 682            | 329                | PM Bus      | 0         | 2         |         | 1      |
| 683            | 330                | Full-Time   | 0         | 1         |         | 1      |
| 684            | 330                | Part-Time MWF | 0         | 2         |         | 1      |
| 685            | 330                | Part-Time TU, TH | 0         | 3         |         | 1      |
| 686            | 331                | Art         | 0         | 1         |         | 1      |
| 687            | 331                | Music       | 0         | 2         |         | 1      |
| 688            | 331                | Dance       | 0         | 3         |         | 1      |
| 689            | 332                | ECE Certified | 0         | 3         |         | 1      |
| 690            | 332                | Teaching Certificate | 0         | 4         |         | 1      |
| 691            | 332                | CPR Certified | 0         | 2         |         | 1      |