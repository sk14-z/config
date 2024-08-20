export ZSH="$HOME/.oh-my-zsh"
export LANG=en_US.UTF-8
export VISUAL=nvim
export EDITOR=nvim

source /usr/lib/spaceship-prompt/spaceship.zsh
source $ZSH/oh-my-zsh.sh

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
