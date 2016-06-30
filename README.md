#Emacs

(define-key hs-minor-mode-map (kbd "C-#") 'hs-toggle-hiding)
* C-c C-q が覚えにくかったら M-x indent-region

## package
M-x package-list-packages	パッケージの一覧を表示（更新あり）
M-x package-list-packages-no-fetch	パッケージの一覧を表示（更新なし）
M-x package-refresh-contents	パッケージの一覧を更新
M-x package-install PKGNAME	パッケージ名を指定してインストール
h	ヘルプ（以下のコマンドを表示）
i	インストールするパッケージ選択
u	選択の解除
x	インストール／消去の実行
d	消去するパッケージの選択
q	終了
U	アップデート可能なパッケージを全選択

M-x el-get-list-packages
* 使い方
  * M-x el-get-list-packages 一覧表示、欲しい所でi、そのあとx
  * M-x el-get-install インストールしたいel
  * M-x el-get-remove

#### company-mode.el
* 入力保完
* 導入参考: http://qiita.com/syohex/items/8d21d7422f14e9b53b17
* M-x package-install company-mode
* 使い方
* Python http://qiita.com/sune2/items/017b5fadc43f3c44f299
* Bash
* Zsh
* Java
* JavaScript http://qiita.com/sune2/items/e54bb5db129ae73d004b
* Markdown
* html
* CSS
* C++ http://qiita.com/sune2/items/c040171a0e377e1400f6
* C
* Swift http://qiita.com/fujimisakari/items/7e597c1a0fd2ced3d9b7
* Objective-C
* C#
* Scala
* SQL
* Ruby
* Lisp
* PHP http://qiita.com/nanasess/items/b5dc322bac34107cf067

#### helm

#### Markdown
http://qiita.com/gooichi/items/2b185dbdf24166a15ca4

#### elscreen
* タブバー

### Anything
* M-x の候補が見れる

### Helm タグジャンプ
* コードジャンプ
*　http://emacs-jp.github.io/packages/helm/helm-gtags.html

#### neotree
http://kiririmode.hatenablog.jp/entry/20150806/1438786800

## 入れたい
* コピー履歴 http://yohshiy.blog.fc2.com/blog-entry-129.html

### Helm ag
http://rubikitch.com/2015/02/09/helm-ag/
http://qiita.com/syohex/items/0ef831d0c295142b7366

## 気になるメモ
* 試してるSpacemacs
* Gitに上げてREADME,emacs.d/とか入れて
* パッケージ管理Caskもきになる
* Unity http://qiita.com/midnightSuyama/items/97cd7dd80a9465fb4234
* csharp-mode
* 対応するかっこのハイライト
