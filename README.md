# vim_settings
This project can setup vim.

## Requirements
The plugin `coc.nvim` need the requirements:
- `vim`: `>= 8.2` (run `:version` in vim or `vim --version` to check the version)
- `node`: `>= 12.12`

If the version of your vim is older, you can use bellow commands to upgrade vim:
```bash
sudo add-apt-repository ppa:jonathonf/vim
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install vim
```

## Setup
You can follow these steps to use this project to setup vim configuration.
1. Run the shell script `setup.sh` to setup the configuration for vim.
	```sh
	sh setup.sh
	```

## Usage
### Shortcuts
My shortcuts are defined:

Key					| Function
--------------------|------------------------------------------------------------------
`<F2>`				| Open or close file explorer
`<F3>`				| Open or close tagbar
`Ctrl` + `<F7>`		| Open a new tab to show git commit history
`<F7>`				| Split a buffer to show git commit history
`<F5>`				| Use the command `make` to build C/C++ code for debug
`Ctrl` + `<F5>`		| Use the command `make` to build C/C++ code for release
`<F8>` 				| Use the command `:Dox` in the plugin `DoxygenToolkit.vim` to insert comments for functions or class in C/C++.
`<F9>`				| Show the document of the functions or classes
`<F10>`				| Open or close quickfix window for the plugin `asyncrun`
`<Leader>` + `ff` 	| Use the command `:CtrlPFunky` to fuzzy search function names in the current edited cod file.
`<Leader>` + `ci` 	| Complete for coc settings file `coc-settings.json`.
`Ctrl` + `p` 		| Use the command `:CtrlP` to fuzzy search files.
`<Leader>` + `gd` 	| Go to function definition.
`<Leader>` + `gt` 	| Go to variable type definition.
`<Leader>` + `gi` 	| Go to the implementation for variable or function.
`<Leader>` + `gr` 	| Go to referecnes for variable or function.
`<Leader>` + `rn` 	| Rename the symbol (fucntion or variable).
`<Leader>` + `ti` 	| Call the command `:TemplateAutoInit` to load a template file to write the current file.
`<Leader>` + `mp` 	| Call the command `:MarkdownPreview` to open a web browser to preview markdown file.

### Commands:
This table is shown useful commands:

Commands			| Function
--------------------|----------------------------------------------------------------
`:DoxLic` 			| Instert the doxygen-style comments for license at the location of the current edited code file.
`:DocAuthor` 		| Insert the doxygen-style comments for the author infomation at the location of the current edited code file.
`:DoxBlock` 		| Instert the doxygen-style comments for a group comments at the location of the current edited code file.

## FAQ
### `cmake-language-server` cannot work
If `cmake-language-server` cannot work, you can add these commands into `~/.vimrc` to store the log files.
```vim
let g:lsp_log_verbose = 1
let g:lsp_log_file = expand('~/vim-lsp.log')

" for asyncomplete.vim log
let g:asyncomplete_log_file = expand('~/asyncomplete.log')
```

Maybe the log file will show the error:
```
Traceback (most recent call last):
  File "/home/frank/.local/bin/cmake-language-server", line 5, in <module>
    from cmake_language_server.server import main
  File "/home/frank/.local/lib/python3.10/site-packages/cmake_language_server/server.py", line 8, in <module>
    from lsprotocol.types import (
  File "/home/frank/.local/lib/python3.10/site-packages/lsprotocol/types.py", line 14, in <module>
    import attrs
ModuleNotFoundError: No module named 'attrs'
```

You can referece [this issue](https://github.com/regen100/cmake-language-server/issues/74) to run the command to fix this error.
```bash
pip3 install --user --upgrade attrs
```

