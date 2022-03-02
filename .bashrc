# BEGIN_KITTY_SHELL_INTEGRATION
# if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

### EXPORT
export PS1="[\[\033[32m\]\w]\[\033[0m\]\[\033[1;36m\]-> \[\033[0m\]" # set bash prompt in case starship does not start
export SHELL=/bin/bash
export PATH="/usr/local/sbin:$PATH"
export TERM=xterm
# export DOCKER_DEFAULT_PLATFORM=linux/amd64
# export CLICOLOR=1
# export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH="/opt/homebrew/opt/curl/bin:$PATH"

### HOMEBREW ###
eval "$(/opt/homebrew/bin/brew shellenv)"

### ALIASES ###

# Change "ls" to "exa"
alias ls='exa -al --color=always --group-directories-first' # my preferred listing
alias la='exa -a --color=always --group-directories-first'  # all files and dirs
alias ll='exa -l --color=always --group-directories-first'  # long format
alias lt='exa -aT --color=always --group-directories-first' # tree listing
alias l.='exa -a | egrep "^\."'

# git
alias gaddup='git add -u'
alias gaddall='git add .'
alias gbranch='git branch'
alias gcheckout='git checkout'
alias gclone='git clone'
alias gcommit='git commit -v'
alias gfetch='git fetch'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gstat='git status'  # 'status' is protected name so using 'stat' instead
alias gtag='git tag'
alias gnewtag='git tag -a'

# docker
alias dock-desktop-restart="osascript -e 'quit app \"Docker\"' && open -a Docker"
alias dock-container-purge='docker container rm $(docker container ls -a -q)'
alias dock-image-purge='docker image rm $(docker image ls -q)'

# Colorize grep output (good for log files)
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

# misc
alias generate-uuid-wo-dash="uuidgen | tr -d - | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"
alias generate-uuid-with-dash="uuidgen | tr -d '\n' | tr '[:upper:]' '[:lower:]'  | pbcopy && pbpaste && echo"
alias dns-flushcache="sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder"

### saml2aws ###
# eval "$(saml2aws --completion-script-bash)"

### NVM SETTINGS ###
# export NVM_DIR="$HOME/.nvm"
# [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
# [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

### RANDOM COLOR SCRIPT ###
# Get this script from my GitLab: gitlab.com/dwt1/shell-color-scripts
# colorscript random

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init bash --print-full-init)"
