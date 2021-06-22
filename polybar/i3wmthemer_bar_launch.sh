#!/bin/env sh

killall -q polybar

sleep 1;

polybar i3wmthemer_barl &
polybar topr &
