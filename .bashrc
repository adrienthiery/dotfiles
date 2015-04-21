#PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$'
MonPrompt='${PWD//\/\\\}>'
alias C:='PS1=$MonPrompt ; echo "C: n existe pas sous linux";'
alias c:='PS1=$MonPrompt ; echo "C: n existe pas sous linux";'
alias D:='PS1=$MonPrompt ; echo "D: n existe pas sous linux";'
alias d:='PS1=$MonPrompt ; echo "D: n existe pas sous linux";'

alias add='echo "sudo add-apt-repository";sudo add-apt-repository '
alias ppa='echo "sudo add-apt-repository";sudo add-apt-repository '
alias add-remove='sudo add-apt-repository --remove"; sudo add-apt-repository --remove '
alias ppa-remove='sudo add-apt-repository --remove"; sudo add-apt-repository --remove '

alias reboot='echo "sudo reboot"; sudo reboot'
alias update='echo "sudo apt-get update"; sudo apt-get update'
alias install='echo "sudo apt-get install"; sudo apt-get install'
alias upgrade='echo "*** sudo apt-get; sudo apt-get dist-upgrade"; sudo apt-get update; sudo apt-get dist-upgrade; echo "Terminée"'
alias dist-upgrade='echo "*** sudo apt-get; sudo apt-get dist-upgrade"; sudo apt-get update; sudo apt-get dist-upgrade; echo "Terminée"'

alias autoremove='echo "sudo apt-get autoremove --purge"; sudo apt-get autoremove --purge'

alias remove='echo "sudo apt-get autoremove --purge"; sudo apt-get autoremove --purge'

alias dir='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► ls -alF (pas de /w sous linux)"; ls -Fal'
alias ren='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► mv"; mv '
alias rename='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► mv"; mv '
alias move='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► mv"; mv '
alias copy='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► cp"; cp '
alias xcopy='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► cp -r"; cp -r '
alias del='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► rm"; rm '
alias mem='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► free essayez la commande top"; free'
alias ver='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► uname & lsb_release -a";lsb_release -a; uname -a'
alias chdir='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► pwd"; pwd'
alias edit='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► nano"; nano'
alias md='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► mkdir"; mkdir'
alias rd='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► rm -r"; rm -r'
alias deltree='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► rm -r"; rm -r'
alias attrib='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► chmod"; chmod'
alias format='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► mformat"; mformat'
alias type='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► cat"; cat'
alias chkdsk='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► dosfsck"; dosfsck'
alias autoexec.bat='echo "*Ceci est une commande MS-DOS* sous linux voir le dossier" $HOME"/.config/autostart et /etc/xdg/autostart";ls $HOME/.config/autostart ; ls /etc/xdg/autostart/'
alias cls='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► clear"; clear'
alias quit='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "► exit"; exit'
alias config.sys='tput setaf 3;echo "► Commande MS-DOS équivalence linux";tput sgr0 ;echo "►  /etc/init.d/"; ls /etc/init.d/'
alias pause='tput setaf 1;echo "Pressez la touche Entrer pour continuer";tput sgr0;read pause'

alias list='clear; 
echo "";
echo "";
echo "";
echo "En + de toutes les commandes Linux ubuntu ";
echo "Ce terminal supporte quelques commandes DOS/MS-DOS";
echo "";
echo "dir ren rename move copy xcopy mem chdir edit ver cd md rd del deltree attrib chkdsk cls type quit autoexec.bat ";
echo " ";
echo " ";
echo "ainsi que mc pour ouvrir un équivalant de Norton commander"
echo " ";'


function name()
{
  grep -i "$1" /etc/passwd | cut -d: -f5 | sort
}

function rights()
{
  r=$(echo "$1" | sed 's/[^rwx]//g')
  if [ ! "$r" ]
  then
    echo "Usage rights r|w|x <user>"
    exit 1
  fi

  shif "$r"
  shift
  setfacl -Rm u:$2:$r $@
}

tgz() {
  if [ ! -d "$1" ]
  then
    echo "Usage: $0 <folder>"
    exit 1
  fi

  tar -cvf - "$1" | gzip >$(basename "$1")".tar.gz"
}

untgz() {
  if [ ! -f "$1" ]
  then
    echo "Usage: $0 <file>"
    exit 1
  fi

  gunzip < "$1" | tar -xvf -
}

TERM=xterm-256color

# UTF-8 for logs
export LANG="en_US.UTF-8"


#[ -f $HOME/partage/bin/zsh ] && exec $HOME/partage/bin/zsh -l
# Reset
Color_Off="\[\033[0m\]"       # Text Reset

