#Emacs

## package
* M-x package-list-packages-no-fetch	パッケージの一覧を表示（更新なし）
* M-x package-refresh-contents	パッケージの一覧を更新
* M-x package-install PKGNAME	パッケージ名を指定してインストール
* M-x package-list-packages	パッケージの一覧を表示（更新あり）
  * h	ヘルプ（以下のコマンドを表示）
  * i	インストールするパッケージ選択
  * u	選択の解除
  * x	インストール／消去の実行
  * d	消去するパッケージの選択
  * q	終了
  * U	アップデート可能なパッケージを全選択

## el-get
* M-x el-get-list-packages
* 使い方
  * M-x el-get-list-packages 一覧表示、欲しい所でi、そのあとx
  * M-x el-get-install インストールしたいel
  * M-x el-get-remove

#### company-mode.el
* 入力保完
* 導入参考: http://qiita.com/syohex/items/8d21d7422f14e9b53b17

#### company-inf-ruby(company-modeの補完強化)
* Ruby

#### ac-php(company-modeの補完強化)
* PHP

#### company-mode.el(company-tern)
* JavaScript
* http://qiita.com/sune2/items/e54bb5db129ae73d004b
* M-. 定義ジャンプ
* M-, 定義ジャンプから戻る
* C-c C-r 変数名のリネーム
* C-c C-c 型の取得
* C-c C-d docsの表示

#### company-mode.el(company-jedi)
* Python
* http://qiita.com/sune2/items/017b5fadc43f3c44f299
* M-. 定義へジャンプ
* M-, 定義ジャンプから戻る

#### markdown-mode
* Markdown

#### helm
独自キーバインド
* M−x　機能を候補見ながら探せる
* C-x f  ファイル名の候補を見ながら指定できる
* M-y コピーの履歴を見る
* C-c i imenuのhelm版 メソッド表示して移動する
* C-x b 開いているファイルの一覧

#### helm-ag

#### tabber
* タブバー

#### nav
* ファイラー


------
### Helm タグジャンプ
* コードジャンプ
*　http://emacs-jp.github.io/packages/helm/helm-gtags.html
