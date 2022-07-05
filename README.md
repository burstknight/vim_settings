# vim_settings
This project can setup vim.

## Requirements
The plugin `coc.nvim` need the requirements:
- `vim`: `>= 8.0.1453` (run `:version` in vim or `vim --version` to check the version)
- `node`: `>= 12.12`


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
`<F9>`			| Show the document of the functions or classes
`<F10>`			| Open or close quickfix window for the plugin `asyncrun`

### Commands:
This table is shown useful commands:

Commands			| Function
--------------------|----------------------------------------------------------------
`:TemplateAutoInit`	| Load a template file to write the current file.
`:MarkdownPreview`	| Open a web browser to preview markdon file.
