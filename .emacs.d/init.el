(show-paren-mode t)

(setq process-coding-system-alist
      (cons '("/usr/local/bin/gosh" utf-8 . utf-8) process-coding-system-alist))

(setq scheme-program-name "/usr/local/bin/gosh -i")
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Run an inferior Scheme process." t)

(setq load-path (cons "~/.emacs.d/elisp" load-path))
(require 'install-elisp)
(setq install-elisp-repository-directory "~/.emacs.d/elisp/")

;(require 'auto-install)
;(setq auto-install-directory "~/.emacs.d/elisp/")
;(auto-install-update-emacswiki-package-name t)
;(auto-install-compatibility-setup)

(require 'anything)
(require 'acp)
(acp-mode-turn-on)


(add-to-list 'load-path "/Users/eita/.emacs.d/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "/Users/eita/.emacs.d//ac-dict")
(ac-config-default)

;(require 'linum')
;(global-linum-mode)

;(menu-bar-mode -1)

; Text モードにするとき、常に auto-fill-mode にします。
(setq text-mode-hook
      '(lambda () (auto-fill-mode 1)))

(setq-default tab-width 4 indent-tabs-mode nil)
(setq indent-tabs-mode 't)

;カーソルの位置が何行目か
(line-number-mode 1)

;括弧の対応表示
(require 'paren)
;;色の設定を変えたいときは、次のように書いてください。 

(make-face 'paren-match)
; マッチしたときのフォアグラウンドの色
(set-face-foreground 'paren-match "gray80")
; マッチしたときのバックグラウンドの色
(set-face-background 'paren-match "color-69")

(make-face 'paren-mismatch)
; マッチしなかったときのフォアグラウンドの色
(set-face-foreground 'paren-mismatch "white")
; マッチしなかったときのバックグラウンドの色
(set-face-background 'paren-mismatch "lightcoral")

(setq show-paren-face 'paren-match)
(setq show-paren-mismatch-face 'paren-mismatch)

(setq auto-mode-alist
      (cons (cons "\\.cpp$" 'c++-mode) auto-mode-alist))

;; Stop at the end of the file, not just add lines
(setq next-line-add-newlines nil)

;; Always end a file with a newline
(setq require-final-newline t)

;; Initial 
(setq initial-frame-alist
          (append (list
                   '(foreground-color . "color-253") ;; 文字色
                   '(background-color . "color-235") ;; 背景色
                   '(border-color     . "SkyBlue")
                   '(mouse-color      . "white")
                   '(cursor-color     . "color-241")
                   '(menu-bar-lines . 1)
                   ;'(font . "my-fontset") 
                   ;'(vertical-scroll-bars . nil) ;;スクロールバーを消す
                   '(width . 100) ;; ウィンドウ幅
                   '(height . 35) ;; ウィンドウの高さ
                   '(top . 60) ;;表示位置
                   '(left . 140) ;;表示位置
                   )
                  initial-frame-alist))
(setq default-frame-alist initial-frame-alist)

(global-hl-line-mode)

(set-face-background 'hl-line "color-60")
(set-face-background 'region "SkyBlue")
(set-face-foreground 'region "black")

;; Set goto-line to M-g
(global-set-key "\M-g" 'goto-line)

;; Ser replace-regexp to M-r
(global-set-key "\M-r" 'replace-regexp)

;;;C-k で改行を含めてカット
(setq kill-whole-line t)
