# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
#DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want red dots to be displayed while waiting for completion

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git brew macos common-aliases docker ruby composer laravel z colorize zsh-autosuggestions)

ZSH_DISABLE_COMPFIX="true"

source $ZSH/oh-my-zsh.sh

PROMPT="🍺 %(?:%{$fg_bold[green]%}➜:%{$fg_bold[red]%}➜)"
PROMPT+=' %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'
export LANG=en_US.UTF-8

# Customize to your needs...
alias c='pygmentize -O style=monokai -f console256 -g'
alias vi="vim"
alias c='pygmentize -O style=monokai -f console256 -g'
alias fw80="sudo pfctl -ef /etc/pf.anchors/pf"
alias art='php artisan'
alias composer="php /usr/local/bin/composer.phar"

export PATH="$HOME/.composer/vendor/bin:$PATH"
export PATH=$PATH:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin
export PATH=$HOME/.node_modules/bin:$PATH
export VISUAL="vim"
export EDITOR="vim"

eval "$(rbenv init -)"
export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"

function mkdircd() {
  mkdir $1 && cd $_
}

function restart_audio(){
  sudo killall coreaudiod
}
#unalias fd
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export FZF_DEFAULT_COMMAND='fd --hidden --exclude=.gradle --exclude=.local --exclude=.config --exclude=.m2 --exclude=.cache --exclude=.git --exclude=.svn --exclude=node_modules --exclude=.rbenv'

ssh-add -A >/dev/null 2>&1
