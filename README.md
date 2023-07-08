

**Attention:** This is for _personal use_ ony! Don't clone and don't use, unless...


Installation
============

Clone the repo:

```bash
    git clone https://github.com/adcosta/vimfiles.git ~/.vim
```

(Re)Install Plugins (not stored in repo, except Plug.vim):

    vim +PlugClean +PlugInstall +qall

    NOTE: Some plugins, like YCM, may require extra installation
          See https://github.com/ycm-core/YouCompleteMe#installation

Symlink .vimrc and .gvimrc to .vim/vimrc and .vim/gvimrc:

```bash
    mv ~/.vimrc ~/.vimrc.old
    ln -s ~/.vim/vimrc ~/.vimrc
    mv ~/.gvimrc ~/.gvimrc.old
    ln -s ~/.vim/gvimrc ~/.gvimrc
```

Check the charset settings of terminal for UTF-8:

```bash
    locale 

    export LANG=en_US.UTF-8
    export LC_ALL=en_US.UTF-8
    export EDITOR=vim

    locale
```

You may try to run a bash scipt to it all:

```bash
~/.vim/vim-setup.bash
```

 Links
 =====

  -  http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/
  -  https://github.com/robertmeta/vimfiles
  -  https://www.vi-improved.org
  -  https://github.com/junegunn/vim-plug

 Personal Notes
 ==============

 I was using Vundle to manage my vim plugins. But recently changed to "Plug".
 Not really sure if it was a good move!...

 Plug commands:  :PlugClean  :PlugInstall :PlugUpgrade
 Vundle commands:    :PluginInstall :PluginSearch ...

 Plug has no search feature integrated and will never have. Author does not see
 it as a feature (https://github.com/junegunn/vim-plug/issues/186)

 Search https://github.com/vim-scripts?tab=repositories


