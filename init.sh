#/bin/sh

x=`pwd`
echo 'this directory: '${x}
mkdir -p ~/.cache/dein/repos/github.com/Shougo/dein.vim
 git clone https://github.com/Shougo/dein.vim.git \
    ~/.cache/dein/repos/github.com/Shougo/dein.vim

echo 'link .vimrc'
ln -s ${x}/.vimrc $HOME/.vimrc
echo 'link .zshrc'
ln -s ${x}/.zshrc $HOME/.zshrc

echo 'link .gitignore_global'
ln -s ${x}/.gitignore_global $HOME/.gitignore_global

  git config --global core.excludesfile ~/.gitignore_global
