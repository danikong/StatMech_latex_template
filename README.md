# Allgemein

Im Ordner `exercise` liegen die jeweiligen vorlagen fuer die Beispiele (`0[1-6].tex`).
Diese Files sind dazu gedacht, dass in diesen die Loesung hinzugefuegt wird
Das File `solution.tex` ist fuer ein gesamtes PDF gedacht, da es einfacher
ist ein File nebenbei offen zu haben als alle 6.
Wohingegen ```solution_ex<Beispiel Nummer>.tex``` fuer die Abgabe gedacht sind
(jedes Beispiel extra in einem File).

Im `pkgs.tex` sind Packages und ein Grossteil der Einstellungen fuer Latex.

Das `config_Person_Ue.tex` beinhaltet Informationen ueber Name, Fach, etc.
und sollte abgeaendert siehe weiter unten in 'Configuration'.

Das Makefile habe ich fuer Linux-Betriebsysteme geschrieben.
(unter Windows hab ich keine Ahnung wie make-files geschrieben werden;
unter MacOS glaub ich sollte es auch funktionieren aber keine Garantie dafuer)


# Anforderungen

Zum kompilieren wird ```pdflatex``` verwendet. (Ubuntu: `sudo apt install texlive-full`)\
Zuverlaessiger ist es wenn `rubber` verwendet wird. (Ubuntu: `sudo apt install rubber`)
Der Befehl `make view` verwendet den PDF Viewer Evince
(Standard PDF Viewer unter Ubuntu), dieser kann im Makefile unter `view : main`
abgeaendert werden.
Dazu `evince $(main_sub).pdf &` auf `<beliebigen PDF Viewer> $(main_sub).pdf &`.
Andere PDF Viewer sind `okular`, `xpdf`, `gv`, `mupdf`, aber es kann auch `firefox`, `chromium` oder `chrome` verwendet werden.
(ansonst Ubuntu: `sudo apt install evince`)

Fuer nicht Ubuntu-OSs einfach `apt install` mit dem jeweiligen Command des
dort verfuegbaren Package Managers ersetzen.\
(Arch: `pacman -S`, Debian `aptitude install`)

# Configuration
Um auch die PDFs mit richtigen Namen und etc. zu erzeugen, sollte im File
`config_Person_Ue.tex` der Vorname (`vname`), Nachname (`nname`) und
Matrikelnummer (`mtrnmbr`) abgeaendert werden.
Genauso je nach Uebungsnummer auch `excNmbr`.

```latex
\newcommand\excNmbr{3}
\newcommand\vname{Max}
\newcommand\nname{Mustermann}
\newcommand\mtrnmbr{01234567}

```

Ebenfalls sollten folgende Zeilen im Makefile bearbeitet werden.
```makefile
vname:=Max
nname:=Mustermann
mtrnmbr:=01234567
```

# Compile

```shell
make
```
und
```shell
make main
```
erzeugen ein File welches alle Beispiele beinhaltet.

```shell
make all
```
erzeugt fuer jedes Beispiel ein File und ein gesamtes File.

(Die Auxiliary File, Log Files, etc. werden nach jedem erfolgreichen compile sofort geloescht.)
