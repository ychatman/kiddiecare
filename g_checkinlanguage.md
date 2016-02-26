# [< Database Schema](DatabaseSchema.md) #

## kc\_g\_checkinlanguage ##
| **Field** | Type | Null | Key | Default | Extra | Comment |
|:----------|:-----|:-----|:----|:--------|:------|:--------|
| **languageid** | int(11) | NO   | PRI |         | auto\_increment |         |
| **formname** | varchar(50) | NO   |     |         |       |         |
| **variablename** | varchar(50) | NO   |     |         |       |         |
| **languagetid** | int(11) | NO   | MUL |         |       |         |
| **variabletext** | varchar(500) | NO   |     |         |       |         |


### Indexes ###
| **Keyname** | Type | Unique | Packed | Column | Seq | Cardinality | Collation | Null | Comment |
|:------------|:-----|:-------|:-------|:-------|:----|:------------|:----------|:-----|:--------|
| **PRIMARY** | 0    | 0      | 0      | languageid | 1   | 169         | A         | 0    | 0       |
| **fk\_g\_checkinlanguage\_g\_typestable** | 1    | 1      | 1      | languagetid | 1   | 1           | A         | 1    | 1       |


### Default Data ###
| languageid | formname | variablename | languagetid | variabletext |
|:-----------|:---------|:-------------|:------------|:-------------|
| 3          | Global   | BtnExit      | 332         | &Salir       |
| 4          | Global   | BtnExit      | 330         | &Exit        |
| 5          | FrmCheckInMain | BtnLanguage  | 330         | &Language    |
| 6          | FrmCheckInMain | BtnRegister  | 330         | &Register    |
| 7          | FrmCheckInMain | BtnRegister  | 332         | &Inscribirse |
| 8          | FrmCheckInMain | BtnLanguage  | 332         | &Idioma      |
| 9          | Global   | BtnOptions   | 332         | &Opciones    |
| 10         | Global   | BtnOptions   | 330         | &Options     |
| 15         | FrmCheckKids | BtnAccounting | 332         | &Contabilidad |
| 16         | FrmCheckKids | BtnAccounting | 330         | &Accounting  |
| 17         | Global   | BtnSchedules | 332         | &Horarios    |
| 18         | Global   | BtnImmun     | 332         | &Vacunas     |
| 19         | Global   | BtnMessages  | 332         | &Mensajes    |
| 20         | Global   | BtnSchedules | 330         | &Schedules   |
| 21         | Global   | BtnImmun     | 330         | &Immunizations |
| 22         | Global   | BtnMessages  | 330         | &Messages    |
| 23         | Global   | BtnCancel    | 330         | &Cancel      |
| 24         | Global   | BtnCancel    | 332         | &Cancelar    |
| 25         | FrmAuthOrEmp | BtnAuthorizedPickup | 332         | &Autorizado de recogida |
| 26         | FrmAuthOrEmp | BtnAuthorizedPickup | 330         | &Authorized Pickup |
| 27         | FrmAuthOrEmp | BtnEmployee  | 330         | &Employee    |
| 28         | FrmAuthOrEmp | BtnEmployee  | 332         | &Empleado    |
| 29         | Global   | BtnNext      | 330         | &Next        |
| 30         | Global   | BtnNext      | 332         | &Siguiente   |
| 31         | FrmKeyPad | BtnEnter     | 330         | &Enter       |
| 33         | FrmKeyPad | BtnEnter     | 332         | &Introducir  |
| 35         | FrmKeyPad | LblCaptionUserid | 332         | Introduzca su Identificaci�n de Usuario |
| 36         | FrmKeyPad | LblCaptionPassword | 332         | Introduzca los 4 a 8 d�gitos de su Contrase�a |
| 37         | FrmKeyPad | LblCaptionPersonalID | 332         | Introduzca los 4 a 8 d�gitos de su n�mero de identificaci�n personal |
| 38         | FrmKeyPad | LblCaptionRegPin | 332         | Introduzca los 6 d�gitos de su N�mero de Registro o Inscripci�n |
| 39         | FrmKeyPad | LblCaptionRegPin | 330         | Enter your 6 digit Registration Number |
| 40         | FrmKeyPad | LblCaptionPersonalID | 330         | Enter your 4 - 8 digit Personal ID number |
| 41         | FrmKeyPad | LblCaptionPassword | 330         | Enter your 4 - 8 digit Password |
| 42         | FrmKeyPad | LblCaptionUserid | 330         | Enter your User ID |
| 43         | FrmMessageBox | NotImplementedTitle | 330         | Not Implemented |
| 44         | FrmMessageBox | NotImplementedMessage | 330         | This functionality has not been implemented yet! |
| 45         | FrmMessageBox | ThankYouTitle | 330         | Thank You    |
| 46         | FrmMessageBox | ThankYouMessage | 330         | Procedure Completed Successfully! |
| 47         | FrmMessageBox | SomeErrorsTitle | 330         | Attention    |
| 48         | FrmMessageBox | SomeErrorsMessage | 330         || Procedure Did Not Complete Successfully!|
Please see the Director. 
| 49         | FrmMessageBox | NotImplementedTitle | 332         | No implementado. |
| 50         | FrmMessageBox | NotImplementedMessage | 332         | �Esta funci�n no se ha implementado todav�a! |
| 51         | FrmMessageBox | ThankYouTitle | 332         | Gracias      |
| 52         | FrmMessageBox | ThankYouMessage | 332         | �Procedimiento completado con �xito! |
| 53         | FrmMessageBox | SomeErrorsTitle | 332         | Atenci�n     |
| 54         | FrmMessageBox | SomeErrorsMessage | 332         || �Procedimiento no finaliz� correctamente!|
Por favor vea al Director. 
| 55         | FrmCheckInMain | BtnTapAKey   | 330         | &Start Here... |
| 56         | FrmCheckInMain | BtnTapAKey   | 332         | &Empiece Aqu�... |
| 59         | ClsCheckInOut | _TITLE_| 330         | Check In/Out |
| 60         | ClsCheckInOut | _TITLE_| 332         | Para Entrar / Salir |
| 61         | ClsCheckInOut | NotFound     | 332         || La informaci�n que ha introducido no fue encontrada.|

