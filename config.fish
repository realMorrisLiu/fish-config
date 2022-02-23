if status is-interactive
    # Commands to run in interactive sessions can go here
    # Load homebrew shell environment
    eval (/opt/homebrew/bin/brew shellenv)

    # Load nvm
    load_nvm

    # Load autojump
    [ -f /opt/homebrew/share/autojump/autojump.fish ]; and source /opt/homebrew/share/autojump/autojump.fish

    # Enable proxy
    #proxy enable

    # Load cargo
    bass source $HOME/.cargo/env
end

# Load rbenv
status --is-interactive; and rbenv init - fish | source
