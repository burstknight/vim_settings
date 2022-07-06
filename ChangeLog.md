# Change Log

## [Unrelease]
### Added
- Add the plugin `asyncrun` to use the command `make` to build C/C++ code in async mode.
- Add the template for the command `pkg-config`.
- Replace the plugin `YouCompleteMe` with `coc.nvim` to complete code.
- Add language server into `coc.nvim` to support markdown file.
- Set the new function that the plugin `coc.nvim` can use `Enter` key to complete code.

### Changed

### Fixed
- Update the makefile template for the build error that the directory `bin` would not create.
- Update `setup.sh` to fix the bug that the plugin `coc.nvim` need more depenent packages.
- Update `setup.sh` to fix the bug that the plugin `markdown-preview.nvim` could not work because some dependent packages are conflict between this plugin and `coc.vim`.

### Removed

---------------------------
## [1.0.0] - 2022/06/27
### Added
- Add a template file for git-commit command.
- Add vimrc to load the plugin "vundle" and set base configuration.
- Add plugin "NERDTree" to show file expolor in vim.
- Add plugin "tagbar" to show the tags in vim for C/C++ code files.
- Add the plugin "YouCompleteMe" to help to edit code files.
- Add shell file to use this project to setup vim.
- Add plugins "vim-flog" and "vim-fugitive" to show git log graph in vim.
- Add plugin "vim-gitgutter" to show the change status for the editing file.
- Add flags into ".ycm_extra_conf.py" to include the lib "gtk+-2.0".
- Add a shortcut to show the changed history of a file.
- Set the config of the plugin "YouCompleteMe" to easily write code.
- Add the plugin "vim-templates" to load template files to help to write code files.
- Add the plugin "markdown-preview.nvim" to preview markdown file via web browser.
- Add the file `git_commit_template` for git commit template.
- Update `setup.sh` to check if the vim plugin manager `Vundle` exists, and then determine to download it or not.
- Update `setup.sh` to set git commit template.
- Add `.gitignore` template file.

### Changed
- Update the template for git-commit command.
- Update the file `.ycm_extra_conf.py` to load a file to set compile flags.
- Update the makefile template to support .cpp and .c files.
- Update the makefile template to reduce command that is to create the directory "bin".
- Modify the insert shortcut "{}" to add a new line.

### Fixed
- Fix the bug that the shell file cannot install cmake.
- Fix the bug that the vimrc cannot set the update time for the plugin "vim-gitgutter".
- Fix the bug that plugin "YouCompleteMe" cannot work because the contents of the file ".ycm_extra_conf.py" is wrong.
- Fix the bug that ".ycm_extra_conf.py" would crash because the code file could not find the file "compile_includes.data".
- Fix the bug that the shell file `setup.sh` could not install the package `cscope` because the install command was wrong.

### Removed
- Remove useless file `.git_commit_template` because the template file exists in the directory `templates`.