Haga clic en el bot�n Cancelar para empezar de nuevo y vuelve a intentarlo. 
| 62 | ClsCheckInOut | ScreenError | 332 || Se produjo un error durante el Entrar / Salir.|
|:---|:--------------|:------------|:----|

Por favor p�ngase en contacto con el director del centro. 
| 63 | ClsCheckInOut | NotFound | 330 || The information you entered was not found.|
|:---|:--------------|:---------|:----|

Click on the cancel button to start over and try again. 
| 64 | ClsCheckInOut | ScreenError | 330 || An error occured during Check In/Out.|
|:---|:--------------|:------------|:----|

Please contact the center director. 
| 67 | ClsRegistration | _TITLE_| 330 | Attendance Registration |
|:---|:----------------|:|:----|:------------------------|
| 68 | ClsRegistration | RegScreenIntro | 330 || To continue with registration you will need a Registration number from the center director.|

If you have that number, click next to continue.

If you don't have it then click cancel and see the center director. 
| 69 | ClsRegistration | RegScreenFound1 | 330 | Welcome |
|:---|:----------------|:----------------|:----|:--------|
| 70 | ClsRegistration | RegScreenNotFound | 330 || The registration information you entered was not found.|

Click on the cancel button to start over and try again. 
| 71 | ClsRegistration | RegScreenExplainPIN | 330 || On the next screen you will need to enter a 4 - 8 digit Personal ID Number. You will use this ID Number to check in and out.|
|:---|:----------------|:--------------------|:----|
Click on the Next button to continue. 
| 72 | ClsRegistration | RegScreenExplainFingerprint | 330 || On the next screen you we will need to get a Fingerprint from you. You will use this Fingerprint to check in and out.|

