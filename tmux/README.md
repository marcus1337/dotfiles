# tmux dotfiles

## Layout
- repo: `~/tools/dotfiles/tmux`
- symlink: `~/.config/tmux -> ~/tools/dotfiles/tmux`

## TPM
- install path: `~/.config/tmux/plugins/tpm`
- plugins path: `~/.config/tmux/plugins/`

## Install plugins
```bash
~/.config/tmux/plugins/tpm/bin/install_plugins
```

## Note
TPM may sometimes create the legacy directory `~/.tmux/`.
If that happens, remove it:

```bash
rm -rf ~/.tmux
```

This setup is intended to keep tmux files under `~/.config/tmux/`.
