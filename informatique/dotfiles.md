todo

# dotfiles

## ~/.xinitrc

todo



## ~/.Xdefaults

	Xft.dpi: 95.0
	
	xterm*charClass: 33:48,35:48,37-38:48,43-47:48,58:48,61:48,63-64:48,95:48,126:48
	xterm*scrollBar:false
	xterm*font:-*-terminus-medium-r-normal-*-12-*-*-*-*-*-*-*
	xterm*background: black
	xterm*foreground: white
	xterm*cursorColor: green
	xterm*loginShell: true

Plutot que de fixer les DPI dans le xorg.conf, ou dans startx, je les fixe ici
!  
Le charClass sert à la selection des url en simplement double-cliquant dessus
(tips grapillé sur GCU, merci à celui qui a posté ca.)  
Le reste est explicite, pas besoin de détailler.



## ~/.vimrc

	syntax on
	set nonumber
	set nocp
	set autoindent
	if has("gui_running")
		color wombat
		set guifont=Terminus\ 9
	else
		color koehler
	endif
	
	set listchars=tab:\|\ ,trail:-
	set list
	set wildmode=list:longest,list:full
	set laststatus=2
	set ruler
	"set cursorline
	
	let html_use_css=1
	let html_no_pre=1
	let html_use_xhtml=1
	
	" Autocompletion
	filetype on
	filetype plugin on
	autocmd FileType python set omnifunc=pythoncomplete#Complete
	autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
	autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
	autocmd FileType css set omnifunc=csscomplete#CompleteCSS
	autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
	autocmd FileType php set omnifunc=phpcomplete#CompletePHP
	autocmd FileType c set omnifunc=ccomplete#Complete
	autocmd FileType cpp set omnifunc=ccomplete#Complete

Rien de bien fantastique ici, le listchars est dispensable en console, mais
avec un joli colorscheme convivial dans gvim, c'est bien pratique. Pareil pour
la cursorline, plus ou moins utile, et ca fait ramer l'affichage.



## ~/.zshrc

	# ================================ #
	# Les variables de l'environnement #
	# ================================ #
	source /etc/profile
	export TERM=xterm-color #oui, des couleurs, pleins
	export LSCOLORS="Gxfxcxdxbxegedabagacad"
	export HISTFILE=~/.zsh_history
	export HISTSIZE=50000
	export SAVEHIST=50000
	export PATH=$PATH:/usr/sbin:/sbin:/usr/local/sbin:/sbin
	
	
	# ========= #
	# Les alias #
	# ========= #
	alias ls='colorls -GF'
	alias l='ls'
	alias la='ls -a'
	alias ll='ls -l'
	alias lal='ls -al'
	alias 'cd..'='cd ..'
	alias df='df -h'
	
	
	# ================== #
	# Les options de ZSH #
	# ================== #
	
	autoload -U compinit # autocompletion
	compinit
	
	autoload -U promptinit # les prompts de zsh (prompt -l, -p ...)
	promptinit
	prompt adam1 blue

TODO: description  
  
À modifier pour avoir quelque chose qui marche sous tous les unix (colorls, options de ls, étou étou).



## ~/.tmux.conf

	# rename the current window
	bind A command-prompt "rename-window %%"
	
	# refresh the current window
	bind ^L refresh-client
	bind l refresh-client
	
	# split the window
	bind | split-window
	
	# utf8 configuration
	set-option -g status-utf8 on
	set-window-option -g utf8 on
	
	# no bell
	set-option -g bell-action none
	
	# number of lines stored in hist file
	set-option -g history-limit 2500
	
	# attempt, if using xterm, to change window title
	set-option -g set-titles on
	
	# we want to display status bar
	set-option -g status on
	
	# with a black blackground and a blue foreground
	set-option -g status-bg white
	set-option -g status-fg black
	
	# automatically rename window title
	set-window-option -g automatic-rename on



## /etc/profile

	CVSROOT=anoncvs@anoncvs.fr.openbsd.org:/cvs
	export PKG_PATH=http://ftp.fr.openbsd.org/pub/OpenBSD/snapshots/packages/i386



## /etc/mk.conf

	FETCH_PACKAGES=Yes
