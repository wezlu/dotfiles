# BEGIN_KITTY_SHELL_INTEGRATION
#if test -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION

### EXPORT
export SHELL=/bin/bash
export PATH="/usr/local/sbin:$PATH"
export TERM=xterm
#export DOCKER_DEFAULT_PLATFORM=linux/amd64

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

### saml2aws ###
eval "$(saml2aws --completion-script-bash)"

### SETTING THE STARSHIP PROMPT ###
eval "$(starship init bash --print-full-init)"

