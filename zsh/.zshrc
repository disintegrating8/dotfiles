eval "$(starship init zsh)"
export EDITOR="nvim"
export SUDO_EDITOR="$EDITOR"

export PATH=$PATH:/usr/local/go/bin

plugins=(
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

fastfetch -c $HOME/.config/fastfetch/config-compact.jsonc

# aliases for multiple directory listing commands
alias bl='brew list'
alias bi='brew install'
alias bic='brew install --cask'
alias bs='brew search'
alias br='brew remove'
alias bu='brew update && brew upgrade'
alias ff='fastfetch'
alias rt='yabai --restart-service && skhd --restart-service && brew services restart sketchybar && brew services restart borders'

# Automatically do an ls after each cd, z, or zoxide
cd ()
{
	if [ -n "$1" ]; then
		builtin cd "$@" && ls
	else
		builtin cd ~ && ls
	fi
}

HISTFILE=~/.history
HISTSIZE=10000
SAVEHIST=50000

setopt inc_append_history

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

[ -f /opt/homebrew/etc/profile.d/autojump.sh ] && . /opt/homebrew/etc/profile.d/autojump.sh
