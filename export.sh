#!/bin/sh

CU=/usr/bin/csrutil
G=/usr/bin/grep

if $CU status 2>&1 | $G enabled > /dev/null; then
    echo Please set SIP disable.
    echo Read the readme.md for detail.
else
    cp "`sh cat-dir.sh KeySetting_Default.plist`" .
    cp "`sh cat-dir.sh KeySetting_Windows.plist`" .
fi
