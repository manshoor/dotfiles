alias node=nodejs
alias pbcopy='xclip -selection clipboard'
alias pbpaste='xclip -selection clipboard -o'

if [ -x /usr/bin/dircolors ]; then
  test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
  alias ls="ls --color=auto"

  GREP_FLAGS=" --color=auto --exclude-dir=${GREP_EXCLUDE_DIR}"

  alias grep="grep ${GREP_FLAGS}"
  alias egrep="egrep ${GREP_FLAGS}"
  alias fgrep="fgrep ${GREP_FLAGS}"
fi