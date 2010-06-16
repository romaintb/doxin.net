# abcde

## présentation

Alors abcde qu'est ce que c'est ?  
Ca veut simplement dire "A Better CD Encoder". Nous v'la bien renseignés,
c'est un encoder de CD qui va nous mouliner nos galettes pour les faire rentrer
dans des boites ogg (mp3, saimal, toussa.) Et tout ca, en ligne de commande
siouplait.


## ogg

Alors pourquoi j'te parle de ca moi ? Rien de bien sorcier a priori. Bah en fait
l'aut' jour je voulais encoder ma pile de CD que je venais de recevoir, et je me
rends compte comme un con que tout est encode en ~120Kb/s. Mouais, bof, on va
changer ca et mettre une qualite d'homme (~190Kb/s), non mais.  
  
OpenBSD ne donne pas de fichier de conf par default, par contre il en fourni un
dans _/usr/local/share/examples/abcde/abcde.conf_. Donc tu :  

	# cp /usr/local/share/examples/abcde/abcde.conf /etc/abcde.conf

Ensuite tu modifies une des lignes comme suit :  

	OGGENCOPTS='-q 6'

Et tu pries le dieu de la CLI qui est si gentil avec toi (en te tabassant les
esgourdes avec le CD que tu viens d'encoder.)



## lossless

Pourquoi personne m'a dit que le Flac c'était plus mieux que l'ogg ? Hein ?  
Alors, comment qu'on fait ?  

	$ abcde -o flac

Trop dure la life.
