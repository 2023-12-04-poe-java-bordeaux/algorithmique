<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER &quot;m/s&quot;"/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2defaut="" F2lignes="" F2para="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" nbDecimales="8" epaisseurPoint="2" maxBoucle="500000" arrondiAuto="vrai" epaisseurLigne="2" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="distance EST_DU_TYPE NOMBRE" code="1#NOMBRE#distance"/>
        <item algoitem="temps EST_DU_TYPE NOMBRE" code="1#NOMBRE#temps"/>
        <item algoitem="vitesse EST_DU_TYPE NOMBRE" code="1#NOMBRE#vitesse"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="LIRE distance" code="2#distance#pasliste"/>
        <item algoitem="LIRE temps" code="2#temps#pasliste"/>
        <item algoitem="vitesse PREND_LA_VALEUR distance/temps" code="5#vitesse#distance/temps#pasliste"/>
        <item algoitem="AFFICHER vitesse" code="3#vitesse#0#pasliste"/>
        <item algoitem="AFFICHER &quot;m/s&quot;" code="4#m/s#0"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
