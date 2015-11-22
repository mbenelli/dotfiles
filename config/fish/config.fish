if status --is-interactive
  keychain --eval --quiet -Q | source
end

set PATH $HOME/bin $HOME/opt/Qt/bin $PATH
set -g LD_LIBRARY_PATH $HOME/lib $LD_LIBRARY_PATH
