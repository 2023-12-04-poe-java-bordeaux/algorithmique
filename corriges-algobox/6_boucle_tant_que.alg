<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="FIN_TANT_QUE" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctcode="" fctetat="inactif"/>
    <F2 F2etat="inactif" F2lignes="" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" maxBoucle="500000" epaisseurLigne="2" totalBoucles="5000000" arrondiAuto="vrai" nbDecimales="8" totalAffichages="1000"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#codePin" algoitem="codePin EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#codePinATester" algoitem="codePinATester EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#codePin#pasliste" algoitem="LIRE codePin"/>
        <item code="5#codePinATester#&quot;&quot;#pasliste" algoitem="codePinATester PREND_LA_VALEUR &quot;&quot;"/>
        <item code="15#codePin!=codePinATester" algoitem="TANT_QUE (codePin!=codePinATester) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="2#codePinATester#pasliste" algoitem="LIRE codePinATester"/>
            <item code="6#codePin!=codePinATester" algoitem="SI (codePin!=codePinATester) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Code pin invalide. Veuillez recommencer.#0" algoitem="AFFICHER &quot;Code pin invalide. Veuillez recommencer.&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
                <item code="9#sinon" algoitem="SINON">
                    <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                    <item code="4#Appareil debloque.#0" algoitem="AFFICHER &quot;Appareil debloque.&quot;"/>
                    <item code="11#finsinon" algoitem="FIN_SINON"/>
                </item>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
