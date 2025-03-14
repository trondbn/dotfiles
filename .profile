if [ "$(arch)" = "arm64" ]; then
    export PYENV_ROOT="$HOME/.pyenv"
else
    export PYENV_ROOT="$HOME/.pyenv-x86_64"
fi
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init --path)"
