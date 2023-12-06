# Exercices

## TP0

### a.

```bash
A = 5

B = A

A = 9

B : 5 # Reponse
```

### b.

```bash
A <- 5

B <- 7

C <- (A + B)/2

A <- 12

B <- 12

C : 6 # Reponse
```

## TP1

Ecrire un algorithme qui demande à l’utilisateur d’entrer à partir du clavier:

- La distance parcours(m)
- Le temps(sec)

Puis calculer la vitesse selon la formule:

`vitesse = distance parcourue / temps`

Puis afficher le résultat dans le format suivant : `345 m/s`

```java
FONCTIONS_UTILISEES
VARIABLES
  distance EST_DU_TYPE NOMBRE
  temps EST_DU_TYPE NOMBRE
  vitesse EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE distance
  LIRE temps
  vitesse PREND_LA_VALEUR distance/temps
  AFFICHER vitesse
  AFFICHER "m/s"
FIN_ALGORITHME
```

## TP2

Écrire un algorithme qui demande à l'utilisateur trois notes, puis affiche la moyenne de ces notes. Cependant, si la moyenne est inférieure à 10, le programme doit afficher "Recalé", sinon, il affiche "Admis".

```java
FONCTIONS_UTILISEES
VARIABLES
  n1 EST_DU_TYPE NOMBRE
  n2 EST_DU_TYPE NOMBRE
  n3 EST_DU_TYPE NOMBRE
  somme EST_DU_TYPE NOMBRE
  moyenne EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE n1
  LIRE n2
  LIRE n3
  somme PREND_LA_VALEUR n1+n2+n3
  moyenne PREND_LA_VALEUR somme/3
  SI (moyenne>=10) ALORS
    DEBUT_SI
    AFFICHER "Admis"
    FIN_SI
    SINON
      DEBUT_SINON
      AFFICHER "Recale"
      FIN_SINON
FIN_ALGORITHME


```

## TP3

Écrire un algorithme qui demande à l'utilisateur de saisir un jour de la semaine. Si c'est un jour ouvré (du lundi au vendredi), le programme affiche "Travail", sinon, s'il s'agit d'un week-end (samedi ou dimanche), il affiche "Repos".

```java
FONCTIONS_UTILISEES
VARIABLES
  jour EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
  LIRE jour
  SI (jour=="samedi" OU jour=="dimanche") ALORS
    DEBUT_SI
    AFFICHER "Repos"
    FIN_SI
    SINON
      DEBUT_SINON
      AFFICHER "Travail"
      FIN_SINON
FIN_ALGORITHME

```

## TP4

Écrire un algorithme pour un service de livraison. Le programme demande à l'utilisateur de saisir le poids d'un colis et la distance à parcourir pour la livraison. Si le poids est inférieur à 5 kg et la distance est inférieure à 10 km, le coût de livraison est de 5 euros. Sinon, le coût est de 10 euros.

```java
FONCTIONS_UTILISEES
VARIABLES
  poids EST_DU_TYPE NOMBRE
  distance EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE poids
  LIRE distance
  SI (poids<5 ET distance < 10) ALORS
    DEBUT_SI
    AFFICHER "Le cout est 5 euros"
    FIN_SI
    SINON
      DEBUT_SINON
      AFFICHER "Le cout est de 10 euros"
      FIN_SINON
FIN_ALGORITHME

```

## TP5

Écrire un algorithme qui demande à l'utilisateur de saisir une température en degrés Celsius. Le programme doit convertir cette température en degrés Fahrenheit en utilisant la formule F = (C \* 9/5) + 32. Ensuite, le programme doit afficher la température en Fahrenheit.

```java
FONCTIONS_UTILISEES
VARIABLES
  c EST_DU_TYPE NOMBRE
  f EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE c
  f PREND_LA_VALEUR (c*(9/5))+32
  AFFICHER c
  AFFICHER "c = "
  AFFICHER f
  AFFICHER " f"
FIN_ALGORITHME

```

## TP5

Écrire un algorithme qui permet à l’utilisateur de définir une adresse email et un mot de passe.

Ensuite dans un second temps, il sera demandé à l’utilisateur de fournir l’email et le mot de passe:

Si l’email et le mot de passe ne correspondent pas aux valeurs définies, le message “Identifiants incorrects devra s’afficher”, et l’utilisateur devra recommencer la saisie des valeurs.
Sinon, le message “Bienvenu dans votre espace client” devra s’afficher.

Le nombre de fois que l’utilisateur peut saisir des mauvais identifiants est limité à 5, ensuite le programme va s’arrêter avec un message disant

“Vous avez saisi des mauvais identifiants x fois, votre compte est bloqué”.

