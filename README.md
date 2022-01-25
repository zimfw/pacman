pacman
======

Adds aliases for the pacman package manager.

Also includes optional helper(s).

Settings
--------
Set `wrapper_here` to a wrapper if applicable (powerpill, pacmatic, etc):

    zstyle ':zim:pacman' frontend 'wrapper_here'

Add any helper scripts to be loaded:

    zstyle ':zim:pacman' helpers 'aur'

Add the zstyles to your `~/.zshrc` before where the module is initialized.

Helpers
-------

### aur

provides simple AUR helper aliases.

  * `aurb` clones the given package name from the AUR, builds, and installs.
  * `aurd` clones the given package name from the AUR, but does not build.
  * `auru` from a directory created with `aurb`, will update, build, and install the package.

Aliases
-------

  * `pacb` builds package in the current directory, cleanups, and installs.
  * `paci` installs, syncs, and upgrades packages.
  * `pacu` installs, syncs, and upgrades packages (forcibly refreshes package list).
  * `pacU` installs packages from pkg file.
  * `pacd` installs all packages in current directory.
  * `pacr` removes package and unneeded dependencies.
  * `pacrm` removes package, unneeded dependencies, and configuration files.
  * `pacq` queries package information from remote repository.
  * `pacQ` queries package information from local repository.
  * `pacs` searches for package in the remote repository.
  * `pacS` searches for package in the local repository.
  * `pacol` lists orphan packages.
  * `pacor` removes all orphan packages.
  * `pacown` lists all files provided by a given package.
  * `pacblame` shows packages that own a specified file.
