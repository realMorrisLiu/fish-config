if status is-interactive
    # Commands to run in interactive sessions can go here

    # Add MacPorts to PATH
    fish_add_path /opt/local/bin

    # Load homebrew shell environment
    eval (/opt/homebrew/bin/brew shellenv)

    # Load zoxide
    zoxide init fish | source

    # Load rbenv
    rbenv init - fish | source

    # Load nvm
    load_nvm

    # Load cargo
    bass source "$HOME/.cargo/env"

    # Add PATH
    fish_add_path (go env GOPATH)/bin $HOME/.local/bin $HOME/Library/Python/3.10/bin

    # Enable proxy
    #proxy enable

    # Add fzf
    source /opt/local/share/fzf/shell/key-bindings.fish
    alias fzp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

    # pnpm
    set -gx PNPM_HOME /Users/morris/Library/pnpm
    set -gx PATH "$PNPM_HOME" $PATH
    # pnpm end

    # >>> conda initialize >>>
    # !! Contents within this block are managed by 'conda init' !!
    if test -f /Users/morris/miniconda3/bin/conda
        eval /Users/morris/miniconda3/bin/conda "shell.fish" hook $argv | source
    end
    # <<< conda initialize <<<
end
