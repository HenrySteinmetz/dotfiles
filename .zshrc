# Path to zsh folder
export ZSH=$HOME/.zsh/ 

# On shell start
source /usr/share/autojump/autojump.zsh

# Autostart
autoload -U promptinit; promptinit
autoload -U compinit && compinit

# Varaibles being exported
export MANPAGER="nvim -c 'set ft=man' -"
export BROWSER="brave"
export TERMINAL="alacritty"
export EDITOR="alacritty -e nvim"

# Aliases
alias conf="cd ~/.config"
alias ls="ls -a"
alias cc="cd && clear"
alias wbc="nvim ~/.config/waybar/config"
alias zc="nvim ~/.zshrc"
alias hc="nvim ~/.config/hypr/hyprland.conf"
alias alc="nvim ~/.config/alacritty/alacritty.yml"
alias down="cd ~/Downloads"
alias yayclean="yay -Rsnc $(yay -Qqdt)"

alias ls='exa'
alias l='exa -lbF --git'
alias ll='exa -lbGF --git'
alias llm='exa -lbGd --git --sort=modified'
alias la='exa -lbhHigUmuSa --time-style=long-iso --git --color-scale'
alias lx='exa -lbhHigUmuSa@ --time-style=long-iso --git --color-scale'
alias lS='exa -1'
alias lt='exa --tree --level=2'

# Prompt (starship-pure)
export PATH=/home/henry/.local/bin:$PATH fpath+=($HOME/.zsh/pure)
eval "$(starship init zsh)"

# Plugins 
source ~/.zsh/zsh-z/zsh-z.plugin.zsh
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

# History 
SAVEHIST=1000000 
HISTSIZE=1000000 
HISTFILE=~/.zsh_history 
HIST_STAMPS="dd/mm/yyyy" 

# Set Theme aliases and Varaibles
source /home/henry/Themes/aliases.zsh
