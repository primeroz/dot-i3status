#!/usr/bin/env bash
##############################################################################
# @file compile.sh
# @date January, 2016
# @author G. Roggemans <g.roggemans@grog.be>
# @copyright Copyright (c) GROG [https://grog.be] 2016, All Rights Reserved
# @license MIT
##############################################################################

# Config
grep -v '^ *\(#.*\|\)$' < $HOME/.config/i3status/config.d/*.conf > $HOME/.config/i3status/i3status.conf

# Smart config
$HOME/.config/i3status/config.d/*.sh >> $HOME/.config/i3status/i3status.conf

##############################################################################

# Local config
if [ -d ~/.local/i3status/config.d ]; then
    # Local config
    grep -v '^ *\(#.*\|\)$' < $HOME/.local/i3status/config.d/*.conf >> $HOME/.config/i3status/i3status.conf

    # Local smart config
    $HOME/.local/i3status/config.d/*.sh >> $HOME/.config/i3status/i3status.conf
fi

##############################################################################