The process will get your fingerprint from you four (4) times. Use the same finger all four times.

Click on the Next button to continue. 
| 73 | ClsRegistration | RegScreenExplainCardswipe | 330 || On the next screen you we will need to get a Cardswipe from you. You will use this Cardswipe to check in and out.|
|:---|:----------------|:--------------------------|:----|

The process will get your Cardswipe from you two (2) times. It will compare them and if they do not match it will ask for them again.

Click on the Next button to continue. 
| 74 | ClsRegistration | RegScreenExplainPassword | 330 || Finally, on the next screen you will need to enter a 4 - 8 digit Password. You will use this password to check in and out.|
|:---|:----------------|:-------------------------|:----|

Click on the Next button to continue. 
| 75 | ClsRegistration | RegScreenDone | 330 || Congratulations! Registration is done.|
|:---|:----------------|:--------------|:----|

Click on the Next button to begin checking in/out. 
| 76 | ClsRegistration | RegScreenError | 330 || An error occurred during registration.|
|:---|:----------------|:---------------|:----|

Please contact the center director. 
| 77 | ClsRegistration | RegScreenFound2 | 330 || If this is not you, click on the cancel button and start over.|
|:---|:----------------|:----------------|:----|

If this is you, click on next to continue with registration or cancel to exit. 
| 78 | ClsRegistration | _TITLE_| 332 | Registro de la atenci�n |
|:---|:----------------|:|:----|:------------------------|
| 79 | ClsRegistration | RegScreenIntro | 332 || Para continuar con la inscripci�n, usted necesitar� un n�mero de Inscripci�n del director del centro.|

Si usted tiene ese n�mero, oprima el bot�n Siguiente para continuar.  Si usted tiene ese n�mero, haga clic en el bot�n Siguiente para continuar.

Si no lo tiene haga clic en cancelar y vea al director del centro. 
| 80 | ClsRegistration | RegScreenFound1 | 332 | Bienvenido |
|:---|:----------------|:----------------|:----|:-----------|
| 81 | ClsRegistration | RegScreenFound2 | 332 || Si �ste no es usted, haga clic en el bot�n de cancelar y empiece de nuevo.|

Si �ste es usted, haga clic en el bot�n de Siguiente para continuar con la inscripci�n o cancelar para salir. 
| 82 | ClsRegistration | RegScreenNotFound | 332 || La informaci�n de inscripci�n que usted introdujo no se encontr�.|
|:---|:----------------|:------------------|:----|

Haga clic en el bot�n Cancelar para empezar de nuevo y vuelve a intentarlo. 
| 83 | ClsRegistration | RegScreenExplainPIN | 332 || En la siguiente pantalla tendr� que introducir un N�mero de Identificaci�n Personal de 4 a 8 d�gitos.  Usted usar� este N�mero de Identificaci�n para entrar y salir.|
|:---|:----------------|:--------------------|:----|

Haga clic en el bot�n Siguiente para continuar. 
| 84 | ClsRegistration | RegScreenExplainFingerprint | 332 || En la siguiente pantalla tendremos que conseguir una huella dactilar de usted. Usted usar� esta huella dactilar para entrar y salir.|
|:---|:----------------|:----------------------------|:----|

El proceso le pedir� su huella dactilar cuatro (4) veces. Utilice el mismo dedo en las cuatro ocasiones.

Haga clic en el bot�n Siguiente para continuar. 
| 85 | ClsRegistration | RegScreenExplainCardswipe | 332 || En la siguiente pantalla necesitaremos que deslice su tarjeta.  Usted usar� este deslice para entrar y para salir.|
|:---|:----------------|:--------------------------|:----|

El proceso le pedir� que deslice su tarjeta dos (2) veces.  Se comparan y si no coinciden, se le pedir� de nuevo.

