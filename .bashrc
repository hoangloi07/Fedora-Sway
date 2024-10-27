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
)


source "$OSH"/oh-my-bash.sh


eval "$(zoxide init bash)"
export EDITOR="vim"
alias ls="exa"
alias ll="exa -l"
alias la="exa -la"
alias cd="z"


export PATH=$PATH:~/.cargo/bin
alias nv="NVIM_APPNAME='nvtest' nvim"
