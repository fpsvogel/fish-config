if status is-interactive
  # Commands to run in interactive sessions can go here
end

source ~/.config/fish/alias

# misc.
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
set -gx DIRENV_LOG_FORMAT ""
direnv hook fish | source

# Ruby
fish_add_path ~/.rbenv/shims
fish_add_path ~/.rbenv/bin

# JS
fish_add_path $nvm_data/v22.13.1/bin
source ~/.deno/env.fish

# Haskell
fish_add_path /opt/homebrew/opt/llvm/bin
fish_add_path ~/.local/bin
fish_add_path /opt/homebrew/opt/cabal-install/bin
fish_add_path /opt/homebrew/opt/haskell-language-server/bin

# Roc
fish_add_path ~/cod/roc_nightly-macos_apple_silicon-2024-09-09-9a4d556725

# Coreutils
fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
# Copy commands here that should take precedence over coreutils (such as /bin/stty)
fish_add_path ~/.bin