Haga clic en el bot�n Siguiente para continuar. 
| 86 | ClsRegistration | RegScreenExplainPassword | 332 || Por �ltimo, en la siguiente pantalla usted tendr� que introducir una contrase�a de 4 a 8 d�gitos.  Usted utilizar� esta contrase�a para entrar y salir.|
|:---|:----------------|:-------------------------|:----|

Haga clic en el bot�n Siguiente para continuar. 
| 87 | ClsRegistration | RegScreenDone | 332 || �Felicidades!  Su inscripci�n est� completa.|
|:---|:----------------|:--------------|:----|

Haga clic en el bot�n Siguiente para empezar a entrar / salir. 
| 88 | ClsRegistration | RegScreenError | 332 || Se produjo un error durante la inscripci�n.|
|:---|:----------------|:---------------|:----|

Por favor p�ngase en contacto con el director del centro. 
| 89 | FrmMessageBox | InvalidSchoolTitle | 330 | Invalid School |
|:---|:--------------|:-------------------|:----|:---------------|
| 90 | FrmMessageBox | InvalidSchoolMessage | 330 | Unable to find the selected school! |
| 91 | FrmMessageBox | InvalidSchoolTitle | 332 | Escuela no v�lida |
| 92 | FrmMessageBox | InvalidSchoolMessage | 332 | �No se pudo encontrar la escuela seleccionada! |
| 93 | FrmMessageBox | CardSwipeErrorTitle | 330 | Cardswipe Error |
| 94 | FrmMessageBox | CardSwipeErrorMessage | 330 | Please try swiping your card again! |
| 95 | FrmMessageBox | CardSwipeErrorTitle | 332 | Error al deslizar la tarjeta |
| 96 | FrmMessageBox | CardSwipeErrorMessage | 332 | �Por favor intente deslizar su tarjeta de nuevo! |
| 97 | ClsRegistration | RegScreenTryAgain  | 330 || Unable to save registration information.|

Please try again or see the Director. 
| 98 | ClsRegistration | RegScreenTryAgain | 332 || No se puede guardar la informaci�n de inscripci�n.|
|:---|:----------------|:------------------|:----|

Por favor, int�ntelo de nuevo o vea al Director. 
| 101 | FrmCardSwipe | LblMessageText1 | 330 | Press the button below to begin reading your card swipe |
|:----|:-------------|:----------------|:----|:--------------------------------------------------------|
| 102 | FrmCardSwipe | LblMessageText1 | 332 | Oprima el bot�n de abajo para comenzar la lectura de su tarjeta |
| 104 | FrmCardSwipe | BtnCardSwipe    | 332 | &Presione aqu� para comenzar�                           |
| 105 | ClsCheckInOut | FoundButNotAuthorized | 330 | Your information was found but you are not eligible for any transactions at this school. |
| 106 | ClsCheckInOut | FoundButNotAuthorized | 332 | Su informaci�n se encontr�, pero no re�ne los requisitos necesarios para hacer transacciones en esta escuela. |
| 107 | Global       | BtnFinish       | 330 | &Finish                                                 |
| 108 | Global       | BtnFinish       | 332 | &Terminar                                               |
| 109 | FrmMessageBox | UnreadMessagesTitle | 330 | Unread Messages                                         |
| 110 | FrmMessageBox | UnreadMessagesMessage | 330 | Please read all of your messages.                       |
| 111 | FrmMessageBox | UnreadMessagesTitle | 332 | Los mensajes no le�dos.                                 |
| 112 | FrmMessageBox | UnreadMessagesMessage | 332 | Por favor, lea todos los mensajes.                      |
| 113 | FrmMessageBox | FingerprintErrorTitle | 330 | Fingerprint Error                                       |
| 114 | FrmMessageBox | FingerprintErrorTitle | 332 | Error de huella digital                                 |
| 115 | FrmMessageBox | FingerprintErrorMessage | 330 | Please try reading your fingerprint again!              |
| 116 | FrmMessageBox | FingerprintErrorMessage | 332 | �Por favor intente introducir la huella digital de nuevo! |
| 117 | FrmFingerprint | fingerUp        | 330 | Place your finger on the scanner now.                   |
| 118 | FrmFingerprint | fingerUp        | 332 | Coloque el dedo en el esc�ner ahora.                    |
| 119 | FrmFingerprint | sameFinger      | 330 | Use the same finger you used when you registered.       |
| 120 | FrmFingerprint | sameFinger      | 332 | Utilice el mismo dedo que utiliz� cuando se inscribi�.  |
| 121 | FrmFingerprint | tryAgain        | 332 | �Por favor, int�ntelo de nuevo!                         |
| 122 | FrmFingerprint | tryAgain        | 330 | Please try again!                                       |
| 123 | FrmFingerprint | fingerDown      | 330 | Remove your finger from the scanner now.                |
| 124 | FrmFingerprint | fingerDown      | 332 | Retire el dedo del esc�ner ahora.                       |
| 125 | ClsRegistration | RegScreenTryAgainCS | 330 || Unable to save registration information.|

