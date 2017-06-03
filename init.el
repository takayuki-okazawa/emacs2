;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   Genelal
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; スタートアップ非表示
(setq inhibit-startup-screen t)

;; scratchの初期メッセージ消去
(setq initial-scratch-message "")

;; ツールバー非表示
(tool-bar-mode -1)

;; メニューバーを非表示
(menu-bar-mode -1)

;; スクロールバー非表示
(set-scroll-bar-mode nil)
;; Scroll window on a line-by-line basis
(setq scroll-conservatively 1)

;; タイトルバーにファイルのフルパス表示
(setq frame-title-format
      (format "%%f - Emacs@%s" (system-name)))

;; 行番号表示
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#800"
                    :height 0.9)

;; 括弧の範囲内を強調表示
;;(show-paren-mode t)
;;(setq show-paren-delay 0)
;;(setq show-paren-style 'expression)

;; 括弧の範囲色
;;(set-face-background 'show-paren-match-face "#500")

;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;; バックアップを残さない
(setq make-backup-files nil)

;; yes or noをy or n
(fset 'yes-or-no-p 'y-or-n-p)

;; 最近使ったファイルをメニューに表示
(recentf-mode t)

;; 最近使ったファイルの表示数
(setq recentf-max-menu-items 10)

;; 最近開いたファイルの保存数を増やす
;; M-x recentf-open-file で確認できる
(setq recentf-max-saved-items 3000)

;; ミニバッファの履歴を保存する
;; 検索時に M-p(又はM-n) で履歴確認
(savehist-mode 1)

;; ミニバッファの履歴の保存数を増やす
(setq history-length 3000)

;; 行間
(setq-default line-spacing 0)

;; 1行ずつスクロール
(setq scroll-conservatively 35
      scroll-margin 0
      scroll-step 1)
(setq comint-scroll-show-maximum-output t) ;; shell-mode

;; フレームの透明度
;;(set-frame-parameter (selected-frame) 'alpha '(0.85))

;; フレームのサイズ
(setq initial-frame-alist '((width . 140) (height . 40) (top . 10)))

;; C-Enter で矩形選択
;; 詳しいキーバインド操作：http://dev.ariel-networks.com/articles/emacs/part5/
(cua-mode t)
(setq cua-enable-cua-keys nil)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   Theme
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; https://emacsthemes.com/
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;;(load-theme 'reykjavik)
;;(load-theme 'kooten t)
;;(load-theme 'jbeans t)
;;(load-theme 'idea-darkula t)
;;(load-theme 'badwolf t)
;;(load-theme 'caroline t)
(load-theme #'abyss t)
;;(load-theme 'green-phosphor t)
;;(load-theme 'mustard-theme t)
;;(load-theme 'peacock-theme t)
;;(load-theme 'suscolors-theme t)
;;(load-theme 'ubuntu-theme t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   Package
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'package)

;; MELPAを追加
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)

;; MELPA-stableを追加
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Marmaladeを追加
(add-to-list 'package-archives  '("marmalade" . "http://marmalade-repo.org/packages/") t)

;; Orgを追加
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

;; 初期化
(package-initialize)

;;M-x package-install
;;指定したパッケージをインストールする.
;;M-x package-refresh-contents
;;パッケージ情報を更新する. 最新のものをインストールしたい場合は, 事前に実行して置くと 良い. 後述の package-list-packagesからインストールを行う場合は不要.
;;M-x package-list-packages
;;パッケージ操作バッファを開く.
;;package-list-packagesでの操作一覧
;;キー	概要
;;`r`	パッケージ一覧の更新
;;`x`	マークの実行
;;`U`	Upgrade
;;`i`	インストールマークをつける
;;`d`	削除マークをつける
;;`~`	古いパッケージに削除マークをつける
;;`u`	マークを除去する
;;`?`	パッケージの概要を表示
;;`n`	次の行へ移動
;;`p`	前の行へ移動
;;`h`	help
;;`q`, `z`	終了

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   El-get パッケージ管理
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-to-list 'load-path "~/.emacs.d/plugin/el-get/")
(require 'el-get)
;; M-x el-get-list-packages 一覧表示、欲しい所でi、そのあとx
;; M-x el-get-install インストールしたいel
;; M-x el-get-remove

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   company-auto  パッケージ管理
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'company)
;;(global-company-mode) ; 全バッファで有効にする
(setq company-idle-delay 0) ; デフォルトは0.5
(setq company-minimum-prefix-length 2) ; デフォルトは4
(setq company-selection-wrap-around t) ; 候補の一番下でさらに下に行こうとすると一番上に戻る

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   company-auto  Ruby
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(eval-after-load 'company
  '(add-to-list 'company-backends 'company-inf-ruby))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   company-auto  PHP
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(add-hook 'php-mode-hook
          '(lambda ()
             (require 'company-php)
             (company-mode t)
             (add-to-list 'company-backends 'company-ac-php-backend )))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   company-auto  C++
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'irony)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)
(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
(add-to-list 'company-backends 'company-irony) ; backend追加

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   company-auto  Python
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; M-x package-install RET company-jedi RET
;;M-. 定義へジャンプ
;;M-, 定義ジャンプから戻る
(require 'jedi-core)
(setq jedi:complete-on-dot t)
(setq jedi:use-shortcuts t)
(add-hook 'python-mode-hook 'jedi:setup)
(add-to-list 'company-backends 'company-jedi) ; backendに追加
;; インストール時のError対応
;; pipインストール後
;; $ sudo pip install --upgrade ~/.emacs.d/elpa/jedi-core-20160501.2043/

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   company-auto  JavaScript
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(setq company-tern-property-marker "")
(defun company-tern-depth (candidate)
  "Return depth attribute for CANDIDATE. 'nil' entries are treated as 0."
  (let ((depth (get-text-property 0 'depth candidate)))
    (if (eq depth nil) 0 depth)))
(add-hook 'js2-mode-hook 'tern-mode) ; 自分が使っているjs用メジャーモードに変える
(add-to-list 'company-backends 'company-tern) ; backendに追加

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   Markdown
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   ファイラー
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'nav)
(setq nav-split-window-direction 'vertical) ;; 分割したフレームを垂直に並べる
(global-set-key "\C-x\C-d" 'nav-toggle)     ;; C-x C-d で nav をトグル

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   helm
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'helm-config)
  (helm-mode 1)
  (define-key global-map (kbd "M-x")     'helm-M-x)
  (define-key global-map (kbd "C-x C-f") 'helm-find-files)
  (define-key global-map (kbd "C-x C-r") 'helm-recentf)
  (define-key global-map (kbd "M-y")     'helm-show-kill-ring)
  (define-key global-map (kbd "C-c i")   'helm-imenu)
  (define-key global-map (kbd "C-x b")   'helm-buffers-list)
  (define-key global-map (kbd "M-r")     'helm-resume)
  (define-key global-map (kbd "C-M-h")   'helm-apropos)
  (define-key helm-map (kbd "C-h") 'delete-backward-char)
  (define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)
  (define-key helm-find-files-map (kbd "TAB") 'helm-execute-persistent-action)
  (define-key helm-read-file-map (kbd "TAB") 'helm-execute-persistent-action)

(require 'helm-ag)
(setq helm-ag-base-command "ag --nocolor --nogroup --ignore-case")
(setq helm-ag-thing-at-point 'symbol)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                Tabとインデント
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; タブをスペースで扱う
;;(setq-default indent-tabs-mode nil)

;; タブ幅
;;(custom-set-variables '(tab-width 4))

;;タブ幅を押したら4つスペース
;;(setq default-tab-width 4)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;                   tabber タブ
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(require 'tabbar)
(tabbar-mode)
(global-set-key "\M-]" 'tabbar-forward)  ; 次のタブ
(global-set-key "\M-[" 'tabbar-backward) ; 前のタブ
;; タブ上でマウスホイールを使わない
(tabbar-mwheel-mode nil)
;; グループを使わない
(setq tabbar-buffer-groups-function nil)
;; 左側のボタンを消す
(dolist (btn '(tabbar-buffer-home-button
               tabbar-scroll-left-button
               tabbar-scroll-right-button))
  (set btn (cons (cons "" nil)
                 (cons "" nil))))

;; スタイル
(set-face-attribute
 'tabbar-default nil
 :background "gray20"
 :foreground "gray20"
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-unselected nil
 :background "gray30"
 :foreground "white"
 :box '(:line-width 5 :color "gray30" :style nil))
(set-face-attribute
 'tabbar-selected nil
 :background "gray75"
 :foreground "black"
 :box '(:line-width 5 :color "gray75" :style nil))
(set-face-attribute
 'tabbar-highlight nil
 :background "white"
 :foreground "black"
 :underline nil
 :box '(:line-width 5 :color "white" :style nil))
(set-face-attribute
 'tabbar-button nil
 :box '(:line-width 1 :color "gray20" :style nil))
(set-face-attribute
 'tabbar-separator nil
 :background "gray20"
 :height 0.6)

 ;; 表示しないバッファ
 (setq tabbar-buffer-list-function
       (lambda ()
         (remove-if
          (lambda(buffer)
            ;;(unless (string= (buffer-name buffer) "*scratch*")
              (find (aref (buffer-name buffer) 0) " *"))
            ;;)
          (buffer-list))))
