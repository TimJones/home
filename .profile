# Set user-defined locale
export LANG=$(locale -uU)

# if running bash
if [ -n "${BASH_VERSION}" ]; then
  if [ -f "${HOME}/.bashrc" ]; then
    source "${HOME}/.bashrc"
  fi
fi

if [ -d "${HOME}/bin" ]; then
  export PATH="${HOME}/bin:${PATH}"
fi
