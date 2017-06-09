# Installation
Put the contents of `bash_profile` from this repo into your `.bashrc`, `.bash_profile`, or add it to the global /etc/profile.d/ directory as another sh script.

    cat bash_profile >> ~/.bash_profile

Add the contents of `tmux.conf` from this repo into your `.tmux.conf`

    cat tmux.conf >> ~/.tmux.conf

# Caveats or possible improvements
* After re-attaching to your tmux session you have to press `enter`/`return` at least once before things are hooked up again
* There's a small bit of overhead added to each of the shell commands you invoke.

# Sources

* [https://babushk.in/posts/renew-environment-tmux.html](https://babushk.in/posts/renew-environment-tmux.html)
* [https://gist.github.com/fkusche/cea2a187812c557d398363d6f7d135b9](https://gist.github.com/fkusche/cea2a187812c557d398363d6f7d135b9)
