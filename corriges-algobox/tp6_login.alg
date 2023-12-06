<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="FIN_SINON"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2etat="inactif" F2para="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param maxBoucle="500000" epaisseurPoint="2" nbDecimales="8" totalBoucles="5000000" totalAffichages="1000" epaisseurLigne="2" arrondiAuto="vrai"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#CHAINE#email" algoitem="email EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#password" algoitem="password EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#loginEmail" algoitem="loginEmail EST_DU_TYPE CHAINE"/>
        <item code="1#CHAINE#loginPassword" algoitem="loginPassword EST_DU_TYPE CHAINE"/>
        <item code="1#NOMBRE#attempts" algoitem="attempts EST_DU_TYPE NOMBRE"/>
        <item code="1#CHAINE#areInputsValid" algoitem="areInputsValid EST_DU_TYPE CHAINE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="2#email#pasliste" algoitem="LIRE email"/>
        <item code="2#password#pasliste" algoitem="LIRE password"/>
        <item code="5#areInputsValid#&quot;no&quot;#pasliste" algoitem="areInputsValid PREND_LA_VALEUR &quot;no&quot;"/>
        <item code="5#attempts#1#pasliste" algoitem="attempts PREND_LA_VALEUR 1"/>
        <item code="15#(loginEmail!=email OU loginPassword!=password) ET attempts&lt;=5" algoitem="TANT_QUE ((loginEmail!=email OU loginPassword!=password) ET attempts&lt;=5) FAIRE">
            <item code="16#debuttantque" algoitem="DEBUT_TANT_QUE"/>
            <item code="2#loginEmail#pasliste" algoitem="LIRE loginEmail"/>
            <item code="2#loginPassword#pasliste" algoitem="LIRE loginPassword"/>
            <item code="5#attempts#attempts + 1#pasliste" algoitem="attempts PREND_LA_VALEUR attempts + 1"/>
            <item code="6#loginEmail!=email OU loginPassword!=password" algoitem="SI (loginEmail!=email OU loginPassword!=password) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="4#Identifiants incorrects.#1" algoitem="AFFICHER &quot;Identifiants incorrects.&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="6#loginEmail==email ET loginPassword==password" algoitem="SI (loginEmail==email ET loginPassword==password) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#areInputsValid#&quot;yes&quot;#pasliste" algoitem="areInputsValid PREND_LA_VALEUR &quot;yes&quot;"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="17#fintantque" algoitem="FIN_TANT_QUE"/>
        </item>
        <item code="6#areInputsValid==&quot;yes&quot;" algoitem="SI (areInputsValid==&quot;yes&quot;) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="4#Bienvenue dans votre espace client.#0" algoitem="AFFICHER &quot;Bienvenue dans votre espace client.&quot;"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="4#Vous avez saisi des mauvais identifiants#0" algoitem="AFFICHER &quot;Vous avez saisi des mauvais identifiants&quot;"/>
                <item code="3#attempts#0#pasliste" algoitem="AFFICHER attempts"/>
                <item code="4# fois, votre compte est bloqué#0" algoitem="AFFICHER &quot; fois, votre compte est bloqué&quot;"/>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
