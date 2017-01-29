antigen="${HOME}/.antigen.zsh"

if [ ! -f "${antigen}" ]; then
  #curl -s https://api.github.com/repos/zsh-users/antigen/tarball | tar -zxO zsh-users-antigen-4c09d6f/antigen.zsh > "${antigen}"
  curl -fLo "${antigen}" https://github.com/zsh-users/antigen/releases/download/v1.3.4/antigen.zsh
fi

source "${antigen}"

case "$TERM" in;
  *256color)
    POWERLEVEL9K_COLOR_SCHEME=light
    POWERLEVEL9K_PROMPT_ON_NEWLINE=true
    POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(context dir virtualenv vcs)
    POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status background_jobs history)
    POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=""
    POWERLEVEL9K_MULTILINE_SECOND_PROMPT_PREFIX="%(!.#.$) "
    antigen theme bhilburn/powerlevel9k powerlevel9k
    ;;
esac

antigen apply
