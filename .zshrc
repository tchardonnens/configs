export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto
HIST_STAMPS="dd.mm.yyyy"
plugins=(git copyfile copybuffer jsontools  zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
eval "$(rbenv init - zsh)"

alias jtopdf='function _jtopdf(){ jupyter nbconvert --to pdf "$1"; }; _jtopdf'

# API KEYS
export GITHUB_TOKEN=""
export CR_PAT=""
export OPENAI_API_KEY=""
export PINECONE=""
export MAPBOX_ACCESS_TOKEN=""
export NOTION_API_KEY=""
export TRANSFORMERS_CACHE=~/huggingface_cache