# Regular Colors
Black="\[\033[0;30m\]"        # Black
Red="\[\033[0;31m\]"          # Red
Green="\[\033[0;32m\]"        # Green
Yellow="\[\033[0;33m\]"       # Yellow
Blue="\[\033[0;34m\]"         # Blue
Purple="\[\033[0;35m\]"       # Purple
Cyan="\[\033[0;36m\]"         # Cyan
White="\[\033[0;37m\]"        # White

# Bold
BBlack="\[\033[1;30m\]"       # Black
BRed="\[\033[1;31m\]"         # Red
BGreen="\[\033[1;32m\]"       # Green
BYellow="\[\033[1;33m\]"      # Yellow
BBlue="\[\033[1;34m\]"        # Blue
BPurple="\[\033[1;35m\]"      # Purple
BCyan="\[\033[1;36m\]"        # Cyan
BWhite="\[\033[1;37m\]"       # White

# Underline
UBlack="\[\033[4;30m\]"       # Black
URed="\[\033[4;31m\]"         # Red
UGreen="\[\033[4;32m\]"       # Green
UYellow="\[\033[4;33m\]"      # Yellow
UBlue="\[\033[4;34m\]"        # Blue
UPurple="\[\033[4;35m\]"      # Purple
UCyan="\[\033[4;36m\]"        # Cyan
UWhite="\[\033[4;37m\]"       # White

# Background
On_Black="\[\033[40m\]"       # Black
On_Red="\[\033[41m\]"         # Red
On_Green="\[\033[42m\]"       # Green
On_Yellow="\[\033[43m\]"      # Yellow
On_Blue="\[\033[44m\]"        # Blue
On_Purple="\[\033[45m\]"      # Purple
On_Cyan="\[\033[46m\]"        # Cyan
On_White="\[\033[47m\]"       # White

# High Intensty
IBlack="\[\033[0;90m\]"       # Black
IRed="\[\033[0;91m\]"         # Red
IGreen="\[\033[0;92m\]"       # Green
IYellow="\[\033[0;93m\]"      # Yellow
IBlue="\[\033[0;94m\]"        # Blue
IPurple="\[\033[0;95m\]"      # Purple
ICyan="\[\033[0;96m\]"        # Cyan
IWhite="\[\033[0;97m\]"       # White

# Bold High Intensty
BIBlack="\[\033[1;90m\]"      # Black
BIRed="\[\033[1;91m\]"        # Red
BIGreen="\[\033[1;92m\]"      # Green
BIYellow="\[\033[1;93m\]"     # Yellow
BIBlue="\[\033[1;94m\]"       # Blue
BIPurple="\[\033[1;95m\]"     # Purple
BICyan="\[\033[1;96m\]"       # Cyan
BIWhite="\[\033[1;97m\]"      # White

# High Intensty backgrounds
On_IBlack="\[\033[0;100m\]"   # Black
On_IRed="\[\033[0;101m\]"     # Red
On_IGreen="\[\033[0;102m\]"   # Green
On_IYellow="\[\033[0;103m\]"  # Yellow
On_IBlue="\[\033[0;104m\]"    # Blue
On_IPurple="\[\033[10;95m\]"  # Purple
On_ICyan="\[\033[0;106m\]"    # Cyan
On_IWhite="\[\033[0;107m\]"   # White

# Various variables you might want for your PS1 prompt instead
Time12h="\T"
Time12a="\@"
PathShort="\W"
PathFull="\w"
NewLine="\n"
Jobs="\j"


# This PS1 snippet was adopted from code for MAC/BSD I saw from: http://allancraig.net/index.php?option=com_content&view=article&id=108:ps1-export-command-for-git&catid=45:general&Itemid=96
# I tweaked it to work on UBUNTU 11.04 & 11.10 plus made it mo' better

export PS1=$IBlack$Time12h$Color_Off'$(git branch &>/dev/null;\
  if [ $? -eq 0 ]; then \
    echo "$(echo `git status` | grep "nothing to commit" > /dev/null 2>&1; \
    if [ "$?" -eq "0" ]; then \
      # @4 - Clean repository - nothing to commit
echo "'$Yellow' "$(git branch | grep ^*|sed s/\*\ //):"'$Green'"✓; \
else \
  # @5 - Changes to working tree
echo "'$Yellow' "$(git branch | grep ^*|sed s/\*\ //):"'$IRed'"✗; \
fi) '$BPurple$PathShort$Color_Off'\$ "; \
          else \
            # @2 - Prompt when not in GIT repo
echo " '$Purple$PathShort$Color_Off'\$ "; \
fi)'
