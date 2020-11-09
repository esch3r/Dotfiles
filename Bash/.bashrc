# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi


for DOTFILE in 'find /home/Sarsaparilla/dotfiles'
  do 
  [-f "$DOTFILE"] && source "$DOTFILE "
done


# set length of pwd shown on prompt 
export PROMPT_DIRTRIM=2


export PS1="\n\[\033[1;37m\]\342\224\214($(if [[ ${EUID} == 0 ]]; then echo '\[\033[01;31m\]\h'; else echo '\[\033[01;34m\]\u@\h'; fi)\[\033[1;37m\])\342\224\200(\[\033[1;34m\]\$?\[\033[1;37m\])\342\224\200(\[\033[1;34m\]\@ \d\[\033[1;37m\])\[\033[1;37m\]\342\224\200(\[\033[1;32m\]\w\[\033[1;37m\])\342\224\200(\[\033[1;32m\]\$(ls -1 | wc -l | sed 's: ::g') files, \$(ls -lah | grep -m 1 total | sed 's/total //')b\[\033[1;37m\])\n\342\224\224\342\206\222> \[\033[0m\]"

if [ -f `which powerline-daemon` ]; then
  powerline-daemon -q
  POWERLINE_BASH_CONTINUATION=1
  POWERLINE_BASH_SELECT=1
 . /usr/share/powerline/bash/powerline.sh
fi


# Cpp-run()  [filename] 
cpp-run() {
    echo "Compiling file..."
    g++ -o "$1" "$1.cpp"
    echo "Compiled! Enter input :D"
    ./"$1"
}

# export SYSTEMD_PAGER=


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


