#!/bin/sh

# ls "`sh cat-dir.sh <filename>`" のようにクオートして使う

dir=$1 || ""
echo /System/Library/Input Methods/JapaneseIM.app/Contents/PlugIns/JapaneseIM.appex/Contents/Resources/${dir}
