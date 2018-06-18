#!/usr/bin/env bash
        
case "$TRAVIS_OS_NAME" in
"osx")
    brew update                                 
    brew outdated pyenv || brew upgrade pyenv
    eval "$(pyenv init -)"
    pyenv install $PYTHONVERSION
    pyenv local $PYTHONVERSION
    ;;
"linux")
    # nothing to install
    ;;
*)
    echo "Unknown travis OS $TRAVIS_OS_NAME"
    exit 1
esac
