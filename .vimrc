" ===============================================================================
" vim 基本符號的補齊以 "()" 為例，在insert-mode下，先輸入 "(" ，vim就會先輸入"()"
" ，然後自動使用ESC鍵離開insert-mode，然後又進入insert-mode，就會發現游標在()中間
" ===============================================================================
inoremap ( ()<ESC>i
inoremap " ""<ESC>i
inoremap ' ''<ESC>i
inoremap [ []<ESC>i
inoremap << <><ESC>i
inoremap {<CR> {<CR>}<ESC>ko<TAB>
inoremap {{ {}<ESC>i

" ===============================================================================
" 載入vim外掛
" ===============================================================================
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" 這兩個外掛用來修改vim狀態列的樣式
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" 這個外掛是一個檔案總管
Plugin 'preservim/nerdtree'

" 這個外掛可以顯示對齊參考線
Plugin 'Yggdroot/indentLine'

" 這個外掛可以在 nerdtree中顯示每個檔案的git狀態
Plugin 'Xuyuanp/nerdtree-git-plugin'

call vundle#end()
filetype plugin indent on

" ===============================================================================
" vim 基本設定
" ===============================================================================
set nu 				" 顯示行數
set cursorline 		" 游標所在的那一行會有底線
set tabstop=4		" 設定tab鍵產生4格空白字元的寬度
set shiftwidth=4	" 設定自動縮排的對齊寬度為4格
set mouse=a			" 啟用用滑鼠選取文字
set ai				" 自動對齊縮排
set ruler			" 顯示游標的位置與目前開啟的文件位置
syntax on			" 啟動語法highlight，可以讓每種程式語言的關鍵字用特殊顏色凸顯出來
set encoding=utf-8	" 設定儲存的編碼為utf-8
autocmd FileType make setlocal noexpandtab	" 當編寫Makefile時，取消expandtab設定(Makefile需區分tab與空白鍵)
set cindent 		" 使用C/C++語言自動縮排方式
set smartindent		" 智能縮排
set completeopt=longest,menu	" 智能補全
set backspace=2					" 設定在插入模式下可以使用Backspace鍵刪除文字

" ===============================================================================
" 設定NERDTree
" ===============================================================================
let NERDTreeShowHidden=1	" 在NERDTree顯示隱藏檔
let NERDTreeMouseMode=3 " 允許使用滑鼠點擊nerdtree中的檔案和資料夾

" ===============================================================================
" 設定快捷鍵
" ===============================================================================
nmap <F2> :NERDTreeToggle<CR>
