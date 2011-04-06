# note

Cette page n'est pas finie, ca n'est qu'une ébauche, donc : todo



# configuration post installation

Une fois que le système est installé, il ne reste plus qu'à le configurer un
peu. [Un peu](http://undeadly.org/cgi?action=article&sid=20080607131856) j'ai
dit.



## desktop

XDM, commencer sous FVWM (par default sans xsession), puis compiler un
[dwm](/informatique/dwm.html).



## tunning

J'ai jamais supporté les néons et les jantes alus, mais bon, ca empêche pas
d'être coquet !

	# pkg_add gtk2-clearlooks-engine tango-icon-theme

puis dans ~/.gtkrc-2.0 :

	include "/usr/local/share/themes/Clearlooks/gtk-2.0/gtkrc"
	style "user-font"
	{
		font_name="Sans 9"
	}
	widget_class "*" style "user-font"
	gtk-icon-theme-name="Tango"
