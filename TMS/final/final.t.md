# Final Exam Test

```Hodnotenie:```

Snazte sa spravit riesenie v takom tvare, aby aj clovek neznaly robot frameworku vedel,
akym sposobom ma testy pustit a co bude treba (readme, requirements,....)

Doporucujem si vyrobit aj cisto `novy GitHub repository` iba a len s riesenim zadania ale nie je to povinne.

Zadanie je GENERICKE. Znamena to, ze je na Vas ake produkty vyberiete, aky filter
a ake ceny budete overovat v kosiku. Nehladajte v nom ziadne chytaky ani nic podobne. Nie je podstatne, aby ste automatizovali na 100% nejaky TC, pripadne aby ste hladali v zadani chyby. Ako zadanie pochopite, tak bude v pripade otazok ma kontaktujte. Odovzdajte aj v pripade, ak sa vam cely Test Case nepodari spravit! Neodovzdane zadanie nemoze byt hodnotene.


- hodnoti sa ci Vase riesenie `funguje a je opakovatelne`
- hodnoti sa uprava `kodu a struktura testu/kodu`
- hodnotia sa `dodatocne informacie`, napr Readme  subor, kde je popis instalacie a spustania, dokumentacia, tagy.. vsetko zaujmave


```Odovzdavanie```

- v priebehu testu, ma mozte kontaktovat emailom/teams, pripadne hocijaky iny kanal kde mate na mna kontakt. Budem sa snazit odpovedat po 7:30  hned ako pride sprava.


- odovzdavame v GIT-e
- mailom mi treba poslat upozornenie, ze UZ je riesenie uploadnut aj s miestom, kde ste ho uploadli
- riesenie poslane emailom nehodnotim (emailom sa zasiela iba notifikacia)
- deadline pre riesenie je 00:00:00 14.05.2022
- cas odovzdania beriem z GITHUB-u, tj ak poslete email 23:59:59 a do gitu pushnete 00:00:01 neuznam Vam to.
- dajte ma do repository ako 'Collaborators', nasledne Vam do neho uploadnem komentovany kod

--------

# ZADANIE

## TC - Cart functionality

* 100 Adding and removing items from cart
  * otvor: `https://www.heureka.sk`
  * click  `tipy na grilovanie a piknik`
  * zvolit `lubovolnu subpolozku`
    * napr: grily, grilovacie naradie ....
  * vlavo vo filtri zvolit -> cena - `50 - 90 €`
    * pokial vami vybrana sekcia nema cenu v rozsahu 50-90, zvolte **2.** v poradi
      * e.g pre naradie: `5 - 10 €`
      * udiarne `80 - 220 €`
  * zvolit lubovolne 3 produkty v kategorii
    - pozor, zvolte take produkty, ktore sa daju `Kupit na heureke` (nie kazdy produkt sa da priamo kupit!)
    - napr: https://stavebnice-lego.heureka.sk/lego-classic-10698-velky-kreativni-box/#prehlad/
    - ***produkty si mozte dopredu vybrat, nie je nutne dynamicky zistovat, ktore sa daju na heureke kupit a otvarat iba tie***
  * kupit tieto 3 produkty
  * prejst do kosika
    - overit ci su v kosiku 3 produkty
    - overit ci kazdy produkt je v rozmedzi `50 - 90 €` (to bol filter)
      - zase, dajte si pozor, aky filter ste vybrali
      - na zaklade toho bude nutne overit rozmedzie cien v kosiku!
        - tj... ak som mal filter 5-10, kazdy produkt v kosiku musi byt v tomto rozmedzi!
  * odstranit 1 produkt
    - overit, ci sa tam ostraneny produkt nenachadza
  * odstranit ostatne produkty
    - overit, ci je kosik prazdny
    - hlaska: `Váš košík zíva prázdnotou`
