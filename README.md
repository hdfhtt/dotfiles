# dotfiles

Personal configuration, tracked at its real home-relative path so it can be
replicated on a new machine with no manual copying.

## Layout

Files mirror their location under `$HOME`. For example:

```
.config/opencode/AGENTS.md            -> ~/.config/opencode/AGENTS.md
.config/opencode/skills/.../SKILL.md  -> ~/.config/opencode/skills/.../SKILL.md
```

## Install on a new machine

```bash
git clone <remote-url> ~/.dotfiles
~/.dotfiles/install.sh
```

`install.sh` symlinks every tracked file into `$HOME` at its mirrored path.
Any pre-existing real file is moved aside to `<file>.bak` first. Re-running is
safe; correct links are left untouched.
