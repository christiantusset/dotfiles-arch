# ZSH
export ZSH="$HOME/.oh-my-zsh"

# Add commonly used folders to $PATH
export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"

# Specify default editor
export EDITOR=gedit


ZSH_THEME="agnoster"

plugins=(
	archlinux
	# autojump
	asdf
	bundler
	colorize
	# colored-man
	colored-man-pages
	command-not-found
	cp
	dirhistory
	docker
    # fzf
    git
    history-substring-search
	jsontools
	sudo
    zsh-autosuggestions
    zsh-syntax-highlighting
    zsh-z
)


# File search functions
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

# Create a folder and move into it in one command
function mkcd() { mkdir -p "$@" && cd "$_"; }


# fzf
# export FZF_DEFAULT_COMMAND='fdfind --type f'
# export FZF_DEFAULT_OPTS="--layout=reverse --inline-info --height=80%"


# Loading NVM
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh


# Aliases
alias clearContainers='docker rm -vf $(docker ps -aq)' ## Delete all Containers and Volumes
alias clearImages='docker rmi -f $(docker images -aq)' ## To delete all the images
alias clearcache='sudo pacman -Sc && yay -Scc && yay -Yc' # Clear cache
alias lists='sudo gedit /etc/apt/sources.list' # Edit sources.list
alias cache='sudo pacman -Sc && yay -Scc && yay -Yc' # Clear cache
alias cppcompile='c++ -std=c++11 -stdlib=libc++' # cpp compile
alias dpkgrepair='sudo dpkg --configure -a' # Repair o dpkg
alias google='ping -t 3 www.google.com.br' # Ping google
alias mvninstall='mvn install -DskipTests -e' # Maven
alias update='sudo pacman -Syu' # Update pacman
alias cls='clear' # clear console
alias g='git' # git

# neofetch

source $ZSH/oh-my-zsh.sh