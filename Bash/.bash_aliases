alias browser=qutebrowser

# User specific aliases and functions
alias bashrc="vim ~/.bashrc && source ~/.bashrc"
alias h='history'
alias j='jobs -l'

alias playavi='mplayer *.avi'
alias vlc='vlc *.avi'


alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'
alias wget='wget -c'

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

alias ll="ls -al"
alias ldir="ls -al | grep ^d"
alias tree="find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'"
