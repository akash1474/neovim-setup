## NeoVim WSL Installation and Setup for Windows

>Requirements

* Download and install neovim for windows
* --nvim-- must be working in __Command Prompt__
* Download [*vim-plug*](https://github.com/junegunn/vim-plug) which is a package manager
* create a plugged folder where the plugins will be stored

>Shortcut
    Just clone the repo in __C:\Users\UserName\AppData\Local__ and add a plugged folder in the nvim directory
    Open the neovim and type :PlugInstall

**Installing the clangd server neovim**

    Download and install [clang](https://github.com/llvm/llvm-project)

    $ CocInstall coc-clangd

    $ sudo apt install neovim

**Navigating to neovim directory** 

    $ cd ~/.config/nvim

**Creating a autoload folder in nvim folder**

    $ mkdir autoload
**Editing the init.vim file** 

    $ nvim init.vim
This will open the **neovim** editor in the terminal

*****Alternative**
* Copy and paste the init.vim from repository folder
* Open neovim and then type
  ```
    :PlugInstall
  ```
  This should install all the plugins


## You are good to go!!!

Refer to this video if any issues
[Full Tutorial](https://www.youtube.com/watch?v=ZEFXeRIFvN0&t=1689s)

