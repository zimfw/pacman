#
# yay aliases
#

#
# General
#

# Print current yay configuration
alias yconf="yay -Pg"

#
# Install
#

#NOTE: Installing/upgrading individual packages is NOT supported. Sync and upgrade ALL on install.

# install, sync, and upgrade packages
alias yi="yay -Syu"

# install packages without syncing
alias yI="yay -S"

# install, sync, and upgrade packages (forcibly refresh package lists)
alias yu="yay -Syyu"

# install packages by filename
alias yU="yay -U"

# install all packages in current directory
alias yd="yay -U *.pkg.*"


#
# Remove
#

# remove package and unneeded dependencies
alias yr="yay -R"

# remove package, unneeded dependencies, and configuration files
alias yrm="yay -Rns"


#
# Query
#

# query package information from the remote repository
alias yqry="yay -Si"

# query package information from the local repository
alias yQry="yay -Qi"


#
# Search
#

# search for package in the remote repository
alias ys="yay -Ss"

# search for the package in the local repository
alias yS="yay -Qs"


#
# Orphans
#

# list orphan packages
alias yol="yay -Qdt"

# remove orphan packages
alias yor="yay -Rns \$(yay -Qtdq)"

#
# Ownership
#

# list all files that belong to a package
alias yown="yay -Ql"

# show package(s) owning the specified file
alias yblame="yay -Qo"
