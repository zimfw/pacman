#
# yay aliases
#

local zyay zyay_priv

zyay='yay'
zyay_priv='sudo yay'

#
# General
#

alias yay=${zyay}

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
alias yayi="${zyay_priv} -Syu"

# install packages without syncing
alias yayI="${zyay_priv} -S"

# install, sync, and upgrade packages (forcibly refresh package lists)
alias yayu="${zyay_priv} -Syyu"

# install packages by filename
alias yayU="${zyay_priv} -U"

# install all packages in current directory
alias yayd="${zyay_priv} -U *.pkg.*"


#
# Remove
#

# remove package and unneeded dependencies
alias yayr="${zyay_priv} -R"

# remove package, unneeded dependencies, and configuration files
alias yayrm="${zyay_priv} -Rns"


#
# Query
#

# query package information from the remote repository
alias yayq="${zyay} -Si"

# query package information from the local repository
alias yayQ="${zyay} -Qi"


#
# Search
#

# search for package in the remote repository
alias yays="${zyay} -Ss"

# search for the package in the local repository
alias yayS="${zyay} -Qs"


#
# Orphans
#

# list orphan packages
alias yayol="${zyay} -Qdt"

# remove orphan packages
alias yayor="${zyay_priv} -Rns \$(yay -Qtdq)"

#
#Database
#

#mark packages as explicitly installed
alias yaypexp="${zyay_priv} -D --asexplicit"

#mark packages as non-explicitly installed or dependency
alias yaypdep="${zyay_priv} -D --asedps"


#
# Ownership
#

# list all files that belong to a package
alias yayown="${zyay} -Ql"

# show package(s) owning the specified file
alias yayblame="${zyay} -Qo"
