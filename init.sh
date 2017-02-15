#/bin/sh

x=`pwd`
echo 'this directory: '${x}

echo 'link .vimrc'
ln -s ${x}/.vimrc $HOME/.vimrc
echo 'link .zshrc'
ln -s ${x}/.zshrc $HOME/.zshrc

echo 'link .gitignore_global'
ln -s ${x}/.gitignore_global $HOME/.gitignore_global
