#!/bin/bash

if [ "${BASH_SOURCE[0]}" -ef "$0" ]; then
    echo "Please source this script, not execute it!"
    exit 1
fi

if [ -f "$HOME/.bash-git-prompt/gitprompt.sh" ]; then
    current_dir=$(dirname -- "$BASH_SOURCE";)

    # Set config variables first
    # GIT_PROMPT_ONLY_IN_REPO=1 # uncoment to enable only in git repository

    # GIT_PROMPT_FETCH_REMOTE_STATUS=0   # uncomment to avoid fetching remote status
    # GIT_PROMPT_IGNORE_SUBMODULES=1 # uncomment to avoid searching for changed files in submodules
    # GIT_PROMPT_WITH_VIRTUAL_ENV=0 # uncomment to avoid setting virtual environment infos for node/python/conda environments

    # GIT_PROMPT_SHOW_UPSTREAM=1 # uncomment to show upstream tracking branch

    # You can set the GIT_PROMPT_SHOW_UNTRACKED_FILES variable to no or normal to speed things up if you have lots of untracked files in your repository.
    # This can be the case for build systems that put their build artifacts in the subdirectory structure of the git repository.
    # Setting it to all will count all untracked files, including files listed in .gitignore.
    # GIT_PROMPT_SHOW_UNTRACKED_FILES=normal # can be no, normal or all; determines counting of untracked files

    # GIT_PROMPT_SHOW_CHANGED_FILES_COUNT=0 # uncomment to avoid printing the number of changed files

    # GIT_PROMPT_STATUS_COMMAND=gitstatus_pre-1.7.10.sh # uncomment to support Git older than 1.7.10

    # GIT_PROMPT_START=...    # uncomment for custom prompt start sequence
    # GIT_PROMPT_END=...      # uncomment for custom prompt end sequence

    # as last entry source the gitprompt script
    # GIT_PROMPT_THEME=my_theme # use custom theme specified in file GIT_PROMPT_THEME_FILE (default ~/.git-prompt-colors.sh)

    GIT_PROMPT_THEME_FILE=${current_dir}/single_line_simple.bgptheme
    # GIT_PROMPT_THEME=Solarized # use theme optimized for solarized color scheme

    # shellcheck source=/dev/null
    source "${HOME}/.bash-git-prompt/gitprompt.sh"
else
    git clone https://github.com/magicmonty/bash-git-prompt.git ~/.bash-git-prompt --depth=1
fi

