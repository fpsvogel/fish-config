if status is-interactive
  # Commands to run in interactive sessions can go here
end

fish_add_path /opt/homebrew/bin

fish_add_path ~/.rbenv/shims
fish_add_path ~/.rbenv/bin

# for Haskell
fish_add_path /opt/homebrew/opt/llvm/bin
fish_add_path ~/.local/bin
fish_add_path /opt/homebrew/opt/cabal-install/bin
fish_add_path /opt/homebrew/opt/haskell-language-server/bin

fish_add_path ~/cod/roc_nightly-macos_apple_silicon-2024-09-09-9a4d556725

fish_add_path ~/.nvm/versions/node/v18.19.1/bin

fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
# Copy commands here that should take precedence over coreutils (such as /bin/stty)
fish_add_path ~/.bin

source ~/.config/fish/alias
source ~/.deno/env.fish
