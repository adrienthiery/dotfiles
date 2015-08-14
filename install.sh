#!/bin/zsh
DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
BACKUP_DIR=$DIR'/backup-'`date +"%Y%M%d%H%M%S"`'/'
mkdir -p $BACKUP_DIR
echo "Backing up actual dotfiles in $BACKUP_DIR"

myDotfiles=(.*)
myHomeDirDotfiles=${myDotfiles/\./~\/\.}

mv $myHomeDirDotfiles $BACKUP_DIR/
cp $myDotfiles ~/

echo "Restart your shell now"
