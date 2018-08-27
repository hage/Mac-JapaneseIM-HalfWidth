#!/bin/sh

CU=/usr/bin/csrutil
G=/usr/bin/grep

if $CU status 2>&1 | $G enabled > /dev/null; then
    echo Please set SIP disable.
    echo Read the readme.md for detail.
else
    cp KeySetting_Default.plist "`sh cat-dir.sh`"
    cp KeySetting_Windows.plist "`sh cat-dir.sh`"
    killall -HUP JapaneseIM
fi
