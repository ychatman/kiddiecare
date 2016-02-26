# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_config ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **config\_id** | int(11) | NO   | PRI |         | auto\_increment |         |
| **config\_title** | varchar(255) | NO   |     |         |       |         |
| **config\_key** | varchar(255) | NO   |     |         |       |         |
| **config\_value** | varchar(255) | NO   |     |         |       |         |
| **config\_description** | varchar(255) | NO   |     |         |       |         |
| **config\_group\_id** | int(11) | NO   |     | 0       |       |         |
| **sort\_order** | int(5) | YES  |     |         |       |         |
| **last\_modified** | datetime | YES  |     |         |       |         |
| **date\_added** | datetime | NO   |     | 0000-00-00 00:00:00 |       |         |
| **use\_function** | varchar(255) | YES  |     |         |       |         |
| **set\_function** | varchar(255) | YES  |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | config\_id | 1   | 15          | A         | 0    | 0       |


### Default Data ###
| config\_id | config\_title | config\_key | config\_value | config\_description | config\_group\_id | sort\_order | last\_modified | date\_added | use\_function | set\_function |
|:-----------|:--------------|:------------|:--------------|:--------------------|:------------------|:------------|:---------------|:------------|:--------------|:--------------|
| 1          | Center Name   | CENTER\_NAME | Test Center   | The name of my center | 0                 | 1           |                | 0000-00-00 00:00:00 |               |               |
| 2          | Center Owner  | CENTER\_OWNER | Test Owner    | The name of my center owner | 0                 | 2           |                | 0000-00-00 00:00:00 |               |               |
| 3          | Center E-Mail Address | CENTER\_OWNER\_EMAIL\_ADDRESS | millerdesignstudios@gmail.com | The e-mail address of my center owner | 0                 | 3           |                | 0000-00-00 00:00:00 |               |               |
| 4          | E-Mail From   | EMAIL\_FROM | Test Center   | The name used in (sent) e-mails | 0                 | 4           |                | 0000-00-00 00:00:00 |               |               |
| 5          | Center Address | CENTER\_STREETADDRESS | 123 Anywhere St | The street address of my center | 0                 | 5           |                | 0000-00-00 00:00:00 |               |               |
| 6          | Center State  | CENTER\_STATE |               | The state my center is located in. | 0                 | 6           |                | 0000-00-00 00:00:00 |               |               |
| 7          | Center Zip Code | CENTER\_POSTAL | 37042         | The postal code my center is located in. | 0                 | 7           |                | 0000-00-00 00:00:00 |               |               |
| 8          | Country       | CENTER\_COUNTRY |               | The country my center is located in. | 0                 | 8           |                | 0000-00-00 00:00:00 |               |               |
| 9          | Area Code 1   | CENTER\_AREACODE\_1 | 931           | The area code of my center's main phone number | 0                 | 9           |                | 0000-00-00 00:00:00 |               |               |
| 10         | Phone Number 1 | CENTER\_PHONE\_1 | 1231234       | The main phone number of my center. | 0                 | 10          |                | 0000-00-00 00:00:00 |               |               |
| 11         | Area Code 2   | CENTER\_AREACODE\_2 | 931           | The area code of my center's secondary phone number | 0                 | 11          |                | 0000-00-00 00:00:00 |               |               |
| 12         | Phone Number 2 | CENTER\_PHONE\_2 | 4564567       | The secondary phone number of my center. | 0                 | 12          |                | 0000-00-00 00:00:00 |               |               |
| 13         | Fax Area Code | CENTER\_FAXAREACODE | 931           | The area code of my center's fax number | 0                 | 13          |                | 0000-00-00 00:00:00 |               |               |
| 14         | Fax Number    | CENTER\_FAX | 7897890       | The fax number of my center. | 0                 | 14          |                | 0000-00-00 00:00:00 |               |               |
| 15         | Send E-Mails  | SEND\_EMAILS | TRUE          | Send out e-mails    | 0                 | 15          |                | 0000-00-00 00:00:00 |               |               |