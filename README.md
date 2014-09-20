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

Um die Erschaffung des Grundsystems voranzutreiben, wird hierfür auf folgende Optimierungsmechanismen zurückgegriffen. 

- Vereinfachung des Dateisystems.

- Entfernung unnötiger, GNU basierter Komponenten.

- Austausch essentieller, GNU basierter Anwendungen durch freie BSD[^1] derivate und Teile des Anima[^2] Betriebssytems.

- Applizierung Kernel/Scheduler spezifischer Patches.
_______________________

Die Hypervisor Ebene basiert auf freien, von Oracle zur Verfügung gestelltem Source Code. 

Dieser wird von Oracle selbst u. a. als Basis für Virtualbox genutzt.

Meine Lösung (nachfolgend "Virtasia" genannt) unterscheidet sich von Virtualbox in folgenden Punkten: 

- Fokus auf ein Einsatzgebiet. Dementsprechend nur ein Modus (SDL).

- Grafik/Audio Treiber bereits vorinstalliert.

- Fernwartung/Sicherung über eine gesicherte SSHD Sitzung.

- Thin GUI.

- Modifiziertes Signaling. Ein "Herunterfahren" des virtualisierten OS fährt anschließend auch die Hardware herunter.


#### Tooling
_______________________

- GCC (zur Kompilierung des Kernels sowie des Hypervisors). 

- /bin/sh (zum Interpretieren der Interface Funktionen).

- Xulrunner (die Basis der grafischen Administrationskonsole).

- vi (zu Dokumentationszwecken sowie der Erstellung nötiger Funktionen).

_______________________

[^1]: Frei zur kommerziellen wie auch nicht-kommerziellen Nutzung. <p>
[^2]: Anima ist meine persönliche Eigenentwicklung, weswegen hierbei keinerlei Lizenzrechtliche Probleme entstehen.
