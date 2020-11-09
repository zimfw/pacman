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

Helpers
-------

### aur

provides simple AUR helper aliases.

  * `aurb package_name` clone the package from the AUR, build, and install.
  * `aurd package_name` clone the package from the AUR, but do not build.
  * `auru` run inside a directory created with `aurb`, this will update, build, and install a package.

Aliases
-------

### Build

  * `pacb` build package in the current directory, cleanup, and install.

### Install

  * `paci` install, sync, and upgrade packages.
  * `pacu` install, sync, and upgrade packages (forcibly refresh package list).
  * `pacU` install packages from pkg file.
  * `pacd` install all packages in current directory.

### Remove

  * `pacr` remove package and unneeded dependencies.
  * `pacrm` remove package, unneded dependencies, and configuration files.

### Query

  * `pacq` query package information from remote repository
  * `pacQ` query package information from local repository

### Search

  * `pacs` search for package in the remote repository
  * `pacS` search for package in the local repository

### Orphans

  * `pacol` list orphan packages
  * `pacor` remove all orphan packages

### Database
  * `pacpexp` mark packages as explicitly installed
  * `pacpdep` mark packages as non-explicitly installed or as dependency

### Ownership

  * `pacown` list all files provided by a given package
  * `pacblame` show package(s) that own a specified file

---
---
yay-aliases
======

Adds aliases for the yay AUR helper.

Aliases
-------

### General

  * `yconf` print current yay configuration.

### Install

  * `yi` install, sync, and upgrade packages.
  * `yu` install, sync, and upgrade packages (forcibly refresh package list).
  * `yU` install packages from pkg file.
  * `yd` install all packages in current directory.

### Remove

  * `yr` remove package and unneeded dependencies.
  * `yrm` remove package, unneded dependencies, and configuration files.

### Query

  * `yq` query package information from remote repository
  * `yQ` query package information from local repository

### Search

  * `ys` search for package in the remote repository
  * `yS` search for package in the local repository

### Orphans

  * `yol` list orphan packages
  * `yor` remove all orphan packages

### Ownership

  * `yown` list all files provided by a given package
  * `yblame` show package(s) that own a specified file
