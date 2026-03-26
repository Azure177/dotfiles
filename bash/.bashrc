#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# PS1='[\u@\h \W]\$ '

bold_green='\[\e[1;32m\]'
end_color='\[\e[m\]'

PS1="$bold_green[\w]\$ $end_color"

set -o vi

# ===Aliases===
alias vi='nvim'
alias c='clear'
alias ls='ls --color=auto -p'
alias grep='grep --color=auto'
alias vi_niri='vi ~/.config/niri'
alias vlc='org.videolan.VLC'
alias analog-stereo='pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:analog-stereo'
alias hdmi-stereo='pactl set-card-profile alsa_card.pci-0000_00_1f.3 output:hdmi-stereo'

# ===Exports===
export OLLAMA_OFFLINE=true
export MANPAGER='nvim +Man!'
export PATH="$HOME/.local/bin:$PATH"
# For BLUEJ to work with wayland-satellite
export _JAVA_AWT_WM_NONREPARENTING=1
