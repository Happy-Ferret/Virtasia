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
*=* 
**Zuverlässigkeit - Verfügbarkeit - Wartbarkeit - Benutzbarkeit - Installierbarkeit (im Sinne von Kompatibilität)**


<div style="page-break-after: always;"></div>
[Seite3]
####3. Systemanalyse

#####3.1 Ist-Zustand

Die nähere Betrachtung der Infrastruktur zeigt, dass es sich um recht einfaches, Arbeitsgruppen basiertes
System auf Windows XP Basis handelt. 

Auf Grund fehlender Sicherheitskonzepte ist ein unbefugtes Eindringen durch Dritte bzw. die Ausführung von Schadsoftware nur schwerlich vermeidbar. 

Da es an einem Sicherungskonzept fehlt, führt eine Zerstörung der Hardware zum unwiderruflichen Datenverlust. 

Teilnehmer haben praktisch uneingeschränkte Kontrolle über die vorliegenden Computersysteme sowie die Arbeitsgruppe selbst. 

#####3.2 Soll-Konzept

Auf Basis der o. g. Analyse wurde ein Soll-Konzept erstellt. 

Neben den unter Punkt 2. besprochenen Voraussetzungen wurde hierbei besonderes Augenmerk auf die Wirtschaftlichkeit
gelegt. Desweiteren wurde Wert darauf gelegt, möglichst nur auf offene Standards zurückzugreifen.

Da es darum geht, ein sicheres System zu implementieren, welches dem Benutzer nach Möglichkeit vertraut ist, andererseits aber dem Administrator erweiterte Administrations- und Sicherungsmechaniken bietet, fiel die Wahl auf einen spezialisierten "Desktop Hypervisor".

######3.3 Wirtschaftlichkeitsvergleich

Bei der Auswahl eines Desktop Hypervisors standen folgende Optionen zur Auswahl, welche nachfolgend auf ihre Wirtschaftlichkeit überprüft werden sollen. 

Eigenentwicklung (fortwährend Virtasia genannt)

Citrix XenClient Enterprise

Die Preise von Citrix XenClient Enterprise entsprechen denen, zum Zeitpunkt der Dokumentation, gelisteten Preise unter http://store.citrix.com/store/citrix/pd/productID.264563600/pgm.94634900/ThemeID.37713000

Bei den Kosten für die Installation/Konfiguration wird von einem Stundenlohn von 25€ ausgegangen, wie Sie für einem IT Fachinformatiker im öffentlichen Dienst üblich sind.

Der Großteil der Virtasia spezifischen Konfigurationszeit wird mit der Erstellung des Basissystems verbracht.

<div style="page-break-after: always;"></div>
[Seite4]

Die Gesamtkostenrechnung geht von den ungefähren Kosten der ersten zwei Jahre aus. Die Kosten für Updates sind im Falle von Virtasia variabel und der technische Support erfolgt durch die IT Abteilung der Handwerkskammer, welche durch eine umfangreiche Dokumentationssammlung unterstützt wird. Zur Vereinfachung der Kalkulation wird von einem jährlichen Kostenaufwand von 100 Stunden ausgegangen. In diesem ist die Erweiterung des Dokumentationsmaterials und die Applizierung jeglicher Softwareupdates bereits inbegriffen.

|                                       | Virtasia		       | Citrix Xenclient Enterprise          |
|---------------------------------------|--------------------|--------------------------------------|
|Lizenzkosten                           |                    | 6.420,00 € (30 PCs)                  |
|**Erstinstallation/Konfiguration**     |                    |                                      |
|Zeitlicher Aufwand                     | 35 Std             | 3 Std                                |
|Arbeitskosten                          | 875,00 €           | 75,00 €                              |
|**Folgekosten**                        |                    |                                      |
|Updates/Support                        | 2.500,00 €/Jahr)   | ~ 1.700,00 €/Jahr                    |
|Anschaffung weiterer Geräte            |50€/Ausbau          | 2,140.00 € (15 weitere PCs)          |
|**Gesamtkosten**                       |***5.925,00 €***    |***12.035,00 €***                     |

