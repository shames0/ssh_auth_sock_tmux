if [ -n "$TMUX" ]; then
    function refresh_env {
        E=`tmux show-environment`

        while [ "$E" ] ; do
            iter=${E%%
*}
            [[ "$iter" == SSH_AUTH_SOCK=*  ]] && export "$iter"
            [[ "$iter" == SSH_AGENT_PID=*  ]] && export "$iter"
            [[ "$iter" == SSH_CONNECTION=* ]] && export "$iter"
            [[ "$iter" == DISPLAY=*        ]] && export "$iter"

            [ "$E" = "$iter" ] && \
                E='' || \
                E="${E#*
}"
        done
    }
    PROMPT_COMMAND=refresh_env
fi
