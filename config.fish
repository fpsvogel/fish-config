if status is-interactive
  # Commands to run in interactive sessions can go here
end

source ~/.config/fish/alias

# misc.
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
# set -gx DIRENV_LOG_FORMAT ""
direnv hook fish | source

# Ruby
fish_add_path ~/.rbenv/shims
fish_add_path ~/.rbenv/bin

# JS
fish_add_path $nvm_data/v22.13.1/bin

# Coreutils
fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
# Copy commands here that should take precedence over coreutils (such as /bin/stty)
fish_add_path ~/.bin

export LEFTHOOK=0
export EDITOR="code"
