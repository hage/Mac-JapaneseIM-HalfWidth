日本語入力のキー割り当て変更
============================

Mac 標準の日本語入力におけるキーの割り当てを変更するための作業ディレクトリ。設定ファイルは以下の二つである;

* `KeySetting_Default.plist`
* `KeySetting_Windows.plist`

これらを編集、git によるバージョン管理、

cat-dir.sh
----------
キーの設定ファイルのあるディレクトリを出力する。引数をつけるとディレクトリの末尾にそれを付加する。使用時は以下のようにクオートして使うこと。

```
ls "`sh cat-dir.sh <filename>`"
```

このスクリプトは以下に記述するスクリプトで共通に使用する。


import.sh
---------
このディレクトリに設定ファイルをコピーしてくる。設定ファイルが存在する場所は `cat-dir.sh` で示されるディレクトリである。


export.sh
---------
このディレクトリの設定ファイルを反映させる。反映させるには SIP: System Integrity Protection (rootless mode) を無効化する必要がある。

### 確認方法 ###

SIP の有効・無効を確認する。

```
% csrutil status
```

### SIP 無効化 ###

1. リカバリモードで再起動 -- 起動時に <kbd>⌘</kbd>+<kbd>R</kbd> を押す
2. ターミナルを起動し `csrutil disable`
3. 通常の再起動


cf. [macOS 10.13 / 10.14: ファイルシステム保護の設定をする](https://www.cleverfiles.com/help/ja/1013-sip/)

### SIP 有効化 ###

有効化とほぼ同様だが、ステップ 2 で `csrutil enable` と打つ。
