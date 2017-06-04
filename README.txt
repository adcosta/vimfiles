CHANGES
-------

O gestor de plugins do Vim que estou a usar agora é o Plug. Antes usava o Vundle.
Deve bastar pores o nome do plugin no .vimrc e de seguida fazer :PlugInstall

Modifiquei o meu plugin manager para usar o Plug, mas não sei se foi boa ideia.
Antes usava o Vundle que até tinha uma função fixe que era :PluginSearch para 
pesquisar vim PlugIns. E agora não há disso no Plug. Nem vai haver:

   ..... junegunn commented on Mar 3, 2015
   ..... No, the feature has never been a consideration.
   .....  Vundle can only find plugins that are published to vim.org and mirrored 
   .....  on https://github.com/vim-scripts. So you can just use your browser to 
   .....  search for plugins like Vundle from this page: 
   .....         https://github.com/vim-scripts?tab=repositories. 
   .....  However, note that the list is far from complete since a lot of recent 
   .....  vim plugins (including many of mine) are not even published to vim.org.


No Vundle era assim:
	Para instalar usar  :PluinInstall
	Para atualizar usar :PluginUdate
	Para procurar novos :PluginSearch
	Listar os instalados :PluginList

