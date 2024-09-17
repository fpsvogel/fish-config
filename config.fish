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

fish_add_path ~/cod/ruby-advent-of-code

fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
# Copy commands here that should take precedence over coreutils (such as /bin/stty)
fish_add_path ~/.bin

source ~/.config/fish/alias
