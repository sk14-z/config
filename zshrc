export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim
export GDK_SCALE=2
export GDK_DPI_SCALE=0.5

source $ZSH/oh-my-zsh.sh

autoload -U promptinit; promptinit
prompt typewritten
TYPEWRITTEN_PROMPT_LAYOUT="pure"
TYPEWRITTEN_SYMBOL="->"
TYPEWRITTEN_RELATIVE_PATH="git"
export TYPEWRITTEN_LEFT_PROMPT_PREFIX_FUNCTION=(date +%H:%M)


CASE_SENSITIVE="false"
plugins=(git colored-man-pages)

alias ff='fastfetch --logo "~/media/icon2-modified.png" --logo-height 16 --logo-padding-top 1'
alias g='grep'
alias vim='nvim'
alias lg='lazygit'
alias tt='toipe'
alias cat='bat'
alias wiki='wiki-tui'

function yy() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