```java
FONCTIONS_UTILISEES
VARIABLES
  email EST_DU_TYPE CHAINE
  password EST_DU_TYPE CHAINE
  loginEmail EST_DU_TYPE CHAINE
  loginPassword EST_DU_TYPE CHAINE
  attempts EST_DU_TYPE NOMBRE
  areInputsValid EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
  LIRE email
  LIRE password
  areInputsValid PREND_LA_VALEUR "no"
  attempts PREND_LA_VALEUR 1
  TANT_QUE ((loginEmail!=email OU loginPassword!=password) ET attempts<=5) FAIRE
    DEBUT_TANT_QUE
    LIRE loginEmail
    LIRE loginPassword
    attempts PREND_LA_VALEUR attempts + 1
    SI (loginEmail!=email OU loginPassword!=password) ALORS
      DEBUT_SI
      AFFICHER* "Identifiants incorrects."
      FIN_SI
    SI (loginEmail==email ET loginPassword==password) ALORS
      DEBUT_SI
      areInputsValid PREND_LA_VALEUR "yes"
      FIN_SI
    FIN_TANT_QUE
  SI (areInputsValid=="yes") ALORS
    DEBUT_SI
    AFFICHER "Bienvenue dans votre espace client."
    FIN_SI
    SINON
      DEBUT_SINON
      AFFICHER "Vous avez saisi des mauvais identifiants"
      AFFICHER attempts
      AFFICHER " fois, votre compte est bloqué"
      FIN_SINON
FIN_ALGORITHME

```

## TP6

Écrire un algorithme qui demande à l’utilisateur un nombre compris entre 1 et 3 jusqu’à ce que la réponse convienne.

```java
FONCTIONS_UTILISEES
VARIABLES
  nbr EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  TANT_QUE (nbr<1 OU nbr>3) FAIRE
    DEBUT_TANT_QUE
    LIRE nbr
    SI (nbr>=1 ET nbr<=3) ALORS
      DEBUT_SI
      AFFICHER "Trouve"
      FIN_SI
      SINON
        DEBUT_SINON
        AFFICHER "Saisie invalide, le nombre doit etre compris entre 1 et 3."
        FIN_SINON
    FIN_TANT_QUE
FIN_ALGORITHME

```

## TP7

Écrire un algorithme qui demande un nombre compris entre 10 et 20, jusqu’à ce que la réponse convienne. En cas de réponse supérieure à 20, on fera apparaître un message : « Plus petit ! », et inversement, « Plus grand ! » si le nombre est inférieur à 10.

```java
FONCTIONS_UTILISEES
VARIABLES
  nbr EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  TANT_QUE (nbr<10 OU nbr>20) FAIRE
    DEBUT_TANT_QUE
    LIRE nbr
    SI (nbr<10) ALORS
      DEBUT_SI
      AFFICHER "Plus grand"
      FIN_SI
    SI (nbr>20) ALORS
      DEBUT_SI
      AFFICHER "Plus petit"
      FIN_SI
    SI (nbr>=10 ET nbr<=20) ALORS
      DEBUT_SI
      AFFICHER "Trouve"
      FIN_SI
    FIN_TANT_QUE
FIN_ALGORITHME

```

## TP8

Écrire un algorithme qui demande un nombre de départ, et qui ensuite affiche les dix nombres suivants. Par exemple, si l'utilisateur entre le nombre 17, le programme affichera les nombres de 18 à 27.

```java

```

## TP9

Ecrivez un programme qui affiche en console les nombres de 1 à n:

pour les multiples de trois, il affiche "fizz" à la place du nombre
et pour les multiples de cinq de cinq, imprimez "buzz".
Pour les nombres qui sont des multiples multiples à la fois de trois et de cinq, imprimez "fizzbuzz".
Sinon, il affiche le nombre

Exemple
Si n = 5
1
2
fizz
4
Buzz

```java
FONCTIONS_UTILISEES
VARIABLES
  nbr EST_DU_TYPE NOMBRE
  compteur EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE nbr
  POUR compteur ALLANT_DE 1 A nbr
    DEBUT_POUR
    SI (compteur%3==0 ET compteur%5==0) ALORS
      DEBUT_SI
      AFFICHER compteur
      AFFICHER* "- FizzBuzz"
      FIN_SI
      SINON
        DEBUT_SINON
        SI (compteur%3==0) ALORS
          DEBUT_SI
          AFFICHER compteur
          AFFICHER* "- Fizz"
          FIN_SI
          SINON
        SI (compteur%5==0) ALORS
          DEBUT_SI
          AFFICHER compteur
          AFFICHER* "- Buzz"
          FIN_SI
          SINON
            DEBUT_SINON
            AFFICHER* compteur
            FIN_SINON
        FIN_SINON
    FIN_POUR
FIN_ALGORITHME

```

