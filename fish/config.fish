set -gx EDITOR nvim

if status is-interactive
    # Commands to run in interactive sessions can go here
end

# pnpm
set -gx PNPM_HOME "/home/willem/.local/share/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end

# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $HOME/.local/share/nvm/v25.6.1/bin $BUN_INSTALL/bin $PATH
set --export DOTNET_ROOT "$HOME/.dotnet"
set --export PATH $DOTNET_ROOT $DOTNET_ROOT/tools $PATH
set --export PATH $BUN_INSTALL/bin $PATH
set --export PATH /usr/local/go/bin $PATH
set --export PATH $HOME/Repos/Work/flutter/bin $PATH
set --export PATH $HOME/.pub-cache/bin $PATH

set --export CHROME_DEVEL_SANDBOX "/opt/google/chrome/chrome-sandbox"

# opencode
fish_add_path /home/willem/.opencode/bin
