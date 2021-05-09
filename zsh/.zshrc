# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
#if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
#  source /usr/share/zsh/manjaro-zsh-prompt
#fi

#ZSH_AUTOSUGGEST_USE_ASYNC="true"
#ZSH_AUTOSUGGEST_CLEAR_WIDGETS+=(bracketed-paste accept-line)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=#808080,bold,underline"

if ! command -v antigen &> /dev/null
then
	# Add Antigen
	source ~/.antigen/antigen.zsh
	antigen use oh-my-zsh # Add Oh-My-ZSH as an API for plugins and theme
fi


antigen bundles <<EOBUNDLES
command-not-found
colored-man-pages
ssh-agent
extract
magic-enter
git
archlinux
zsh-users/zsh-completions
zsh-users/zsh-autosuggestions
zsh-users/zsh-syntax-highlighting
HeroCC/LS_COLORS
EOBUNDLES
antigen theme gnzh
antigen apply # Use it

autoload -Uz promptinit; promptinit

AGKOZAK_COLORS_BRANCH_STATUS=8

# Source all the configs
source ~/.zsh/history.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/aliases.zsh
source ~/.zsh/exports.zsh
if [ -e "$HOME/.zsh/local.zsh" ]; then # If local.zsh exists, source it
  source ~/.zsh/local.zsh
fi
