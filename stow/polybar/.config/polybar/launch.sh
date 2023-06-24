#!/usr/bin/env bash

# kill all polybars and start only if nothing was running before
polybar-msg cmd quit || 
    polybar top 2>&1 | tee -a /tmp/polybar.log & disown
