
# The following lines were added by compinstall
zstyle :compinstall filename '/home/tylerdurden/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install


export HISTTIMEFORMAT="[%F %T] "
bindkey '^O' up-line-or-search
bindkey '^I' down-line-or-searc
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"
setopt INTERACTIVE_COMMENTS
setopt MAGIC_EQUAL_SUBST
[[  -f /usr/share/fzf/completion.zsh  ]] && source /usr/share/fzf/completion.zsh;
[[  -f /usr/share/fzf/key-bindings.zsh  ]] && source /usr/share/fzf/key-bindings.zsh;

[[ -f $HOME/.aliases_base  ]] && source $HOME/.aliases_base
[[  -f $HOME/.exports  ]] && source $HOME/.exports
[[  -f $HOME/.bash-functions  ]] && source $HOME/.bash-functions
[[ ! -d ~/.config/tmux/plugins/tpm ]] && git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

eval "$(starship init zsh)"


