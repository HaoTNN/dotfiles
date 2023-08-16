alias ll="ls -al"

#PS1='\h:\W \u\$ '

PS1="\[\e[38;5;226m\]\u\[\e[38;5;220m\]@\[\e[38;5;214m\]\h \[\e[38;5;33m\]\w \[\033[0m\]$ "

# Enable auto-complete for brew package installation
if type brew &>/dev/null
then
  HOMEBREW_PREFIX="$(brew --prefix)"
  if [[ -r "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh" ]]
  then
    source "${HOMEBREW_PREFIX}/etc/profile.d/bash_completion.sh"
  else
    for COMPLETION in "${HOMEBREW_PREFIX}/etc/bash_completion.d/"*
    do
      [[ -r "${COMPLETION}" ]] && source "${COMPLETION}"
    done
  fi
fi

export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export PATH=/opt/homebrew/bin:$PATH
export PATH="$HOMEBREW_PREFIX/opt/findutils/libexec/gnubin:$PATH"
