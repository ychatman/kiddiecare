# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_statelist ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **statelistid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **abbreviation** | varchar(2) | NO   | UNI |         |       |         |
| **longname** | varchar(50) | NO   |     |         |       |         |
| **active** | tinyint(1) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | statelistid | 1   | 59          | A         | 0    | 0       |
| **ix\_g\_statelist** | 0    | 0      | 0      | abbreviation | 1   | 59          | A         | 0    | 0       |


### Default Data ###
| statelistid | abbreviation | longname | active |
|:------------|:-------------|:---------|:-------|
| 1           | AK           | Alaska   | 1      |
| 2           | AL           | Alabama  | 1      |
| 3           | AS           | American Samoa | 1      |
| 4           | AZ           | Arizona  | 0      |
| 5           | AR           | Arkansas | 1      |
| 6           | CA           | California | 1      |
| 7           | CO           | Colorado | 1      |
| 8           | CT           | Connecticut | 1      |
| 9           | DE           | Delaware | 1      |
| 10          | DC           | District of Columbia | 1      |
| 11          | FM           | Federated States of Micronesia | 1      |
| 12          | FL           | Florida  | 0      |
| 13          | GA           | Georgia  | 1      |
| 14          | GU           | Guam     | 0      |
| 15          | HI           | Hawaii   | 1      |
| 16          | ID           | Idaho    | 1      |
| 17          | IL           | Illinois | 1      |
| 18          | IN           | Indiana  | 1      |
| 19          | IA           | Iowa     | 1      |
| 20          | KS           | Kansas   | 1      |
| 21          | KY           | Kentucky | 1      |
| 22          | LA           | Louisiana | 1      |
| 23          | ME           | Maine    | 1      |
| 24          | MH           | Marshall Islands | 1      |
| 25          | MD           | Maryland | 1      |
| 26          | MA           | Massachusetts | 0      |
| 27          | MI           | Michigan | 1      |
| 28          | MN           | Minnesota | 1      |
| 29          | MS           | Mississippi | 1      |
| 30          | MO           | Missouri | 0      |
| 31          | MT           | Montana  | 1      |
| 32          | NE           | Nebraska | 1      |
| 33          | NV           | Nevada   | 1      |
| 34          | NH           | New Hampshire | 1      |
| 35          | NJ           | New Jersey | 1      |
| 36          | NM           | New Mexico | 1      |
| 37          | NY           | New York | 1      |
| 38          | NC           | North Carolina | 1      |
| 39          | ND           | North Dakota | 1      |
| 40          | MP           | Northern Mariana Islands | 1      |
| 41          | OH           | Ohio     | 1      |
| 42          | OK           | Oklahoma | 1      |
| 43          | OR           | Oregon   | 1      |
| 44          | PW           | Palau    | 1      |
| 45          | PA           | Pennsylvania | 0      |
| 46          | PR           | Puerto Rico | 0      |
| 47          | RI           | Rhode Island | 1      |
| 48          | SC           | South Carolina | 1      |
| 49          | SD           | South Dakota | 1      |
| 50          | TN           | Tennessee | 1      |
| 51          | TX           | Texas    | 1      |
| 52          | UT           | Utah     | 1      |
| 53          | VT           | Vermont  | 1      |
| 54          | VI           | Virgin Islands | 0      |
| 55          | VA           | Virginia | 1      |
| 56          | WA           | Washington | 1      |
| 57          | WV           | West Virginia | 1      |
| 58          | WI           | Wisconsin | 1      |
| 59          | WY           | Wyoming  | 1      |