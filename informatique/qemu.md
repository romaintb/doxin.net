# qemu

Parfois, il arrive que tu sois dans une école qui utilise à foison des
technologies sales. Ou tout simplement des technologies propres que toi tu
n'utilises pas tous les jours.  
Ces jours là, tu te dis que tu pourrais installer en dur le bousin en question,
ca irait plus vite, ca serait plus simple et tout. Et puis en fait, tu te
rends compte que ton puffy adoré te manque, et que tu aimerais bien faire
tourner tes bousins pour l'école dans une machine virtuelle, et continuer à
surfer sur vdm sur ton joli OpenBSD qui brille.  
Alors, que faire ? Qemu semble tout indiqué (puisque je ne vois pas autre chose
qui pourrait me faire tourner un OS complet).



## installation de l'OS

Je précise avant tout que j'ai utlisé le
[wiki](http://kidsquid.com/cgi-bin/moin.cgi) officiel de qemu.  
Donc, on commence par créer l'image disque qui va contenir notre super OS sale
(ou propre, mais dans mon cas, c'est la bouse de chez !#@µ$£, que par principe
je ne citerai pas, mais vous ne pouvez pas vous tromper, c'est pas la merde à
la pomme, c'est l'autre).

	$ qemu-img create -f qcow2 ouinouin.img 5G

La commande est assez explicite, en dehors de qcow2 qui est le format d'image
natif de qemu (tu peux lire le man de qemu-img si tu veux.)  
Une fois cela fait, tu as ton image, il est temps de démarrer qemu pour y
installer boueOS dans sa version XP :

	$ qemu -cdrom winxp.iso -hda ouinouin.img -m 256 -boot d

On utilise donc _winxp.iso_ en tant que cdrom, le disque dur est notre
image récement crée, la machine aura 256M de ram et on boot sur le lecteur d,
qui correspond donc à notre iso.  
Là tout se passe plus ou moins comme sur des roulettes, et au bout de 5 heures
(ca n'est pas une blague), Ouinouin(TM)(TR)(C) est installé et marche. Sauf que
c'est un chouilla lent comme pas possible, que ce soit sur une machine lente
comme mon x40, ou plus rapide comme mon t60p. Ca ne vient donc pas de la
machine.



## kqemu

Alors apparement, les gens de qemu se sont rendu compte que c'était
formidablement lent, et ils ont cherché comment accélérer tout ca.
(passage de détails) ... et donc ca te donne un module noyau à charger,
et ca devrait pulser comme jamais.  

Dans _/etc/rc.securelevel_ :

	if nm /dev/ksyms | grep mp_lock >/dev/null; then
		if [ -r /usr/local/lib/kqemu/kqemu_mp.o ]; then
			echo ' kqemu';
			/sbin/modload /usr/local/lib/kqemu/kqemu_mp.o
		fi
	else
		if [ -r /usr/local/lib/kqemu/kqemu.o ]; then
			echo ' kqemu';
			/sbin/modload /usr/local/lib/kqemu/kqemu.o
		fi
	fi

Bon, après un petit test, il s'avère que ca va pas plus vite du tout, et j'ai
même eu un freeze du système. Est-ce que c'est lié ou pas, je sais pas, j'ai pas
cherché plus loin. De toutes facons mon école toute pourrite est finie, j'ai
plus besoin de Ouinouinmerde, donc :

	$ sudo pkg_delete qemu kqemu
