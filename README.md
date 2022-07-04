# vim_settings
This project can setup vim.

## Setup
You can follow these steps to use this project to setup vim configuration.
1. Run the shell script `setup.sh` to setup the configuration for vim.
	```sh
	sh setup.sh
	```

2. Generate the file `compile_includes.data` for the vim plugin `YouCompleteMe`.
	- Use the command `pkg-config --cflags <Lib_Name> | sed 's/ /\n/g'`, where `<Lib_Name>` is that you want to use library. For example, if I want to use the `gtk+-3.0` and `opencv` to develop a program, I can use these commands:
	```sh
	pkg-config --cflags gtk+-3.0 | sed 's/ /\n/g' >> compile_includes.data
	pkg-config --cflags opencv | sed 's/ /\n/g' >> compile_includes.data
	```
	- If you finish generate the file `compile_includes.data` for your requirement, you can move this file into `~/.vim/bundle/YouCompleteMe/`.
	```sh
	mv compile_includes.data ~/.vim/bundle/YouCompleteMe/
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
`<F10>`			| Open or close quickfix window for the plugin `asyncrun`

### Commands:
This table is shown useful commands:

Commands			| Function
--------------------|----------------------------------------------------------------
`:TemplateAutoInit`	| Load a template file to write the current file.
`:MarkdownPreview`	| Open a web browser to preview markdon file.
