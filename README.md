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

## New Linux machine (Fedora workstation, remote node, ISUCON servers)

```bash
sh -c "$(curl -fsLS get.chezmoi.io)" -- -b ~/.local/bin init --apply ryota-sakamoto
```

This also installs packages: the full list from `home/.chezmoidata/packages.yaml`
with dnf on Fedora (plus `dnf builddep kernel`), or a base set with apt on
Debian/Ubuntu. Go, Rust, pipx and npm tools come from the same file. Run
`chezmoi apply` a second time on a new machine so `.gitconfig` picks up delta
and git-lfs once they are installed. Then make zsh the login shell:

```bash
chsh -s /usr/bin/zsh
```

## Day to day

```bash
chezmoi edit ~/.zshrc   # edit the source, then:
chezmoi diff            # preview
chezmoi apply           # write to ~
chezmoi update          # git pull + apply on another machine
```

Machine-specific settings go in `~/.zshrc.local` and `~/.gitconfig.local`
(not in git).
Never add secrets (tokens, `~/.config/gh`) to this repo: it is public.
