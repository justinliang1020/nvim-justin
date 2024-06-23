# 💤 LazyVim

A starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) to get started.

## Using with tmux

tmux causes a short delay when exiting from the insert command while using LazyVim

This can be fixed by adding the following to .tmux.conf

```bash
echo "set -sg escape-time 10" >> .tmux.confg
```

Make sure to restart the tmux server for this to go into effect
