<h1>note</h1>

todo



<h1>wifi</h1>

En ce moment, j'ai deux lapounets à la maison : un ibm x40 (luv) et un ibm t60p (moyen luv).
Le t60p a une Intel 3945 (driver wpi) et le x40 a une Intel 2200 (driver iwi).

<h2>wep</h2>
<pre># ifconfig wpi0 nwid monreseau nwkey 0xmonpass
# dhclient wpi0</pre>
<br />
Et pour avoir la connection en dhcp au demarrage et tout et tout, on edite son <i>/etc/hostname.if</i> (moi <i>hostname.iwi0</i> pour le x40 ou <i>hostname.wpi0</i> pour le t60p) :
<pre>dhcp nwid monreseau nwkey 0xmonpass</pre>



<h2>wpa-psk</h2>

Également appelé par le commun des mortels : "la dernière option de la freebox".
<pre># ifconfig wpi0 nwid monreseau wpa wpapsk `wpa-psk monreseau monpass`
# dhclient wpi0</pre>

Le fichier <i>hostname.if</i> :

<pre>dhcp nwid monreseau wpa wpapsk letrucquetarenvoyelacommandewpa-psk</pre>



<h2>wifi et filaire</h2>

À la maison, j'ai la freebox, qui met le filaire et le wifi sur le même réseau (192.168.0.0). Donc quand je débranche mon cable pour aller faire caca, le wifi ne prend pas le relais automatiquement, et c'est chiant. La solution rapide est d'attribuer une IP bidon sur un autre réseau à la carte filaire (genre 192.168.1.1), et hop ca roulaize.



<h1>ssh à un serveur utf-8</h1>

OpenBSD ne possède pas de mécanisme de locales, ca ne pose pas de soucis, sauf quand on se connecte à un serveur en utf-8 (c'est à dire quasiment tout le temps dans mon cas). Dans ce cas là, on peut utiliser uxterm, mais il nous vomit les erreurs suivantes au lancement :
<pre>perl: warning: Setting locale failed.g
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
perl: warning: Falling back to the standard locale ("C").</pre>

Je ne sais pas trop ce que je peux faire pour corriger çà, et je ne sais pas vraiment si c'est corrigeable, mais en tous cas, j'ai de l'utf8 après, donc ca marche, basta.



<h1>usermod</h1>

En switchant de genou/linusque à OpenBSD, je me suis retrouvé avec le soucis suivant : usermod n'a pas l'option -a (qui append, genre quand on utilise -G ca ajoute le groupe, et ca enlève pas les autres.) Alors ce paragraphe est juste une note pour me souvenir qu'OpenBSD append par défault, sans te demander ton avis. T'as trop cru que c'était la démocratie OpenBSD ?
