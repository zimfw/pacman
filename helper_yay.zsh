#
# yay aliases
#

#
# General
#

alias yay=yay

#
# Build
#

# build package in current directory, cleanup, and install
alias yayb='makepkg -sci'

#
# Install
#

#NOTE: Installing/upgrading individual packages is NOT supported. Sync and upgrade ALL on install.

# install, sync, and upgrade packages
alias yayi="sudo yay -Syu"

# install packages without syncing
alias yayI="sudo yay -S"

# install, sync, and upgrade packages (forcibly refresh package lists)
alias yayu="sudo yay -Syyu"

# install packages by filename
alias yayU="sudo yay -U"

# install all packages in current directory
alias yayd="sudo yay -U *.pkg.*"


#
# Remove
#

# remove package and unneeded dependencies
alias yayr="sudo yay -R"

# remove package, unneeded dependencies, and configuration files
alias yayrm="sudo yay -Rns"


#
# Query
#

# query package information from the remote repository
alias yayq="yay -Si"

# query package information from the local repository
alias yayQ="yay -Qi"


#
# Search
#

# search for package in the remote repository
alias yays="yay -Ss"

# search for the package in the local repository
alias yayS="yay -Qs"


#
# Orphans
#

# list orphan packages
alias yayol="yay -Qdt"

# remove orphan packages
alias yayor="sudo yay -Rns \$(yay -Qtdq)"

#
#Database
#

#mark packages as explicitly installed
alias yaypexp="sudo yay -D --asexplicit"

#mark packages as non-explicitly installed or dependency
alias yaypdep="sudo yay -D --asedps"


#
# Ownership
#

# list all files that belong to a package
alias yayown="yay -Ql"

# show package(s) owning the specified file
alias yayblame="yay -Qo"
