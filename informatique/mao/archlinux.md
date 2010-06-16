# archlinux

Alors vous allez me dire, pourquoi pas OpenBSD ? Bah pour la MAO, il faut du
realtime, un kernel preemptif et tout et tout, je te laisse te renseigner sur
[LinuxMAO](http://linuxmao.org) par exemple. Et bien sûr, OpenBSD ne supporte
pas tous ces petits trucs indispensables, domage. (rigole pas kimelto, ton os
en bois non plus)  

Ensuite, pourquoi Archlinux et pas autre chose ? Il existe des distrib
spécialisées qui sont faites pour ca, embarquent par défaut toutes les
applications necessaires. C'est pas faux, mais vous avez déjà essayé Ubuntu ?
Vous avez envie de vous faire chier à apprendre portage ? Nan, bon ben alors ...
Il reste Archlinux, qui en 3 minutes d'install, et trois pauvres lignes à
modifier fait un OS musical auquel on ne peut rien reprocher, que demande le
peuple ? Moi en tous cas, j'en demande pas plus et je suis conquis.



## installation

L'installation est on ne peut plus conne, on répond "oui" partout, vazi Gérard,
envoie la sauce. Petit tweak pour optimiser le FileSystem, j'ajoute l'option
noatime. Pas que mon disque dur ait déjà ramé, mais dans le doute ...  

Hum, voilà, c'est installé, on rajoute X, un wm léger qui supporte le
multi-écran (de la MAO sur un seul ? moué bof), par exemple
[pekwm](http://pekwm.org).  

On rajoute aussi le repos [proaudio](http://archaudio.org) pour avoir quelques
applis qui ne sont pas dans les repos de base (jack dernier cri et compagnie).
Il est justement temps d'installer [ardour](http://ardour.org),
[jack](http://jackaudio.org) (patchage) et [renoise](http://www.renoise.com)
(c'est à peu près tout ce que j'utilise).



## configuration

J'ai d'abord lu [ca](http://wiki.archlinux.org/index.php/Pro_Audio)
pour me rendre compte qu'en fait, il suffit d'éditer
_/etc/security/limits.conf_ et modifier trois lignes comme suivent :

	@audio          -       rtprio          99
	@audio          -       nice           -10
	@audio          -       memlock         unlimited

Et basta, tu rebootes, et ton système est prêt à faire de la musique. Putain,
complexe hein ? J'ai même pas installé le kernel realtime qui est dans le
repos proaudio, tout semble fonctionner par défaut (le kernel défaut n'est pas
marqué RT, mais jack tourne en RT quand même, par contre il est PREEMPT). Sans
doute que le kernel de proaudio est plus performant, mais pour l'instant, j'ai un latence
plus que correcte, et je n'ai jamais de xruns ... la vie est belle.  

Ah, avant que j'oublie, j'ai lu quelque part que pour les Intel HD Audio, il
vallait mieux mettre les _periods_ à 3 au lieu de 2 par défaut (dans la
config de jack). Qu'il en soit ainsi, j'ai pas cherché plus loin.



## conclusion

Après m'être acharné sur UbuntuStudio, qui plantait comme une merde quand
j'ajoutais tuxguitar par exemple (gros freeze de la mort, plus possible
d'utiliser aptitude ...), Archlinux m'a donné une grande bouffé de fraicheur, en
se rapprochant d'OpenBSD : ca juste marche !  

Le gestionnaire de paquet n'est pas ultra intuitif, mais les wikis des deux
sites francophones (!) sont très bien remplis, et on trouve ce qu'on cherche en
deux secondes. MERCI !  

_/me_goes_back_to_poum_poum_tchak_
