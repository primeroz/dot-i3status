#!/usr/bin/env bash
##############################################################################
# @file ellipsis.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

pkg.link() {
    # Link package into ~/.i3
    fs.link_file "$PKG_PATH" "$ELLIPSIS_HOME/.config/i3status"
    $PKG_PATH/compile.sh
}

##############################################################################

##############################################################################

pkg.pull(){

    # Update dot-i3 repo
    git.pull

    # Update the config file
    $PKG_PATH/compile.sh
}

##############################################################################
