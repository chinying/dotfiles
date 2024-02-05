# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish


# Load pyenv automatically by adding
# the following to ~/.config/fish/config.fish:

status is-login; and pyenv init --path | source
status is-interactive; and pyenv init - | source
# status --is-interactive; and . (pyenv init -|psub)

fish_add_path /Users/chinying/Library/Application Support/Coursier/bin

# aliases
#
alias lsa="exa -alh"
alias lsaa="tree"
alias lsnd="ls -p | grep -v /"
alias desktop="cd ~/Desktop"
alias mvimo="open\"mvim://open?url=file://$1\""
alias airportcycle='networksetup -setairportpower airport off; networksetup -setairportpower airport on'
# alias mkcd="mkdir "
alias brew="env PATH=(string replace (pyenv root)/shims '' \"\$PATH\") brew"


alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# alias fuck='eval $(thefuck $(fc -ln -1))'
# You can use whatever you want as an alias, like for Mondays:
#  alias FUCK='fuck'

alias npmlsa="npm list -g --depth=0"

alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# Trim new lines and copy to clipboard
alias c="tr -d '\n' | pbcopy"

# OS X has no `md5sum`, so use `md5` as a fallback
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback
command -v sha1sum > /dev/null || alias sha1sum="shasum"

alias adminmongoshell="mongo -u cy --authenticationDatabase admin -p"
alias apachecycle="sudo apachectl restart"

alias pngout='~/Desktop/stuff/dev/pngout/pngout'

alias fweather='finger singapore@graph.no'
alias tmux-kill-all="tmux ls | grep : | cut -d. -f1 | awk '{print substr($1, 0, length($1)-1)}' | xargs kill"

alias gcm="git commit -m "
alias gfod="git fetch origin && git pull origin "

alias rm=trash
alias reloadbash='. ~/.bash_profile'
alias wiki='telnet telnet.wmflabs.org'

alias subl='reattach-to-user-namespace subl'
alias rvmruby='source /Users/chinying/.rvm/scripts/rvm'

alias genvenv='python3 -m venv '
# alias psql='/Applications/Postgres.app/Contents/Versions/latest/bin/psql'
alias postgresup='postgres -D /usr/local/var/postgres'

alias nocors='open -a Google\ Chrome\ Canary --args --disable-web-security --user-data-dir'

alias pyutest='python3 -m unittest'
alias pyserve='python3 -m http.server'

# show time
set -q color_right_time; or set color_right_time red
set -q color_right_time_indicator; or set color_right_time_indicator yellow
set left_segment_separator \uE0B2

function prompt_time -d 'prints the current time'
  set_color $color_right_time
  echo "$left_segment_separator"
  set_color -b $color_right_time $color_right_time_indicator
  date "+%H:%M:%S"
  set_color -b $color_right_time normal
  echo "$left_segment_separator"
end

function fish_right_prompt -d 'Prints right prompt'
  prompt_time
  set_color normal
end

function fish_right_prompt -d 'Prints right prompt'
  prompt_time
  set_color normal
end
