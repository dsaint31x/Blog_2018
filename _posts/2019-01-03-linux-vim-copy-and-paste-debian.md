---
title: [linux] vim: Unable to copy & paste b/w terminal on the Debian9 (Stretch)
categories: linux
last_modified_at: 2019-01-03 22:51:00
use_math: false
tags: Debian;vim
toc: true
---

vim으로 텍스트 파일 등을 열고 마우스로 특정 영역을 선택후,  해당 내용을 다른 terminal로 copy & paste를 시도함.

문제는 Debian 9 (vim 8.0)에서 안되더라는.... --;;

해결책은 다음과 같음.

다음을 실행.

```
sudo touch /etc/vim/vimrc.local
```

그리고 나서, 해당 파일을 아래와 같이 작성함.

```
" This file loads the default vim options at the beginning and prevents
" that they are being loaded again later. All other options that will be set,
" are added, or overwrite the default settings. Add as many options as you
" whish at the end of this file.

" Load the defaults
source /usr/share/vim/vim80/defaults.vim

" Prevent the defaults from being loaded again later, if the user doesn't
" have a local vimrc (~/.vimrc)
let skip_defaults_vim = 1


" Set more options (overwrites settings from
" /usr/share/vim/vim80/defaults.vim)
" Add as many options as you whish

" Set the mouse mode to 'r'
if has('mouse')
   set mouse=r
endif
```

