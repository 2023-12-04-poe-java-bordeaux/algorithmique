<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER chaineRenversee"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#nom" algoitem="nom EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#taille" algoitem="taille EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#compteur" algoitem="compteur EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#chaineRenversee" algoitem="chaineRenversee EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#nom#pasliste" algoitem="LIRE nom"/>
        <item code="5#taille#nom.length#pasliste" algoitem="taille PREND_LA_VALEUR nom.length"/>
        <item code="12#compteur#0#taille-1" algoitem="POUR compteur ALLANT_DE 0 A taille-1">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="5#chaineRenversee#nom.substr(compteur,1)+chaineRenversee#pasliste" algoitem="chaineRenversee PREND_LA_VALEUR nom.substr(compteur,1)+chaineRenversee"/>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="3#chaineRenversee#0#pasliste" algoitem="AFFICHER chaineRenversee"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
