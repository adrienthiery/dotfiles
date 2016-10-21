#!/bin/zsh
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BACKUP_DIR=$DIR'/backup-'`date +"%Y%M%d%H%M%S"`'/'
DEST_DIR=~/
mkdir -p $BACKUP_DIR
echo "Backing up actual dotfiles in $BACKUP_DIR"

sudo apt-get install zsh vim htop tree git
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
git clone https://github.com/bhilburn/powerlevel9k.git ~/.oh-my-zsh/custom/themes/powerlevel9k
git clone git@github.com:powerline/fonts.git ~/.dotfiles/fonts && cd ~/.dotfiles/fonts && ./install.sh && cd  -

myDotfiles=(.*)
myDotfilesArray=(${myDotfiles// / })
for element in "${myDotfilesArray[@]}"
do
  if [[ "$element" != ".git" && "$element" != ".gitignore" ]]; then
    echo "Backing up $element and replacing it"
    mv ${DEST_DIR}${element} ${BACKUP_DIR}
    cp -R ${element} ${DEST_DIR}
  fi
done

if [ "$SHELL" != "/bin/zsh" ]; then
  echo "\nSetting zsh as default terminal"
  chsh -s /bin/zsh
fi

echo "Installing Vundle"
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "\nRestart your shell now"
