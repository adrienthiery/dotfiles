#!/bin/zsh
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BACKUP_DIR=$DIR'/backup-'`date +"%Y%M%d%H%M%S"`'/'
DEST_DIR=~/
mkdir -p $BACKUP_DIR
echo "Backing up actual dotfiles in $BACKUP_DIR"

myDotfiles=(.*)
myDotfilesArray=(${myDotfiles// / })
for element in "${myDotfilesArray[@]}"
do
  if [ "$element" != ".git" ]; then
    echo "Backing up $element and replacing it"
    mv ${DEST_DIR}${element} ${BACKUP_DIR}
    cp -R ${element} ${DEST_DIR}
  fi
done

chsh -s /bin/zsh

echo "\nRestart your shell now"