## TP10

Écrire un algorithme qui demande à l’utilisateur une chaîne de départ, et ensuite l’algorithme devra produire la chaîne renversée.

Exemple :

Si l’on entre : papa

L’algo devra nous afficher : apap

```java
FONCTIONS_UTILISEES
VARIABLES
  nom EST_DU_TYPE CHAINE
  taille EST_DU_TYPE NOMBRE
  compteur EST_DU_TYPE NOMBRE
  chaineRenversee EST_DU_TYPE CHAINE
DEBUT_ALGORITHME
  LIRE nom
  taille PREND_LA_VALEUR nom.length
  POUR compteur ALLANT_DE 0 A taille-1
    DEBUT_POUR
    chaineRenversee PREND_LA_VALEUR nom.substr(compteur,1)+chaineRenversee
    FIN_POUR
  AFFICHER chaineRenversee
FIN_ALGORITHME

```

## TP11

Écrire un algorithme qui demande à l’utilisateur une chaîne, et ensuite lui retourne le nombre des voyelles et consonnes contenu dans la chaîne.

Exemple:

Entrée : Benjamin

Résultat : 3 voyelles, 5 consonnes

```java
FONCTIONS_UTILISEES
VARIABLES
  mot EST_DU_TYPE CHAINE
  voyelles EST_DU_TYPE NOMBRE
  consonnes EST_DU_TYPE NOMBRE
  caractere EST_DU_TYPE CHAINE
  i EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE mot
  voyelles PREND_LA_VALEUR 0
  consonnes PREND_LA_VALEUR 0
  POUR i ALLANT_DE 0 A mot.length-1
    DEBUT_POUR
    caractere PREND_LA_VALEUR mot.substr(i, 1)
    SI (caractere=="a" OU caractere=="e" OU caractere=="i" OU caractere=="o" OU caractere=="u" OU caractere=="y" OU caractere=="A" OU caractere=="E" OU caractere=="I" OU caractere=="O" OU caractere=="U" OU caractere=="Y") ALORS
      DEBUT_SI
      voyelles PREND_LA_VALEUR voyelles + 1
      FIN_SI
    SINON
      DEBUT_SINON
      consonnes PREND_LA_VALEUR consonnes + 1
      FIN_SINON
    FIN_POUR
  AFFICHER "Résultat : "
  AFFICHER voyelles
  AFFICHER " voyelles, "
  AFFICHER consonnes
  AFFICHER " consonnes"
FIN_ALGORITHME

```

## TP12

Écrire un algorithme qui demande à l’utilisateur une chaîne, et ensuite un caractère, puis lui retourne le nombre de fois que le caractère saisi se trouve dans la chaîne et dire si c’est une voyelle ou une consonne.

Exemple:

Caractère : i
chaine : christian

Résultat : i se retrouve 2 fois, et c’est une voyelle

```java
FONCTIONS_UTILISEES
VARIABLES
  mot EST_DU_TYPE CHAINE
  caractereRecherche EST_DU_TYPE CHAINE
  occurences EST_DU_TYPE NOMBRE
  i EST_DU_TYPE NOMBRE
DEBUT_ALGORITHME
  LIRE mot
  LIRE caractereRecherche
  occurences PREND_LA_VALEUR 0
  POUR i ALLANT_DE 0 A mot.length-1
    DEBUT_POUR
    SI (mot.substr(i, 1) == caractereRecherche) ALORS
      DEBUT_SI
      occurences PREND_LA_VALEUR occurences + 1
      FIN_SI
    FIN_POUR
  SI (caractereRecherche=="a" OU caractereRecherche=="e" OU caractereRecherche=="i" OU caractereRecherche=="o" OU caractereRecherche=="u" OU caractereRecherche=="y" OU caractereRecherche=="A" OU caractereRecherche=="E" OU caractereRecherche=="I" OU caractereRecherche=="O" OU caractereRecherche=="U" OU caractereRecherche=="Y") ALORS
    DEBUT_SI
    AFFICHER "Résultat : "
    AFFICHER caractereRecherche
    AFFICHER " se retrouve "
    AFFICHER occurences
    AFFICHER " fois, et c’est une voyelle"
    FIN_SI
  SINON
    DEBUT_SINON
    AFFICHER "Résultat : "
    AFFICHER caractereRecherche
    AFFICHER " se retrouve "
    AFFICHER occurences
    AFFICHER " fois, et c’est une consonne"
    FIN_SINON
FIN_ALGORITHME

```
