# Change Log

## [Unrelease]
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

### Changed
- Update the template for git-commit command.

### Fixed
- Fix the bug that the shell file cannot install cmake.
- Fix the bug that the vimrc cannot set the update time for the plugin "vim-gitgutter".
- Fix the bug that plugin "YouCompleteMe" cannot work because the contents of the file ".ycm_extra_conf.py" is wrong.

### Removed