Try again and be sure to use a different Card. 
| 126 | ClsRegistration | RegScreenTryAgainFP | 330 || Unable to save registration information.|
|:----|:----------------|:--------------------|:----|

Try again and be sure to use a different Finger. 
| 127 | ClsRegistration | RegScreenTryAgainCS | 332 || No se puede guardar la informaci�n de inscripci�n.|
|:----|:----------------|:--------------------|:----|

Trate otra vez y aseg�rese de usar una Tarjeta diferente. 
| 128 | ClsRegistration | RegScreenTryAgainFP | 332 || No se puede guardar la informaci�n de inscripci�n.|
|:----|:----------------|:--------------------|:----|

Int�ntelo de nuevo y aseg�rese de usar un dedo diferente. 
| 129 | Global | BtnBypass | 330 | &Bypass |
|:----|:-------|:----------|:----|:--------|
| 130 | Global | BtnBypass | 332 | &Saltar |
| 131 | FrmCardSwipe | flashingText1 | 330 | Swipe Card Now... |
| 132 | FrmCardSwipe | flashingText2 | 330 | Swipe Card Again... |
| 133 | FrmCardSwipe | flashingText1 | 332 | Deslice la tarjeta ahora... |
| 134 | FrmCardSwipe | flashingText2 | 332 | Deslice la tarjeta de nuevo� |
| 135 | FrmCardSwipe | LblMessageText2 | 332 | Deslice su tarjeta ahora |
| 136 | FrmCardSwipe | LblMessageText2 | 330 | Swipe your card now. |
| 137 | FrmKeyPad | BtnBackspace | 330 | Backspace |
| 138 | FrmKeyPad | BtnBackspace | 332 | Tecla de retroceso |
| 139 | Global | BtnClear  | 330 | C&lear  |
| 140 | Global | BtnClear  | 332 | &Borrar |
| 141 | Global | SigClear  | 330 | Sign the signature capture pad. |
| 142 | Global | SigClear  | 332 | Firme en la plataforma de captura de la firma. |
| 143 | FrmMessageBox | InvalidSignatureTitle | 330 | Invalid Signature |
| 144 | FrmMessageBox | InvalidSignatureMessage | 330 | Please sign the signature capture pad! |
| 145 | FrmMessageBox | InvalidSignatureMessage | 332 | �Por favor firme la plataforma de captura de firma! |
| 146 | FrmMessageBox | InvalidSignatureTitle | 332 | Firma no es v�lida |
| 147 | FrmMessageBox | ScheduleAdherenceTitle | 330 | Schedule Adherence |
| 148 | FrmMessageBox | ScheduleAdherenceMessage | 330 | You are not authorized at this time! |
| 149 | FrmMessageBox | ScheduleAdherenceTitle | 332 | Adherencia al horario o al calendario |
| 150 | FrmMessageBox | ScheduleAdherenceMessage | 332 | �Usted no est� autorizado en este momento! |
| 151 | Global | BtnTransfer | 330 | Transfer |
| 152 | Global | BtnTransfer | 332 | Transferir |
| 153 | Global | BtnTimeCard | 332 | &Tarjeta de tiempo |
| 154 | Global | BtnTimeCard | 330 | &Timecard |
| 155 | Global | BtnSelect | 330 | &Select |
| 156 | Global | BtnSelect | 332 | &Seleccione |
| 159 | FrmMessageBox | EmploymentStatusTitle | 330 | Employment Status |
| 160 | FrmMessageBox | EmploymentStatusMessage | 330 | Your Employment Status does not allow you to Check In/Out as an Employee. |
| 161 | FrmMessageBox | EmploymentStatusTitle | 332 | Estado de Empleo |
| 162 | FrmMessageBox | EmploymentStatusMessage | 332 | Su empleo de estado no le permite Check In / Out, como un empleado. |
| 165 | ClsRegistration | RegScreenTryAgainPersonID | 330 || Unable to save registration information.|

