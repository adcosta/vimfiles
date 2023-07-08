#!/bin/bash
#
user=`whoami`
folder="${HOME}/.vim"
vimrc="${HOME}/.vimrc"
gvimrc="${HOME}/.gvimrc"
new_vimrc="${folder}/vimrc"
new_gvimrc="${folder}/gvimrc"

# -------------------------------------------------------
echo "1. Check if Running as a normal user with HOME dir"
if [ -z ${HOME} ]; then
    echo "A: Apparently no: HOME not set! Terminating here."
    exit -1
fi
echo "A: Apparently yes: HOME is $HOME for user $user "

# -------------------------------------------------------
echo "2. Check if $HOME/.vim already exists "

if [ -d ${folder} ]; then
    echo "A: Yes, vim folder $folder already exists... do it manually"
    exit -1
fi
echo "A: No, vim folder $folder doesn"t exist. Let"s clone it"
git clone https://github.com/adcosta/vimfiles.git $folder

# -------------------------------------------------------
echo "3. Linking .vimrc and .gvimrc to the new ones"
mv ${vimrc} ${vimrc}.old
mv ${gvimrc} ${igvimrc}.old
ln -s ${new_vimrc} ${vimrc}
ln -s ${new_gvimrc} ${gvimrc}


# -------------------------------------------------------
echo "4. Install VIM plugins "
vim +PlugClean +PlugInstall +qall

# -------------------------------------------------------
echo "5. Please check if ytour local uses UTF-8"
echo "A: Expected valures are"
echo "   export LANG=en_US.UTF-8"
echo "   export LC_ALL=en_US.UTF-8"
echo "   export EDITOR=vim"
echo "Locale:"
locale 
exit 0

