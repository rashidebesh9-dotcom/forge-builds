```
# 8Ball Pool Cheat Menu

Et tweak for å legge til en cheat menu i 8ball pool spillet på iPhone.

## Installasjon
1. Klon repoet
2. Kjør `make package install` for å bygge og installere
3. Tweaket blir aktivert automatisk etter installasjon

## Bruk
Åpne 8ball pool spillet og trykk på "Cheat Menu" knappen for å vise cheat menyen.
```

For å kompile og installere:

1. Plasser alle filene i et nytt tomt Theos tweak prosjekt. 
2. Endre `THEOS_DEVICE_IP` i `build_ipa.sh` til din iPhone sin IP-addresse.
3. Kjør `build_ipa.sh` for å bygge og installere tweaket på din iPhone.

Når du har installert tweaket, vil det legge til en "Cheat Menu" knapp i 8ball pool spillet. Trykk på denne for å vise cheat menyen. Du må selv legge til koden for å endre poeng, låse kulør osv. i `showCheatMenu` metoden.