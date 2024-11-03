# Enable the subsequent settings only in interactive sessions
case $- in
  *i*) ;;
    *) return;;
esac

export OSH='/home/hoang/.oh-my-bash'

OSH_THEME="font"

completions=(
  git
  composer
  ssh
)

aliases=(
  general
)
plugins=(
  git
  bashmarks
	colored-man-pages
	sudo

)


source "$OSH"/oh-my-bash.sh


eval "$(zoxide init bash)"
export EDITOR="vim"
alias ls="exa"
alias ll="exa -l"
alias la="exa -la"
alias cd="z"


export PATH=$PATH:~/.cargo/bin:/home/linuxbrew/.linuxbrew/bin
alias nv="NVIM_APPNAME='nvtest' nvim"
alias inpack="python3 ~/scripts/packages.py"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH=$BUN_INSTALL/bin:$PATH

set -o vi
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
