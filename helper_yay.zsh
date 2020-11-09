#
# yay aliases
#

# The zyay_frontend is _only_ used for package installs.

#
# Setup
#

# ensure yay is available
(( ${+commands[yay]} )) && () {

  local zyay_frontend zyay_frontend_priv helper

  if ! zstyle -s ':zim:pacman' helper 'zyay_frontend'; then
    zyay_frontend='yay'
    zyay_frontend_priv='sudo yay'
  elif (( ! ${+commands[${zyay_frontend}]} )); then
    print "yay frontend \"${zyay_frontend}\" is invalid or not installed. Reverting to \"pacman\"." >&2
    zyay_frontend='pacman'
    zyay_frontend_priv='sudo pacman'
  else
    zyay_frontend_priv="sudo ${zyay_frontend}"
  fi


    #
    # General
    #

    alias yay=${zyay_frontend}

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
    alias yayi="${zyay_frontend_priv} -Syu"

    # install packages without syncing
    alias yayI="${zyay_frontend_priv} -S"

    # install, sync, and upgrade packages (forcibly refresh package lists)
    alias yayu="${zyay_frontend_priv} -Syyu"

    # install packages by filename
    alias yayU="${zyay_frontend_priv} -U"

    # install all packages in current directory
    alias yayd="${zyay_frontend_priv} -U *.pkg.*"


    #
    # Remove
    #

    # remove package and unneeded dependencies
    alias yayr="${zyay_frontend_priv} -R"

    # remove package, unneeded dependencies, and configuration files
    alias yayrm="${zyay_frontend_priv} -Rns"


    #
    # Query
    #

    # query package information from the remote repository
    alias yayq="${zyay_frontend} -Si"

    # query package information from the local repository
    alias yayQ="${zyay_frontend} -Qi"


    #
    # Search
    #

    # search for package in the remote repository
    alias yays="${zyay_frontend} -Ss"

    # search for the package in the local repository
    alias yayS="${zyay_frontend} -Qs"


    #
    # Orphans
    #

    # list orphan packages
    alias yayol="${zyay_frontend} -Qdt"

    # remove orphan packages
    alias yayor="${zyay_frontend_priv} -Rns \$(yay -Qtdq)"

    #
    #Database
    #

    #mark packages as explicitly installed
    alias yaypexp="${zyay_frontend_priv} -D --asexplicit"

    #mark packages as non-explicitly installed or dependency
    alias yaypdep="${zyay_frontend_priv} -D --asedps"


    #
    # Ownership
    #

    # list all files that belong to a package
    alias yayown="${zyay_frontend} -Ql"

    # show package(s) owning the specified file
    alias yayblame="${zyay_frontend} -Qo"
