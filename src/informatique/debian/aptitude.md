# aptitude


## pinning apt

Quand on est en stable par exemple, il arrive qu'on ait besoin d'une application
qui n'est que dans une version plus récente. Apt nous permet très facilement de
sélectionner la branche que l'on veut pour le soft à installer.  
  
Il suffit d'ajouter les repos plus récents à _/etc/apt/sources.list_ (dans mon
cas, les dépots unstable). Ensuite, il faut un moyen de dire à apt quel dépot
utiliser en priorité (le dépot stable en faits, car on n'utilisera celui
d'unstable que pour quelques rares exceptions) :

    romain@foo ~ % cat /etc/apt/preferences
    Package: *
    Pin: release a=stable
    Pin-Priority: 990
    
    Package: *
    Pin: release a=unstable
    Pin-Priority: 50

Donc on voit qu'on donne la priorité 990 au dépot stable, et 5 au dépot
unstable. Donc apt ira toujours chercher en priorité ses paquets dans le dépot
stable.  
  
Si l'on veut installer un package qui est dans le dépot unstable :

    romain@foo ~ % sudo aptitude install -t unstable tmux

Et voilà, on installe le paquet _tmux_ du dépot unstable. Le reste du système
reste en stable.
