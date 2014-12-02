[img1]: https://raw.githubusercontent.com/Happy-Ferret/Virtasia/master/img/Architecture.png?token=AB3yOk56-pgL8ss943u4XbRDcaTvGtBKks5UgeBVwA%3D%3D "Simplifizierte Darstellung der Virtasia Architektur."
[img2]: 
[img3]:
[img4]: https://raw.githubusercontent.com/Happy-Ferret/Virtasia/master/img/Running.png?token=AB3yOnVMqEupVk1qN-uz6CRXNOv94pbyks5UhmsbwA%3D%3D "Virtasia in Aktion."

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
|			              		  |                               |
|:------------------------------------------------|------------------------------:|
| 1. Das Unternehmen		                  |      [2](#1)		  | 
| 2. Aufgabenstellung      	                  |	 [2](#1)		  |
| 3. Systemanalyse         	                  |	 [3](#2)                  |
| 4. Design			         	  |	 [5](#3)                  |
| 5. Implementierung		         	  |	 [6](#4)                  |
| 6. Verifizierung		        	  |	 [8](#5)                  |
| 7. Abnahme			        	  |	 [9](#6)                  |
| 8. Wirtschaftlicher Soll-Ist Vergleich          |      [9](#6)                  |
| 9. Fazit 					  | 	 [10](#7)                 |
| 10. Appendix		      		   	  |	 [11](#8)                 |
|11. Eidesstattliche Erklärung	         	  |	 [12](#9)                 |

<div style="page-break-after: always;"></div>
[Seite2]
<a name="1"></a>
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
<a name="2"></a>
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

#####3.3 Wirtschaftlichkeitsvergleich

Bei der Auswahl eines Desktop Hypervisors standen folgende Optionen zur Auswahl, welche nachfolgend auf ihre Wirtschaftlichkeit überprüft werden sollen. 

Eigenentwicklung (fortwährend Virtasia genannt)

Citrix XenClient Enterprise

Die Preise von Citrix XenClient Enterprise entsprechen denen, zum Zeitpunkt der Dokumentation, auf der offiziellen Webseite abrufbaren Preisliste[^2]

Bei den Kosten für die Installation/Konfiguration wird von einem Stundenlohn von 35€ ausgegangen, wie Sie für einem IT Fachinformatiker im öffentlichen Dienst üblich sind.

Der Großteil der Virtasia spezifischen Konfigurationszeit wird mit der Erstellung des Basissystems verbracht.

[^2]: http://store.citrix.com/store/citrix/pd/productID.264563600/pgm.94634900/ThemeID.37713000

<div style="page-break-after: always;"></div>
[Seite4]

Die Gesamtkostenrechnung geht von den ungefähren Kosten der ersten zwei Jahre aus. Die Kosten für Updates sind im Falle von Virtasia variabel und der technische Support erfolgt durch die IT Abteilung der Handwerkskammer, welche durch eine umfangreiche Dokumentationssammlung unterstützt wird. Zur Vereinfachung der Kalkulation wird von einem jährlichen Kostenaufwand von 100 Stunden ausgegangen. In diesem ist die Erweiterung des Dokumentationsmaterials und die Applizierung jeglicher Softwareupdates bereits inbegriffen.

|                                       | Virtasia           | Citrix Xenclient Enterprise          |
|---------------------------------------|:-------------------|--------------------------------------:|
|Lizenzkosten                           |                    | 6.420,00 € (30 PCs)                  |
|**Erstinstallation/Konfiguration**     |                    |                                      |
|Zeitlicher Aufwand                     | 35 Std             | 3 Std                                |
|Arbeitskosten                          | 1225,00 €          | 75,00 €                              |
|**Folgekosten**                        |                    |                                      |
|Updates/Support                        | 3.500,00 €/Jahr)   | ~ 1.700,00 €/Jahr                    |
|Anschaffung weiterer Geräte            |70€/Ausbau          | 2,140.00 € (15 weitere PCs)          |
|**Gesamtkosten**                       |***8.295,00 €***    |***12.035,00 €***                     |

Auf Grund der deutlich niedrigeren Gesamtkosten und zu erwartenden Instandhaltungskosten fällt die Wahl auf Virtasia.

Um die Voraussetzung eines stabilen, offenen und sicheren Basissystems zu erfüllen, wird hierbei auf ein modifiziertes GNU/Linux zurückgegriffen.

<div style="page-break-after: always;"></div>
[Seite5]
<a name="3"></a>
####4. Design
![alt text][img1]
**Fig 1:** *Simplifizierte Darstellung der Virtasia Architektur.*

Wie dem obenstehenden Schaubild zu entnehmen ist, handelt es sich bei Virtasia
um eine Mischform. Die grundlegende Architektur eines Typ 2 Hypervisors 
verbindet sich mit von Typ 1 Hypervisoren bekannten Mechaniken.   

Anders als ein gewöhnlicher Typ 2 (hosted VM) Hypervisor, verfügt 
Virtasia über die Fähigkeit grundlegende, Kernelspezifische Attribute[^3] zu verändern.

Dies wird durch zusätzliche, Userspace basierte Applikationen erreicht.
Um höchste Effizienz zu gewährleisten, enthält der verwendete Kernel außerdem eine Reihe von Speicherpatches und einen alternativen Prozess Scheduler. 

Die letzte Stufe des Stacks bildet eine grafische Oberfläche auf XUL Basis. 
Diese ermöglicht den komfortablen Umgang mit dem System und bietet, dank der Konnektivität zwischen 
GUI, Userspace und Kernel, maximale Flexibilität.


<div style="page-break-after: always;"></div>
[Seite6]
<a name="4"></a>
####5. Implementierung

Die Implementierung des Projekts erfolgt in mehreren Schritten. Aus Optimierungszwecken wird der Quellcode vorhandener Softwarelösungen teilweise umgeschrieben. Die Veränderungen werden dokumentiert und die so entstehenden "Patches" den Anlagen beigefügt. 

#####5.1 Auswahl der Basisdistribution

Auf Grund persönlicher Erfahrungen fällt die Wahl auf Debian "Wheezy". 
Diese bekannte und weit verbreitete Distribution ist für ihre Stabilität und Einfachheit bekannt. 

Der Nachteil, die Überalterung des Grundsystems, wird durch die Verwendung eines gepatchten Kernels (Linux 3.15) ausgeglichen. Die hierfür verwendeten Patches finden sich in den Anlagen[^4].

#####5.2 Installation des Basissystems

Die Basisdistribution wird, bei eingesteckter und vorkonfigurierter Netzwerkverbindung, direkt von CD installiert. 
Im Anschluss erfolgt der Austausch des Kernels. Der genaue Vorgang hierfür ist dem Installationsscript[^5] zu entnehmen.
Der Basiskernel entspricht Linux in der finalen Version 3.15[^6]

Zur Wahrung von Softwarestandards werden einige GNU Komponenten durch Anima[^7] respektive Unix System V [^8] basierte Tools ersetzt.

#####5.3 Konfiguration der Benutzeroberfläche

Im nächsten Schritt wird die Benutzeroberfläche installiert. Diese basiert auf Mozillas XUL und verwendet Animas "Aphrodite" Grafikschnittstelle. 

Die Erzeugung einer kompletten grafischen Umgebung wird dank der Mischung aus Javascript, HTML5, XML und C/C++ stark vereinfacht. So besteht die Definition der kompletten Virtasia Benutzerumgebung[^9] aus weit unter 100 Zeilen Quellcode. 

Zur Installation wird lediglich das Paket in den Home Ordner des superusers verschoben und die Position in ***.xinitrc***[^10] vermerkt.

<div style="page-break-after: always;"></div>
[Seite7]

#####5.4 Installation des Hypervisors

Der Hypervisor basiert auf Oracles Virtualbox und wird über die offiziellen Paketquellen installiert[^11]
Die Installation der Gastsysteme findet über die beigelegte GUI statt. 
Im Anschluss wird Virtasia aus dem Installationsverzeichnis gestartet. Virtasia liest dann die, von Virtualbox bereitgestellten, Informationen aus und erzeugt eine eigene Konfigurationsdatei. Diese enthält, neben den Namen der Gastsysteme, dem zum Start eines Gastsystems auszuführenden Befehl. 

#####5.5 Konfiguration des Startvorgangs

Um einen Verzögerungsfreien und komfortablen Systemstart zu gewährleisten, werden Veränderungen an den GNU/Linux eigenen Bootroutinen vorgenommen. Dem System wird gestattet, eine grafische Session auch als nicht-root zu starten[^12]. Außerdem wird die Virtasia GUI als erstes zu startendes Programm festgelegt[^13]

#####5.6 Erstellung des Installationsmediums

Zur Erstellung des Installationsmediums werden die Refracta Tools[^14] verwendet.
Die Erzeugung der .iso erfolgt strikt nach der publizierten Dokumentation[^15]
Anschließend wird die erzeugte .iso Datei auf einen USB Stick kopiert und, auf einem Windows PC, per "Universal USB Installer"[^16] bootfähig gemacht. 

Dies schließt den Implementierungsprozess ab. 

<div style="page-break-after: always;"></div>
[Seite8]
<a name="5"></a>
####6. Verifizierung

Zur Verifizierung wird das, im vorherigen Schritt erzeugte, .iso Abbild auf einem unbenutzten Laptop installiert. 

Um die Funktionsfähigkeit sicherzustellen, wird Ubuntu 14.10 als Gastsystem installiert und ausgiebig getestet. 
Audio, Grafik und generelle Performanz werden durch das Abspielen einiger Youtube Videos beim gleichzeitigen Ausführen von glxgears getestet. Da die Hardware derer der Entwicklungsmaschine entspricht, fällt die Verifizierung äußerst zufriedenstellend aus.
<div style="page-break-after: always;"></div>
[Seite9]
<a name="6"></a>
####7. Abnahme

Nach der erfolgreichen Verifizierung findet die Abnahme durch den Fachbereich IT der Handwerkskammer Konstanz statt.
Eine kurze Projektpräsentation soll die Vorteile der Umsetzung verdeutlichen. Eventuelle Unklarheiten werden in der schriftlichen Dokumentation ergänzt. 

Als letzter Schritt werden Dokumentation und Software zur internen Git Versionskontrolle hinzugefügt.

####8. Wirtschaftlicher Soll-Ist Vergleich

Unter der Verwendung des vorhandenen Paketmanagementsystems erwies sich die Installation und Konfiguration der Komponenten leichter als erwartet. Hierdurch konnten etwa zwei Stunden Arbeitszeit gespart werden. Desweiteren erwies sich eine Vereinfachung des Dateisystems als unnötig, wodurch diese Mehrarbeit wegfiel. 

Die Recherche nach einem geeigneten Werkzeug zur Erstellung einer "Live-Distribution" verlangte mit 4 Stunden deutlich mehr Zeit als erwartet ab. Die Verteilung des fertigen Produkts, hingegen, nahm nur etwa die Hälfte der Zeit in Anspruch, weswegen hier ein zeitlicher Ausgleich stattgefunden hat. 

Letzten Endes nahm die Erstellung der Projektdokumentation, auf Grund technischer Probleme, 1 Stunde mehr Arbeit in Anspruch, als ursprünglich geplant. 

Die genauen zeitlichen Abweichungen sind folgender Tabelle zu entnehmen. 

|                                       | Soll		 |                        | Ist                                  |
|---------------------------------------|--------------------:|:-----------:|--------------------------------------:|
|Projektvorbereitung (Systemanalyse, Zeitplanung) |    1 Std ||  1 Std                               |
|Installation der Entwicklungs- bzw. Testumgebung |    1 Std ||  1 Std                               |
| Installation und Grobdokumentation der nötigen Komponente  |  15 Std   |          | 13 Std         |
| Erstellung eines geeigneten .iso Abbildes      | 2 Std     || 4 Std                                |
|Verifizierung und Funktionstests  |          2 Std          ||        2 Std                         |
|Softwareverteilung               |   4 Std                  || 2 Std                                |
|Abschlussbesprechung             |2 Std                     || 2 Std                                |
|Dokumentation und Erstellung der Präsentation | 8 Std       || 9 Std                                |
|**Gesamt**                       | **35 Std**                |   |                **34 Std**                |

<div style="page-break-after: always;"></div>
[Seite10]
####9. Fazit

Ergebnis des Projekts ist ein moderner Desktop Hypervisor, zur sicheren, effizienten und performanten Ausführung von Gastbetriebssystemen. 

Die Zielgruppe des Projekts sind Auszubildende im überbetrieblichen Unterricht der Bildungsakademie Waldshut, sowie der Fachbereich IT der Handwerkskammer Konstanz in seiner administrativen Support Rolle. 

Alle Kriterien, mit Ausnahme des vereinfachten Dateisystems, konnten Fristgerecht umgesetzt werden. Letzteres erwies sich letztendlich als unwirtschaftlicher Mehraufwand mit nur geringen, nicht näher nennenswerten Vorteilen. 

Die verwendeten Kernel Patches dagegen, erwiesen sich als äußerst fruchtbar. Intensivere Tests der cache_limit und cache_reclaim Funktionen deuten auf eine mögliche Effizienzsteigerung von bis zu 150% gegenüber einem unlimitiertem 
"Vanilla" Kernel hin.

Die Umsetzung hat mir tiefere Einblicke in die Funktionsweise Unixoider Betriebssysteme ermöglicht und mich somit für meine zukünftige Tätigkeit in einem Unix/Linux fokusiertem Unternehmen bestens vorbereitet. 

Erfreulich ist, dass ,die zum täglichen Unterricht verwendeten, Unterrichtsstationen der Bildungsakademie Waldshut nun alle nötigen Sicherheitsstandards erfüllen und sich relativ unkompliziert administrieren lassen. 

![alt text][img4]
**Fig 4:** *Die Virtasia Oberfläche in Aktion*

<div style="page-break-after: always;"></div>
[Seite11]
<a name="7"></a>
####Quellen

<span>
<ul>
 <li>**Patches**
  <ul>
   <li>BFS Scheduler: Con Colivas[^17]</li>
   <li>cache_limit & cache_reclaim: Xishi Qiu[^18]</li>
  </ul>
 </li>
 <li>**Tutorials**
  <ul>
   <li>Kernel Kompilierung: HowToGeek "How to Customize Your Ubuntu Kernel"[^19]</li>
   <li>Mozilla XUL: Mozilla "Getting started with XULRunner"[^20]</li>
   <li>Markdown: Adam P. "Markdown Cheatsheet"[^21]</li>
   <li>Linux Befehle: "nixCraft"[^22]</li>
  </ul>
 </li>
 <li>**Konverter**
  <ul>
  <li>Markdown zu PDF: "md.topdf"[^23]</li>
  </ul>
 </li>
</ul>
</span>

<div style="page-break-after: always;"></div>

[^1]: Reliability, Availability, Serviceability, Use-ability, Install-ability 
*=* 
**Zuverlässigkeit - Verfügbarkeit - Wartbarkeit - Benutzbarkeit - Installierbarkeit (im Sinne von Kompatibilität)**
[^3]: Als Beispiel seien die Ressourcenauslastung, sowie die Fähigkeit das komplette System von innerhalb des Hypervisors auszuschalten, genannt.
[^4]: ./patches
[^5]: ./patches/install.sh
[^6]: https://www.kernel.org/pub/linux/kernel/v3.x/linux-3.15.tar.xz
[^7]: https://github.com/Happy-Ferret/Anima/tree/master/bin
[^8]: http://heirloom.sourceforge.net/
[^9]: ./UI/Media-Center
[^10]: ./UI/.xinitrc
[^11]: sudo apt-get install virtualbox
[^12]: ./boot/Xwrapper.config
[^13]: ./boot/rc.local
[^14]: http://sourceforge.net/projects/refracta/files/tools/
[^15]: http://www.pacificsimplicity.ca/blog/creating-livecd-existing-debian-installation-or-vm
[^16]: http://www.chip.de/downloads/Universal-USB-Installer_56810883.html
[^17]: http://ck.kolivas.org/patches/bfs/
[^18]: http://lwn.net/Articles/602424/
[^19]: http://www.howtogeek.com/howto/ubuntu/how-to-customize-your-ubuntu-kernel/
[^20]: https://developer.mozilla.org/en-US/docs/Mozilla/Projects/XULRunner/Getting_started_with_XULRunner
[^21]: https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet
[^22]: http://www.cyberciti.biz/faq/
[^23]: http://md.topdf.com/

####Appendix