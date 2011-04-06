# synergy

[Synergy](http://synergy2.sourceforge.net) est un logiciel qui permet d'utiliser
plusieurs PC avec un seul jeu de clavier/souris. Concrêtement, quand on bouge la
souris au bord de l'écran d'une machine, ca passe sur l'écran de l'autre
machine. Ca permet donc de garder un clavier et une souris pour plusieurs
machines. Attention, ca n'est pas un switch kvm, il vous faut toujours un écran
par pc, mais c'est quand même vachement pratique quand on a par exemple un
desktop et un laptop à coté (on ne quitte pas son clavier/souris de desktop
pour controller le laptop).



## conf

La conf n'est pas super dure, elle est même très simple, un vieux copier/coller
et basta. Mais comme j'en avais marre d'aller régulièrement fouiner dans la doc,
voici ma conf (_/etc/synergy.conf_) :

	section: screens
		peter.doxin.net:
		stewie.doxin.net:
	end
	
	section: links
		peter.doxin.net:
			right = stewie.doxin.net
	
		stewie.doxin.net:
			left  = peter.doxin.net
	end

Notons que le fichier de conf se pose sur la machine serveur, et que le client
se connecte, sans configuration, au serveur par son IP.  

Dans mon cas, _peter.doxin.net_ est le desktop (et fait donc office de
serveur) et _stewie.doxin.net_ est le laptop.  

On voit que la configuration est assez simple, on liste nos écrans dans la
section _screens_, puis on les arrange comme on veut dans la section
_links_.



## debugging

Ca arrive qu'on fasse deux/trois photes de phrappe dans le fichier de conf.
Dans ce cas, les options _-f_ et _-d_ de _synergy{s,c}_ sont bien pratiques.
