
# SkyAttack Regeln




## Allgemeines

- Es gibt **2 Teams** und jedes Team besitzt eine **Insel**. Die beiden Parteien sind verfeindet und möchten um jeden Preis, in einem tagelang andauernden **Capture-The-Flag Modus**, den Sieg erringen. Der Server wird **24/7** zugänglich sein (Ausnahme sind maximal kurze Wartungsarbeiten oder unvorhersehbare Serverabstürze).

- Ziel des Spieles ist, in einem **leichten oder schweren Angriff** den **Beacon des gegnerischen Teams abzubauen** und wieder in die eigene Base, in die Nähe des eigenen Beacons zu bringen. Der Beacon muss nur abgebaut, jedoch nicht eingesammelt werden. Zwischen den Angriffen wird der Ort des Beacons mit einem **Bedrock Block** gekennzeichnet werden. Sollten die Verteidiger ihren eigenen Beacon während eines Angriffes abbauen, wird der nächste Angreifer automatisch zum Carrier.

- Als Startitems erhält jedes Team **einen Eisblock, einen Lavabucket und einen Kaktus** neben einem Oak-Baum.

- Die Insel ist von einer **magischen Bubble** umgeben, die Eindringlingen starke Debuffs gibt. Sie reicht vom Mittelpunkt der Insel 100 Blöcke in alle Richtungen. Zu den Effekten zählen **Weakness, Mining Fatigue, Slowness und Hunger**. Sollte man seine Bubble verlassen/betreten bzw. die Gegner besuchen, werden Warnungen eingeblendet. Das Betreten der gegnerischen Insel ist nur möglich, wenn mindestens ein Gegner online ist. Sollten sich alle Gegner ausloggen, können keine weiteren Gegner die Insel betreten. Spieler, die sich jedoch noch auf der Insel befinden, können dort weiterhin bleiben.

- Zusätzlich zur magischen Bubble gibt es eine **größere Elytra-Bubble**, welche 200 Blöcke in alle Richtungen beträgt. Verlässt man diese, wird die Elytra konfisziert, egal ob gerade ein Angriff läuft oder nicht.

- Die **Grenze** ist ein wichtiger Bestandteil in der Mitte der Map, hier wird scharf auf **Explosives** kontrolliert. Alle Inventare werden hier automatisch auf TNT und ähnliche Substanzen kontrolliert und gegebenenfalls konfisziert. Entfernt werden **TNT, TNT-Minecarts und Firework Stars**, welche man benötigt, um TNT herzustellen. Platzierte TNT Blöcke werden ebenfalls entfernt. Außerdem ist es in der Mitte für 30 Blöcke nicht möglich, Blöcke zu platzieren oder abzubauen.

- **Flugmaschinen-Spawns** mithilfe von gecrafteten **Spawn-Eiern** ist ein wichtiges neues Feature. Dazu **wirft man alle Bestandteile** der Maschinen zusammen mit einer Farbe (Rot für eine Maschine Richtung Norden, Blau für Süden) **auf den Boden** und erhält ein Ei.

- **Alle Regeln** aus diesem Dokument müssen eingehalten werden, sonst folgen **Strikes** mit Bestrafungen wie Angriffsverbote, Storage- oder Inventar-Clears.

- **Mögliche Regeländerungen** können jederzeit und unangekündigt stattfinden.

- Mit der Teilnahme am Projekt stimmt man automatisch den Regeln zu.



## Angriffe

### Allgemeines zu auszulösenden Angriffen

- Alle **Spieler**, die zum Zeitpunkt des Triggers **online** sind, werden als **Angreifer** markiert
- Spieler aus dem angreifenden Team, welche später joinen, werden immer noch Debuffs auf der gegnerischen Insel erhalten
- **Pro Verteidiger** ist genau **ein Angreifer** zugelassen. Sollten Verteidiger nachjoinen, dürfen auch mehr Angreifer über die Mitte und dem Angriff beitreten
- Sollte ein Verteidiger während des Angriffes leaven, kann der Angriff in Überzahl fortgesetzt werden

### Spionangriff

- **Keine Ankündigung** per Command/Chat notwendig
- Jederzeit durchführbar, **ohne Zeitbegrenzung**
- Nur möglich, wenn **mind. 1 Gegner online** ist

### Leichter Angriff

- Auszulösen mit **`/trigger lightAttackTrigger set 1`** für das gesamte Team
- **Dauer: 30 min** insgesamt (inkl. Anflugzeit)
- **5 Stunden Cooldown** pro Team und leichtem Angriff

### Schwerer Angriff

- Auszulösen mit **`/trigger heavyAttackTrigger set 1`**
- **Dauer: 60 min** insgesamt (inkl. Anflugzeit)
- **8 Stunden Cooldown** pro Team und schwerem Angriff
- **Sonderfall**: TNT, welches **als Block** über die Grenze geht, ist **zugelassen**. Dieses kann nach der Grenzkontrolle wieder ins Inventar aufgenommen werden.



## Mods

- Der Server läuft auf **Fabric 1.20.2**. Gewisse **Client-Mods** sind zugelassen, welche dem Spieler keine unfairen Vorteile geben.

- Ein `mods.zip`-File ist im **#rules** Channel gepinnt, das die zugelassenen Mods beinhaltet.

- Der **Proximity-Chat muss zu jeder Zeit auf Open-Mic sein**. Die Gruppenfunktion oder ein Discord-Call ist nicht zugelassen.



## Discord Integration

- Es gibt eine neue Kategorie am Soos Squad Server, auf die man mit der **SkyAttack-Rolle** zugreifen kann. Wichtige Serverevents werden im **#log channel** gebroadcastet. Dazu zählen das Starten und Stoppen des Servers, sowie das Joinen und Leaven von Spielern

- In **#custom-recipes** findet man alle geänderten oder zusätzlichen Rezepte.
