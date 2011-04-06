# note

todo



# wifi

En ce moment, j'ai deux lapounets à la maison : un ibm x40 (luv) et un ibm t60p
(moyen luv). Le t60p a une Intel 3945 (driver wpi) et le x40 a une Intel 2200
(driver iwi).



## wep

	# ifconfig wpi0 nwid monreseau nwkey 0xmonpass
	# dhclient wpi0

Et pour avoir la connection en dhcp au demarrage et tout et tout, on edite son
_/etc/hostname.if_ (moi _hostname.iwi0_ pour le x40 ou _hostname.wpi0_ pour le
t60p) :

	dhcp nwid monreseau nwkey 0xmonpass



## wpa-psk

Également appelé par le commun des mortels : "la dernière option de la freebox".

	# ifconfig wpi0 nwid monreseau wpa wpapsk `wpa-psk monreseau monpass`
	# dhclient wpi0

Le fichier _hostname.if_ :

	dhcp nwid monreseau wpa wpapsk letrucquetarenvoyelacommandewpa-psk



## wifi et filaire

À la maison, j'ai la freebox, qui met le filaire et le wifi sur le même
réseau (192.168.0.0). Donc quand je débranche mon cable pour aller faire
caca, le wifi ne prend pas le relais automatiquement, et c'est chiant. La
solution rapide est d'attribuer une IP bidon sur un autre réseau à la carte
filaire (genre 192.168.1.1), et hop ca roulaize.



# ssh à un serveur utf-8

OpenBSD ne possède pas de mécanisme de locales, ca ne pose pas de soucis, sauf
quand on se connecte à un serveur en utf-8 (c'est à dire quasiment tout le
temps dans mon cas). Dans ce cas là, on peut utiliser uxterm, mais il nous
vomit les erreurs suivantes au lancement :

	perl: warning: Setting locale failed.g
	perl: warning: Please check that your locale settings:g
			LC_ALL = (unset),g
			LC_CTYPE = "en_US.UTF-8",g
			LANG = (unset)g
		are supported and installed on your system.g
	perl: warning: Falling back to the standard locale ("C").g
	perl: warning: Setting locale failed.g
	perl: warning: Please check that your locale settings:g
			LC_ALL = (unset),g
			LC_CTYPE = "en_US.UTF-8",g
			LANG = (unset)g
		are supported and installed on your system.g
	perl: warning: Falling back to the standard locale ("C").

Je ne sais pas trop ce que je peux faire pour corriger çà, et je ne sais pas
vraiment si c'est corrigeable, mais en tous cas, j'ai de l'utf8 après, donc
ca marche, basta.



# usermod

En switchant de genou/linusque à OpenBSD, je me suis retrouvé avec le soucis
suivant : usermod n'a pas l'option -a (qui append, genre quand on utilise -G
ca ajoute le groupe, et ca enlève pas les autres.) Alors ce paragraphe est
juste une note pour me souvenir qu'OpenBSD append par défault, sans te demander
ton avis. T'as trop cru que c'était la démocratie OpenBSD ?
