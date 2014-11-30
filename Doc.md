[img1]: https://raw.githubusercontent.com/Happy-Ferret/Virtasia/master/img/Architecture.png?token=AB3yOk56-pgL8ss943u4XbRDcaTvGtBKks5UgeBVwA%3D%3D "Simplifizierte Darstellung der Virtasia Architektur."

###### Kurze Projektbeschreibung
Ziel des Projekts ist die Umsetzung einer Virtualisierungsplatform auf ∗nix (GNU/Linux) Basis.
Diese soll mehr Sicherheit und Flexibilität gegenüber einer "nativen" Betriebssysteminstallation bieten. 

So wäre es denkbar, mehrere Betriebssysteme nebeneinander laufen zu lassen 
und per Shortcut zwischen den Betriebssystemen zu wechseln.

Auch erleichtert eine virtualisierte Arbeitsumgebung die Sicherung und Wiederherstellung von Backups, da auf 
VM eigene Formate (bspw. QCow) zurückgegriffen werden kann.

Die Umsetzung des Projekts erfolgt im Schulungsbereich der, der Handwerkskammer
untergeordneten, Bildungsakademien.

Hierbei ist vorallem darauf zu achten, dass das Resultat sicher und transparent ist. Nicht zuletzt
ist eine gewisse Ausfallsicherheit unerlässlich.

Die Anzahl der Systeme beträgt 30 Computer (Laptops).








###Inhaltsverzeichnis
|			              		                          |       |
|-------------------------------------------------|-------|
| 1. Das Unternehmen		                  |      2| 
| 2. Aufgabenstellung      	                  |	 [2](#2. Aufgabenstellung)|
| 3. Systemanalyse         	                  |	 3|
| 4. Design			         	  |	 5|
| 5. Implementierung		         	  |	 6|
| 6. Verifizierung		        	  |	9|
| 7. Abnahme			        	  |	10|
| 8. Wirtschaftlicher Soll-Ist Vergleich  	  | 	11|
| 9. Anhang/Quellen 		         	  |	12|
|10. Eidesstattliche Erklärung	         	  |	13|

<div style="page-break-after: always;"></div>
[Seite2]
####1. Das Unternehmen

Das Projekt findet in der Bildungsakademie Waldshut statt. 
Die Bildungsakademie ist eine, der Handwerkskammer untergeordnete, Lehrinstitution zur überberuflichen Bildung
von Auszubildenden im Handwerk. 

Die Bildungsakademie Waldshut begleitet Auszubildende in den Bereichen KFZ, Elektrotechnik, Mediengestaltung, sowie dem Maler- und Schreinerhandwerk. 

Desweiteren richtet sich die Bildungsakademie, mit ihren zahlreichen Fort- und Weiterbildungsmaßnahmen, an Arbeitssuchende und Wiedereinsteiger. 

Insbesondere im Bereich Bereich KFZ und Elektrotechnik sind in den letzten Jahren die Bedingungen an eine funktionierende IT Infrastruktur gestiegen. 

Die anfängliche Projektphase findet daher in der Abteilung "Elektrotechnik UEBA" statt. Sollte sich die verwendete Technologie bewähren, ist eine Ausweitung auf den KFZ Bereich denkbar. 

####2. Aufgabenstellung

Auf Grund von Sicherheitsbedenken und weitreichenden technischen Problemen soll die Informationstechnik innerhalb des wöchentlichen Aus- und Weiterbildungsbetriebs komplett neu ausgelegt werden. 

Eine Analyse der vorhandenen Technik hat enorme Defizite aufgezeigt. Da von den Festplatten der Teilnehmercomputer keine Sicherungen erzeugt werden, führt eine defekte Festplatte zum unwiederbringlichen Datenverlust. 

In Ermangelung eines komplexen Benutzerkontrollmechanismus haben Schüler desweiteren vollen Zugriff auf das System. Dies führte dazu, dass bereits einige Viren, Trojaner und Spielesoftware entdeckt und entfernt wurde. 

Die neue Infrastruktur soll folgende Bedingungen erfüllen. 

- Einfache Handhabung.
- Möglichst minimale Einarbeitungszeiten.
- Maximale Kontrolle seitens des Administrators. 
- Minimale Kontrolle seitens des Benutzers.
- RASUI[^1]

[^1]: Reliability, Availability, Serviceability, Use-ability, Install-ability


<div style="page-break-after: always;"></div>
[Seite3]
####Aufgabenstellung
<div style="page-break-after: always;"></div>
[Seite4]
####Systemanalyse
<div style="page-break-after: always;"></div>
[Seite5]
<div style="page-break-after: always;"></div>
[Seite6]
####Design
![alt text][img1]
**Fig 1:** *Simplifizierte Darstellung der Virtasia Architektur.*

Wie dem obenstehenden Schaubild zu entnehmen ist, handelt es sich bei Virtasia
um eine Mischform. Die grundlegende Architektur eines Typ 2 Hypervisors 
verbindet sich mit von Typ 1 Hypervisoren bekannten Mechaniken.   

Anders als ein gewöhnlicher Typ 2 (hosted VM) Hypervisor, verfügt 
Virtasia über die Fähigkeit grundlegende, Kernelspezifische Attribute[^2] zu verändern.

Dies wird durch zusätzliche, Userspace basierte Applikationen erreicht. 

[^2]: Als Beispiel seien die Ressourcenauslastung, sowie die Fähigkeit das komplette System von innerhalb des Hypervisors auszuschalten, genannt. 
<div style="page-break-after: always;"></div>
[Seite7]
####Implementierung
<div style="page-break-after: always;"></div>
[Seite8]
<div style="page-break-after: always;"></div>
[Seite9]
<div style="page-break-after: always;"></div>
[Seite10]
####Verifizierung
<div style="page-break-after: always;"></div>
[Seite11]
####Abnahme
<div style="page-break-after: always;"></div>
[Seite12]
####Wirtschaftlicher Soll-Ist Vergleich
<div style="page-break-after: always;"></div>
[Seite13]
####Anhang/Quellen
<div style="page-break-after: always;"></div>
[Seite14]
####Eidesstattliche Erklärung
