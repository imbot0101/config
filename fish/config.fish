if status is-interactive
    # Commands to run in interactive sessions can go here
end

# fish ------------------------------------------
set fish_greeting                     # 招呼语设置为空
# ----------------------------------------------- fish


# my_alias --------------------------------------
abbr py python3
abbr ll ls -al
abbr mk make
abbr val valgrind -s --track-origins=yes
abbr rm rm -ir
abbr gs git status
abbr ga git add
abbr gb git branch
abbr gd git commit
abbr gd git diff
abbr go git checkout
abbr gk gitk --all&
abbr gx gitx --all

alias vim=/mnt/a/application/app3_code/Vim/vim91/vim.exe
# ------------------------------------------------ my_alias


# my_etc -----------------------------------------
export LANG=zh_CN.UTF-8
export EDITOR=vim


# export PATH="$HOME/.pyenv/bin:$PATH"
# eval "$(pyenv init --path)"
# eval "$(pyenv virtualenv-init -)"
# ------------------------------------------------- my_etc
