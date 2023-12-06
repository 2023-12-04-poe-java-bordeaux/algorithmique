<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot; consonnes&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param nbDecimales="8" totalBoucles="5000000" maxBoucle="500000" epaisseurPoint="2" epaisseurLigne="2" totalAffichages="1000" arrondiAuto="vrai"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="mot EST_DU_TYPE CHAINE" code="1#CHAINE#mot"/>
        <item algoitem="voyelles EST_DU_TYPE NOMBRE" code="1#NOMBRE#voyelles"/>
        <item algoitem="consonnes EST_DU_TYPE NOMBRE" code="1#NOMBRE#consonnes"/>
        <item algoitem="caractere EST_DU_TYPE CHAINE" code="1#CHAINE#caractere"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE mot" code="2#mot#pasliste"/>
        <item algoitem="voyelles PREND_LA_VALEUR 0" code="5#voyelles#0#pasliste"/>
        <item algoitem="consonnes PREND_LA_VALEUR 0" code="5#consonnes#0#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 0 A mot.length-1" code="12#i#0#mot.length-1">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="caractere PREND_LA_VALEUR mot.substr(i, 1)" code="5#caractere#mot.substr(i, 1)#pasliste"/>
            <item algoitem="SI (caractere==&quot;a&quot; OU caractere==&quot;e&quot; OU caractere==&quot;i&quot; OU caractere==&quot;o&quot; OU caractere==&quot;u&quot; OU caractere==&quot;y&quot; OU caractere==&quot;A&quot; OU caractere==&quot;E&quot; OU caractere==&quot;I&quot; OU caractere==&quot;O&quot; OU caractere==&quot;U&quot; OU caractere==&quot;Y&quot;) ALORS" code="6#caractere==&quot;a&quot; OU caractere==&quot;e&quot; OU caractere==&quot;i&quot; OU caractere==&quot;o&quot; OU caractere==&quot;u&quot; OU caractere==&quot;y&quot; OU caractere==&quot;A&quot; OU caractere==&quot;E&quot; OU caractere==&quot;I&quot; OU caractere==&quot;O&quot; OU caractere==&quot;U&quot; OU caractere==&quot;Y&quot;">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="voyelles PREND_LA_VALEUR voyelles + 1" code="5#voyelles#voyelles + 1#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
                <item algoitem="SINON" code="9#sinon">
                    <item algoitem="DEBUT_SINON" code="10#debutsinon"/>
                    <item algoitem="consonnes PREND_LA_VALEUR consonnes + 1" code="5#consonnes#consonnes + 1#pasliste"/>
                    <item algoitem="FIN_SINON" code="11#finsinon"/>
                </item>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Résultat : &quot;" code="4#Résultat : #0"/>
        <item algoitem="AFFICHER voyelles" code="3#voyelles#0#pasliste"/>
        <item algoitem="AFFICHER &quot; voyelles, &quot;" code="4# voyelles, #0"/>
        <item algoitem="AFFICHER consonnes" code="3#consonnes#0#pasliste"/>
        <item algoitem="AFFICHER &quot; consonnes&quot;" code="4# consonnes#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
