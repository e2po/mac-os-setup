eval $(/opt/homebrew/bin/brew shellenv)

export ZSH="$HOME/.oh-my-zsh"
export ZPLUG_HOME=$HOMEBREW_PREFIX/opt/zplug
export GIT_SSH_COMMAND="gironde ssh"

source $ZSH/oh-my-zsh.sh
source $ZPLUG_HOME/init.zsh

zplug plugins/git, from:oh-my-zsh
zplug dracula/zsh, as:theme
zplug romkatv/powerlevel10k, as:theme,      dept:1
zplug zsh-users/zsh-completions,            defer:0
zplug zsh-users/zsh-autosuggestions,        defer:2, on:zsh-users/zsh-completions
zplug zsh-users/zsh-syntax-highlighting,    defer:3, on:zsh-autosuggestions

if ! zplug check; then
    zplug install
fi

zplug load

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