Auf Grund der deutlich niedrigeren Gesamtkosten und zu erwartenden Instandhaltungskosten fällt die Wahl auf Virtasia.

Um die Voraussetzung eines stabilen, offenen und sicheren Basissystems zu erfüllen, wird hierbei auf ein modifiziertes GNU/Linux zurückgegriffen.

<div style="page-break-after: always;"></div>
[Seite5]
####4. Design
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
[Seite6]
####5. Implementierung

Die Implementierung des Projekts erfolgt in mehreren Schritten. Aus Optimierungszwecken wird der Quellcode vorhandener Softwarelösungen teilweise umgeschrieben. Die Veränderungen werden dokumentiert und die so entstehenden "Patches" den Anlagen beigefügt. 

#####5.1 Auswahl der Basisdistribution

Auf Grund persönlicher Erfahrungen fällt die Wahl auf Debian "Wheezy". 
Diese bekannte und weit verbreitete Distribution ist für ihre Stabilität und Einfachheit bekannt. 

Der Nachteil, die Überalterung des Grundsystems, wird durch die Verwendung eines gepatchten Kernels (Linux 3.15) ausgeglichen. Die hierfür verwendeten Patches finden sich in den Anlagen unter ***./patches/kernel***.

#####5.2 Installation des Basissystems

Die Basisdistribution wird, bei eingesteckter und vorkonfigurierter Netzwerkverbindung, direkt von CD installiert. 
Im Anschluss erfolgt der Austausch des Kernels. Der genaue Vorgang hierfür ist der Anlage unter ***/scripts/install_kernel.sh*** zu entnehmen.

Zur Wahrung von Softwarestandards werden einige GNU Komponenten durch Anima[^3] respektive Unix System V [^4] basierte Tools ersetzt. Nähere Informationen hierzu finden sich unter ***/scripts/install_userland.sh***

#####5.3 Konfiguration der Benutzeroberfläche

Im nächsten Schritt wird die Benutzeroberfläche installiert. Diese basiert auf Mozillas XUL und verwendet Animas "Aphrodite" Grafikschnittstelle. 

Die Erzeugung einer kompletten grafischen Umgebung wird dank der Mischung aus Javascript, HTML5, XML und C/C++ stark vereinfacht. So besteht die Definition der kompletten Virtasia Benutzerumgebung[^5] aus weit unter 100 Zeilen Quellcode. 

Zur Installation wird lediglich das Paket in den Home Ordner des superusers verschoben und die Position in ***.xinitrc***[^6] vermerkt.

#####5.4 Installation des Hypervisors

Der Hypervisor basiert auf Oracles Virtualbox und wird über die offiziellen Paketquellen installiert[^7]
Die Installation der Gastsysteme findet über die beigelegte GUI statt. 
Im Anschluss wird Virtasia aus dem Installationsverzeichnis gestartet. Virtasia liest dann die, von Virtualbox bereitgestellten, Informationen aus und erzeugt eine eigene Konfigurationsdatei. Diese enthält, neben den Namen der Gastsysteme, dem zum Start eines Gastsystems auszuführenden Befehl. 



[^3]: https://github.com/Happy-Ferret/Anima/tree/master/bin
[^4]: http://heirloom.sourceforge.net/
[^5]: ./UI/Virtasia_UI
[^6]: ./UI/.xinitrc
[^7]: sudo apt-get install virtualbox 

<div style="page-break-after: always;"></div>
[Seite8]
<div style="page-break-after: always;"></div>
[Seite9]
<div style="page-break-after: always;"></div>
[Seite9]
####6. Verifizierung
<div style="page-break-after: always;"></div>
[Seite10]
####7. Abnahme
<div style="page-break-after: always;"></div>
[Seite11]
####Wirtschaftlicher Soll-Ist Vergleich
<div style="page-break-after: always;"></div>
[Seite12]
####Anhang/Quellen
<div style="page-break-after: always;"></div>
[Seite13]
####Eidesstattliche Erklärung
