# My macos dotfiles

## Installation

Make sure to create an alias for the repository. You can put the following in your shell congfig:

```
alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
```

Then reload your config to make the alias available.

We also want to ignore the dotfiles git directory itself to prevent wierd recursion issues.

```sh
echo ".dotfiles" >> .gitignore
```

Now we can clone the dotfiles repo into a bare repository

```sh
git clone --bare git@github.com:sevbesau/dotfiles.git $HOME/.dotfiles
# or
git clone --bare https://github.com/sevbesau/dotfiles.git $HOME/.dotfiles
```

After this we can checkout the content from our dotfiles repo

```sh
dotfiles checkout
```

**Note: This can fail if we are going to overwrite existing files.**
If this happens, you can use the following shortcut to quickly backup these files if you care about them:

```sh
mkdir -p .config-backup && \
config checkout 2>&1 | egrep "\s+\." | awk {'print $1'} | \
xargs -I{} mv {} .config-backup/{}
```

Then rerun the checkout:

```sh
dofiles checkout
```

Make sure to set the flag showUntrackedFiles to no to unclutter the status.

```sh
dotfiles config --local status.showUntrackedFiles no
```

