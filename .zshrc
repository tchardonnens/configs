export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto
HIST_STAMPS="dd.mm.yyyy"
plugins=(git copyfile copybuffer jsontools  zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
eval "$(rbenv init - zsh)"

alias jtopdf='function _jtopdf(){ jupyter nbconvert --to pdf "$1"; }; _jtopdf'

alias gco='git checkout'
alias gbr='git branch'
alias gci='git commit'
alias gst='git status'
alias gss='git status -s'
alias glg='git log --graph --oneline --decorate --all'
alias gll='git log --pretty=format:"%C(yellow)%h%C(reset) - %C(green)(%cd)%C(reset) %s %C(blue)<%an>%C(reset)" --graph --date=short'
alias gunstage='git reset HEAD --'
alias glast='git log -1 HEAD'
alias gcm='git add -A && git commit -m'

# API KEYS
export GITHUB_TOKEN=""
export CR_PAT=""
export OPENAI_API_KEY=""
export PINECONE=""
export MAPBOX_ACCESS_TOKEN=""
export NOTION_API_KEY=""
export TRANSFORMERS_CACHE=~/huggingface_cache
