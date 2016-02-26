# Development Guide #
## Database Structure ##
### Prefixes ###
Each prefix is followed by an underscore (`'_'`).

  * **g**  - General Data

  * **ar** - Family Data / Account Records

  * **ap** - Accounts Payable / General Ledger

  * **fp** - Meal Tracking / Food Program

  * **ed** - Employee data

  * **pr** - Payroll


---

### Permissions ###
UNIX style permissions are used within the database and programming to all editable Access Control Lists (ACL).

  * **0** - None

  * **1** - View

  * **2** - View, Write

  * **3** - View, Write, New

  * **4** - View, Write, New, Delete