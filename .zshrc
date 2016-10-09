# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

source $ZSH/oh-my-zsh.sh

# load a module robustly by skipping all remaining modules if any module fails
# to load
load_module() {
  if [ -n "$ABORTED" ]; then
    return
  fi

  module="$1"

  if [ -f "$module" ]; then
    source $module

    if [ "$?" != "0" ]; then
      echo "Module $module failed to load. Exiting."
      export ABORTED=1
      return
    fi
  fi
}

# Make sure we are running interactively, else stop
#[ -z "$PS1" ] && return

# zsh-specific settings
load_module ~/.util/misc.zsh

load_module ~/.util/prompt.zsh

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="geometry"

# Uncommnt the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-syntax-highlighting brew celery geeknote git gitfast npm pip python sudo zsh-better-npm-completion)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#########################################################
#########################################################
#########################################################


# Color definitions
#GEOMETRY_COLOR_GIT_DIRTY=${GEOMETRY_COLOR_GIT_DIRTY:-red}
#GEOMETRY_COLOR_GIT_CLEAN=${GEOMETRY_COLOR_GIT_CLEAN:-green}
#GEOMETRY_COLOR_GIT_CONFLICTS_UNSOLVED=${GEOMETRY_COLOR_GIT_CONFLICTS_UNSOLVED:-red}
#GEOMETRY_COLOR_GIT_CONFLICTS_SOLVED=${GEOMETRY_COLOR_GIT_CONFLICTS_SOLVED:-green}
#GEOMETRY_COLOR_GIT_BRANCH=${GEOMETRY_COLOR_GIT_BRANCH:-242}
#GEOMETRY_COLOR_GIT_TIME_SINCE_COMMIT_SHORT=${GEOMETRY_COLOR_GIT_TIME_SINCE_COMMIT_SHORT:-green}
#GEOMETRY_COLOR_GIT_TIME_SINCE_COMMIT_NEUTRAL=${GEOMETRY_COLOR_GIT_TIME_SINCE_COMMIT_NEUTRAL:-white}
#GEOMETRY_COLOR_GIT_TIME_SINCE_COMMIT_LONG=${GEOMETRY_COLOR_GIT_TIME_SINCE_COMMIT_LONG:-red}
GEOMETRY_COLOR_EXIT_VALUE=colour138
#GEOMETRY_COLOR_PROMPT=${GEOMETRY_COLOR_PROMPT:-white}
#GEOMETRY_COLOR_ROOT=${GEOMETRY_COLOR_ROOT:-red}
GEOMETRY_COLOR_DIR='67'
