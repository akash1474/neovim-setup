## NeoVim WSL Installation and Setup for Windows

>Requirements

* Download and install neovim for windows
* --nvim-- must be working in __Command Prompt__

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

