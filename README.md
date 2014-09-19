#### Thema
______________________
Bereitstellung sicherer, wirtschaftlicher Betriebsumgebungen auf Basis eines Effizienzoptimierten, 
*nix basierten Hypervisors.

#### Termin 
______________________
Beginn: 01.11.2014
Ende: 06.12.2014


#### Projektbeschreibung
______________________

Ziel des Projekts ist die Umsetzung einer Virtualisierungsplatform auf *nix (GNU/Linux) Basis. 

Um die Erschaffung des Grundsystems voranzutreiben, wird hierf�r auf folgende Optimierungsmechanismen zur�ckgegriffen. 

- Vereinfachung des Dateisystems.

- Entfernung unn�tiger, GNU basierter Komponenten.

- Austausch essentieller, GNU basierter Anwendungen durch freie BSD[^1] derivate und Teile des Anima[^2] Betriebssytems.

- Applizierung Kernel/Scheduler spezifischer Patches.
_______________________

Die Hypervisor Ebene basiert auf freien, von Oracle zur Verf�gung gestelltem Source Code. 

Dieser wird von Oracle selbst u. a. als Basis f�r Virtualbox genutzt.

Meine L�sung (nachfolgend "Virtasia" genannt) unterscheidet sich von Virtualbox in folgenden Punkten: 

- Fokus auf ein Einsatzgebiet. Dementsprechend nur ein Modus (SDL)

- Grafik/Audio Treiber bereits vorinstalliert

- Fernwartung/Sicherung �ber eine gesicherte SSHD Sitzung.
 
[^1]: Frei zur kommerziellen wie auch nicht-kommerziellen Nutzung.
[^2]: Anima ist meine pers�nliche Eigenentwicklung, weswegen hierbei keinerlei Lizenzrechtliche Probleme entstehen.