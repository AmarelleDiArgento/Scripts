#!/bin/bash
WD=$PWD
echo "Adicionando alias personalizados para bash y zsh"
DIR=/home/freya/.Scripts/
cd $DIR

python clearVarsEnv.py
sed 's?DIRECCIONDESCRIPTS?'`cat ~/.pwd_local`'?' alias.md > alias_bk
cat ~/.bashrc alias_bk > .bashrc_bk
sed -i 's/bash/zsh/' alias_bk
cat ~/.zshrc alias_bk > .zshrc_bk
sed -i 's/zsh/bash/' alias_bk

cp .zshrc_bk ~/.zshrc
cp .bashrc_bk ~/.bashrc
find . -type f -name "*bk*" -exec rm -rf {} \;

cd $WD