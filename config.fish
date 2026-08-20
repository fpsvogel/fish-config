if status is-interactive
  # Commands to run in interactive sessions can go here
end

source ~/.config/fish/alias

# Homebrew
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

# Direnv
direnv hook fish | source

# Ruby
fish_add_path ~/.rbenv/shims
fish_add_path ~/.rbenv/bin
status --is-interactive; and rbenv init - --no-rehash fish | source

# JS
# A parent process (e.g. VS Code) can export a stale nvm_current_version, which makes
# conf.d/nvm.fish skip activation and leave Homebrew's node ahead of nvm's on PATH.
# To use Homebrew's version in a shell session: `nvm use system`
if status is-interactive; and set --query nvm_default_version
  set --local _active_node (command --search node)
  if test "$_active_node" != $nvm_data/$nvm_default_version/bin/node
    set --erase nvm_current_version
    nvm use --silent $nvm_default_version
  end
end

# Coreutils
fish_add_path /opt/homebrew/opt/coreutils/libexec/gnubin
# Copy commands here that should take precedence over coreutils (such as /bin/stty)
fish_add_path ~/.bin

# Misc.
fish_add_path ~/.local/bin
fish_add_path ~/.local/pipx/venvs/datadog/bin

export LEFTHOOK=0
export EDITOR="code"
export GIT_CONFIG_GLOBAL="/Users/felipe.vogel/.config/fish/.gitconfig"
