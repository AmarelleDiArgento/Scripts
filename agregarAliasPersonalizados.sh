#!/bin/bash

echo "Adicionando alias personalizados para bash y zsh"
python editVarsEnv.py
sed 's?DIRECCIONDESCRIPTS?'`pwd`/alias.md'?' alias.md > alias_bk
cat ~/.bashrc alias_bk > .bashrc
sed -i 's/bash/zsh/' alias_bk
cat ~/.zshrc alias_bk > .zshrc
sed -i 's/zsh/bash/' alias_bk

cp .zshrc ~/.zshrc
cp .bashrc ~/.bashrc
find . -type f -name "*bk*" -exec rm -rf {} \;