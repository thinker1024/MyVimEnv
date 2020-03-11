MyVimEnv
======
My vim configuration using Vundle.

Vundle is short for Vim bundle and is a Vim plugin manager.

Configure Guide
----
1. Set up Vundle. 

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

2. Copy the file named .vimrc to home directory.

`$ git clone https://github.com/logself1988/MyVimEnv.git && cp MyVimEnv/.vimrc ~/ && rm -rf MyVimEnv`

3. Install Plugins.

Launch `vim` and run `:PluginInstall`.

For C/C++
----
1. Install Ctags.

`$ sudo apt install exuberant-ctags`

2. Install Cscope.

`$ sudo apt install cscope`

