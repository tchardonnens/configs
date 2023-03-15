export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="robbyrussell"
zstyle ':omz:update' mode auto
HIST_STAMPS="dd.mm.yyyy"
plugins=(git copyfile copybuffer jsontools  zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh

alias run-kali="docker run -it --name kali --mount type=bind,source=/Users/thomas/Documents/Pentest,target=/home/shared/pentest --mount type=bind,source=/Users/thomas/Downloads,target=/home/shared/downloads --cap-add=NET_ADMIN --cap-add=SYS_ADMIN --device /dev/net/tun --sysctl net.ipv6.conf.all.disable_ipv6=0 -d ghcr.io/tchardonnens/kalilinux-applesilicon:2.0 /bin/bash"
alias start-kali="docker start kali"
alias kali="docker exec -it kali /bin/bash"

ava() {
 	openai api chat_completions.create -m gpt-3.5-turbo -g "user" $1 -t 0 -M 100 | tr -d '%'
}

OPENAI_API_KEY=""
