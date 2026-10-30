# dotfiles

Managed with [chezmoi](https://www.chezmoi.io/). Files under `home/` map to `~`
(`dot_zshrc.tmpl` → `~/.zshrc`; `.tmpl` files differ between macOS and Linux).

## New Mac

```bash
brew install chezmoi
chezmoi init --source ~/dotfiles --apply ryota-sakamoto
brew bundle --file ~/dotfiles/Brewfile
chsh -s /bin/zsh
```

## New Linux machine (remote node, ISUCON servers)

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin init --apply ryota-sakamoto
```

On Debian/Ubuntu this also installs zsh, tmux, vim, peco and friends with apt.

## Day to day

```bash
chezmoi edit ~/.zshrc   # edit the source, then:
chezmoi diff            # preview
chezmoi apply           # write to ~
chezmoi update          # git pull + apply on another machine
```

Machine-specific shell settings go in `~/.zshrc.local` (not in git).
Never add secrets (tokens, `~/.config/gh`) to this repo: it is public.
