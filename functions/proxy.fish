function proxy --argument-names cmd
    switch "$cmd"
        case enable
            set -gx http_proxy http://127.0.0.1:6152
            set -gx https_proxy http://127.0.0.1:6152
            set -gx all_proxy socks5://127.0.0.1:6153
            set -gx no_proxy *.internal
            echo "Proxy enabled"

        case disable
            set -gu http_proxy
            set -gu https_proxy
            set -gu all_proxy
            set -gu no_proxy
            echo "Proxy disabled"

        case \*
            echo "fisher: Unknown command: \"$cmd\"" >&2 && return 1
    end
end