Try again and be sure to use a different Person ID. 
| 166 | ClsRegistration | RegScreenTryAgainPersonID | 332 || No se puede guardar la informaci�n de inscripci�n.|
|:----|:----------------|:--------------------------|:----|

Int�ntelo de nuevo y aseg�rese de usar un ID diferente persona. 
| 169 | FrmKeyPad | InvalidValueTitle | 332 | InvalidValueTitle |
|:----|:----------|:------------------|:----|:------------------|
| 170 | FrmKeyPad | InvalidValueMessage | 332 | InvalidValueMessage |
| 171 | FrmMessageBox | InvalidValueTitle | 330 | Invalid value!    |
| 172 | FrmMessageBox | InvalidValueMessage | 330 | The entered value is not a valid combination. |
| 173 | FrmMessageBox | InvalidValueTitle | 332 | Valor no v�lido   |
| 174 | FrmMessageBox | InvalidValueMessage | 332 | El valor indicado no es una combinaci�n v�lida. |
| 175 | FrmMessageBox | RegDupeFingerprintTitle | 330 | Invalid Fingerprint |
| 176 | FrmMessageBox | RegDupeFingerprintMessage | 330 || Unable to use Fingerprint.|
Try again using a different finger. 
| 177 | FrmMessageBox | RegDupePersonIDTitle | 330 | Invalid Personal ID |
| 178 | FrmMessageBox | RegDupePersonIDMessage | 330 || The entered Personal ID is already in use.|
Try again using a different Personal ID. 
| 179 | FrmMessageBox | RegDupeCardSwipeTitle | 330 | Invalid Cardswipe |
| 180 | FrmMessageBox | RegDupeCardSwipeMessage | 330 || La tarjeta birlado ya est� en uso.|
Int�ntalo de nuevo con un Cardswipe diferentes. 
| 181 | FrmMessageBox | RegDupeFingerprintTitle | 332 | No v�lido de huellas dactilares |
| 182 | FrmMessageBox | RegDupeFingerprintMessage | 332 || No se puede utilizar de huellas dactilares.|
Pruebe de nuevo con otro dedo. 
| 183 | FrmMessageBox | RegDupePersonIDTitle | 332 | Personal ID no v�lido |
| 184 | FrmMessageBox | RegDupePersonIDMessage | 332 || El personal entr� en ID ya est� en uso.|
Pruebe de nuevo con un ID diferente personal. 
| 185 | FrmMessageBox | RegDupeCardSwipeTitle | 332 | No v�lido Cardswipe |
| 186 | FrmMessageBox | RegDupeCardSwipeMessage | 332 || La tarjeta birlado ya est� en uso.|
Int�ntalo de nuevo con un Cardswipe diferentes. 
| 187 | FrmMessageBox | RegSuccessTitle   | 330 | Congratulations!  |
| 188 | FrmMessageBox | RegSuccessMessage | 330 | Registration is done. |
| 189 | FrmMessageBox | RegSuccessTitle   | 332 | Felicidades!      |
| 190 | FrmMessageBox | RegSuccessMessage | 332 | La inscripci�n se hace. |