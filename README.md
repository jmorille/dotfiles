# My dotfiles

## dotfiles

These are my dotfiles.

## install

```sh
git clone https://github.com/jmorille/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
./bin/bootstrap.sh
```
This will symlink the appropriate files in `.dotfiles` to home directory.
Everything is configured and tweaked within `~/.dotfiles`.


## Sync vdupain
https://help.github.com/articles/syncing-a-fork
```sh
git remote add upstream https://github.com/vdupain/dotfiles.git
git fetch upstream
git checkout master
git merge upstream/master
```

## thanks

* [Zach Holman's dotfiles](https://github.com/holman/dotfiles).
* [dotfiles on GitHub](http://dotfiles.github.io/)

