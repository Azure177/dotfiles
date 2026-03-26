#
# ~/.bash_profile
#

if [[ "$(tty)" == "/dev/tty1" ]];then
    exec niri-session -l
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
