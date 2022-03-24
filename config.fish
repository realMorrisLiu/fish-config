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

    # Load rbenv
    rbenv init - fish | source

    # Add PATH
    fish_add_path /opt/homebrew/opt/make/libexec/gnubin (go env GOPATH)/bin $HOME/.local/bin
end
