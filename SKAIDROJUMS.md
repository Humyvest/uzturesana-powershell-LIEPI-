# PowerShell Praktiskā darba skaidrojumi

- **01. uzdevums:** Izvade parāda datora nosaukumu, izmantotās operētājsistēmas versiju, PowerShell vidi, precīzu laiku un tajā brīdī palaisto procesoru skaitu, kas raksturo sistēmas aktuālo stāvokli.
- **02. uzdevums:** Tiek atlasīti 10 procesi, kas izmanto visvairāk RAM atmiņas, sakārtoti augošā secībā (no mazākās atmiņas uz lielāko), lai lielākais process parādītos saraksta apakšā.
- **03. uzdevums:** Izmantojot foreach ciklu un if nosacījumu, tika saskaitīti strādājošie un apturētie servisi. Summa sakrīt ar kopējo servisu skaitu, jo katrs sistēmas serviss atrodas vienā no šiem pamata stāvokļiem.
- **04. uzdevums:** Skripts atrod servisus ar automātisku palaišanas veidu, kas pašlaik ir apturēti. Izmantojot -WhatIf parametru, tika simulēta darbība un ierakstīta failā, bet bez tā – izpildīta reāli.
- **05. uzdevums:** Tika analizēts sistēmas notikumu žurnāls (Event Log) pēdējo 48 stundu laikā, nosakot kļūdu skaitu un biežāko kļūdas avotu, kas norāda uz potenciālām aparatūras vai draiveru nepilnībām datorā.
- **06. uzdevums:** Tika atlasīti visi draiveri, kuru ražotājs nav Microsoft, un eksportēti uz CSV failu. Faila rindu skaits norāda trešo pušu draiveru daudzumu sistēmā.
- **07. uzdevums:** Skripts nolasa visu loģisko disku izmērus un brīvo vietu gigabaitos, salīdzinot to ar noteiktu robežvērtību, lai nepieciešamības gadījumā izvadītu brīdinājumu.
- **08. uzdevums:** Tika salīdzināts Get-Service un Get-CimInstance izpildes ātrums Spooler servisam, izmantojot Measure-Command, lai noskaidrotu efektīvāko komandu.
- **09. uzdevums:** Izmantojot WMI/CIM objektus un GetOwner metodi, tika mēģināts noteikt katra procesa palaidēju lietotāju, parādot sistēmas atbildi arī gadījumos, ja piekļuve daļai sistēmas procesu ir liegta.
- **10. uzdevums:** Apkopojot datus atkārtoti, daži skaitļi (piemēram, procesu un aktīvo servisu skaits) var nedaudz atšķirties no iepriekšējo uzdevumu izpildes brīža, jo operētājsistēmā fona procesi un servisu stāvokļi dinamiski mainās reāllaikā.
