#!/bin/zsh
rm ~/.zshrc
machine_env_list="develop\ndebug"
machine_env=$(echo $machine_env_list | fzf)
if [ "develop" = $machine_env ]; then
    ln -s $(pwd)/.zshrc_dev_machine ~/.zshrc
else
    ln -s $(pwd)/.zshrc_debug_server ~/.zshrc
fi
ln -s $(pwd)/completion_keyword ~/completion_keyword
source ~/.zshrc
