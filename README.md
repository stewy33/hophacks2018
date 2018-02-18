# hophacks spring 2018
Merchant
=======================================================================
Package manager for the Mercury logic programming language.

Commands:
    --init
        creates a blank manifest file and a ".package" directory

    --install
        installs all dependencies specified in the manifest
        using mmc --make

    --build
        builds your project using the dependencies downloaded
        by the package manager with mmc --make

    --help
        returns a help message
========================================================================

Installation

Recommended: cd into the "hophacks2018" folder then run the 
command 'chmod +x install_merchant.sh' then run './install_merchant.sh'
afterwards, you should be able to use merchant commands.

Alternatively,we provided experimental binaries for Linux and Mac.

NOTE: this project has never been tested on Windows.  Mac and Linux
only

If you're compiling from source,
This project depends on juliensf's json parser:
https://github.com/juliensf/mercury-json


