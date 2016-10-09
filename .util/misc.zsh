
# Use Vim as the system-wide editor
if which nvim &> /dev/null; then
  export EDITOR="nvim"
else
  export EDITOR="vim"
fi

# Load LS_COLORS
which dircolors &> /dev/null && eval $(dircolors ~/.dir_colors)
# now, when we us `ls` we'll get solarized-colored files and directories!

# Turn on italics
tic ~/.xterm-256color-italic.terminfo
tic ~/.screen-256color-italic.terminfo

if ! echo $TERM | grep 'italic' &> /dev/null; then
  export TERM=xterm-256color-italic
fi
# Things will break if you don't have these terminfo changes applied on _every_
# host that you use; i.e., every box that you ssh into
