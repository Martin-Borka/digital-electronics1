# VHDL projekt - AURT

### Členi týmu

* Eduard Chyba
* Martin Borka
* Petr Pánis

## Theoretical description and explanation

UART (z anglického Universal asynchronous receiver-transmitter) je sběrnice, která slouží k asynchronnímu sériovému přenosu dat.

Popis přenosu

Když vysílač nevysílá tak je vysílaný signál nastaven na logickou hodnotu 1, při vysílaní se nejdříve pošle start bit reprezentovám logickou 0 a pak jáslebují bity přenášených dat. Může následovat paritní bit který je volitelný, a nakonec stop bit reprezentován logickou 1.

## Hardware

V tomto projektu využíváme desku nexys a7-50t od firmy Nexys. Tato deska nabízí mnoho možných vstupů a výstupů. V našem případě používáme přepínače a jedno tlačítko, pro nastavení zařízení.

V případu vysílače slouží 8 přepínačů v pravo (SW 0-7) pro nastavení 8 bitů které budeme odesílat přez port JB(0). Poté je tu ještě přepínač nalevo (SW 15) díky kterému mužeme nastavovat rychlost přenosu neboli bautrate. Poslední ovládací prvek je prostřední tlačítko, které zastává funkci reset (vyresetuje vnitřní program pokud by bylo potřeba).

Přijímač přímá na portu JA(0) přepínač 15 a tlačítko reset zde zastávají stejnou funkci. U obou dvou programech se vysílaná či příjmaná 8 bitová zpráva ukázuje na osmi sedmi segmentových displejích.

## Software description

Put flowchats/state diagrams of your algorithm(s) and direct links to source/testbench files in `src` and `sim` folders. 

### Component(s) simulation

Write descriptive text and simulation screenshots of your components.

## Instructions

Write an instruction manual for your application, including photos or a link to a video.

## References

1. Put here the literature references you used.
2. ...
