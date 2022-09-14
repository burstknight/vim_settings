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

Key				| Function
----------------|------------------------------------------------------------------
`<F2>`			| Open or close file explorer
`<F3>`			| Open or close tagbar
`Ctrl` + `<F7>`	| Open a new tab to show git commit history
`<F7>`			| Split a buffer to show git commit history
`<F5>`			| Use the command `make` to build C/C++ code for debug
`Ctrl` + `<F5>`	| Use the command `make` to build C/C++ code for release
`<F8>` 			| Use the command `:Dox` in the plugin `DoxygenToolkit.vim` to insert comments for functions or class in C/C++.
`<F9>`			| Show the document of the functions or classes
`<F10>`			| Open or close quickfix window for the plugin `asyncrun`

### Coc.nvim Setting
If you hope the plugin `coc.nvim` to support your C/C++ library or other libraries, you can use the command `:CocConfig` in vim to edit the configuration file. And then the plugin `coc.nvim` will use the configuration file to show hint for any functions, variables etc.

For example, a C library `myLib` is installed into the directory `/opt`. The content of the library `myLib` is:
```
myLib/
|----- includes/
|----- lib/
```

where the directory `includes` has all head files; the directory `lib` has all library files. You can edit the configuration file to make the plugin `coc.nvim` finding the include path for the library `myLib`.

Here is a example for the library `myLib`:
```json
{
	clangd.fallbackFlags: [
		"-I/opt/myLib/include"
	]
}
```

### Commands:
This table is shown useful commands:

Commands			| Function
--------------------|----------------------------------------------------------------
`:TemplateAutoInit`	| Load a template file to write the current file.
`:MarkdownPreview`	| Open a web browser to preview markdon file.
`:CocConfig` 		| Open the configuration file to edit for the plugin `coc.nvim`.
`:DoxLic` 			| Instert the doxygen-style comments for license at the location of the current edited code file.
`:DocAuthor` 		| Insert the doxygen-style comments for the author infomation at the location of the current edited code file.
`:DoxBlock` 		| Instert the doxygen-style comments for a group comments at the location of the current edited code file.
