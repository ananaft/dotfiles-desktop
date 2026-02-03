# ssh setup
eval $(keychain --quiet --eval ~/.ssh/id_rsa ~/.ssh/id_ed25519) 

# source global shell alias & variables files
[ -f "$XDG_CONFIG_HOME/shell/alias" ] && source "$XDG_CONFIG_HOME/shell/alias"
[ -f "$XDG_CONFIG_HOME/shell/vars" ] && source "$XDG_CONFIG_HOME/shell/vars"

# load modules
zmodload zsh/complist
autoload -U compinit && compinit
autoload -U colors && colors

# cmp opts
zstyle ':completion:*' menu select # tab opens cmp menu
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS} ma=0\;33 # colorize cmp menu
bindkey -M menuselect '^[[Z' reverse-menu-complete

# main opts
setopt append_history inc_append_history share_history # better history
# on exit, history appends rather than overwrites; history is appended as soon as cmds executed; history shared across sessions
setopt auto_menu menu_complete # autocmp first menu match
setopt autocd # type a dir to cd
setopt auto_param_slash # when a dir is completed, add a / instead of a trailing space
setopt no_case_glob no_case_match # make cmp case insensitive
setopt globdots # include dotfiles
setopt extended_glob # match ~ # ^
setopt ksh_arrays # use bash array indexing

# fzf setup
source <(fzf --zsh)
bindkey "^r" fzf-history-widget
bindkey "^j" history-search-forward
bindkey "^k" history-search-backward

# easier command editing
bindkey "^[[1;5D" backward-word # control + left
bindkey "^[[1;5C" forward-word # control + right
bindkey "^[[3~" delete-char # delete

# history opts
HISTSIZE=1000000
SAVEHIST=1000000
HISTFILE="$XDG_CACHE_HOME/zsh_history" # move histfile to cache
HISTCONTROL=ignoreboth # consecutive duplicates & commands starting with space are not saved

# prompt
NEWLINE=$'\n'
if [[ "$DESKTOP_SESSION" == 'hyprland' ]]; then
	PROMPT="${NEWLINE}%K{#2c6d37}%F{#78A65A} %n %K{#003f74}%F{#cbd4c1} %~ %f%k ❯ "
	# remove percent at line end
	PROMPT_EOL_MARK=''
elif [[ "$DESKTOP_SESSION" == 'awesome' ]]; then
	PROMPT="${NEWLINE}%K{#374eab}%F{#d6a2cb} %n %K{#2c316a}%F{#f4d760} %~ %f%k ❯ "
fi
