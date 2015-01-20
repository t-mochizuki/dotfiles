(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(require 'mozc)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(prefer-coding-system 'utf-8)

(require 'whitespace)
(setq whitespace-style '(face
                         trailing
                         tabs
                         spaces
                         empty
                         space-mark
                         tab-mark))

(setq whitespace-display-mappings
      '((space-mark ?\u3000 [?\u25a1])
        (tab-mark ?\t [?\u00BB ?\t] [?\\ ?\t])))

(setq whitespace-space-regexp "\\(\u3000+\\)")
(setq whitespace-action '(auto-cleanup))
(global-whitespace-mode t)

(set-face-attribute 'whitespace-trailing nil
                    :background "Black"
                    :foreground "DeepPink"
                    :underline t)
(set-face-attribute 'whitespace-tab nil
                    :background "Black"
                    :foreground "LightSkyBlue"
                    :underline t)
(set-face-attribute 'whitespace-space nil
                    :background "Black"
                    :foreground "GreenYellow"
                    :weight 'bold)
(set-face-attribute 'whitespace-empty nil
                    :background "Black")

(recentf-mode t)
(recentf-open-files)
(global-hl-line-mode t)
(which-function-mode t)
(defalias 'yes-or-no-p 'y-or-n-p)
(setq debug-on-error t)
(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(find-function-setup-keys)
(show-paren-mode t)
(savehist-mode t)
(setq history-length 1000)
(setq set-mark-command-repeat-pop t) ;; C-u C-SPC C-SPC ...
(setq inferior-lisp-program "/usr/local/bin/sbcl")

(global-set-key (kbd "C-h") 'delete-backward-char)
(global-set-key (kbd "M-h") 'backward-kill-word)

(require 'paredit)
(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'emacs-lisp-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'enable-paredit-mode)
(add-hook 'lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-mode-hook 'enable-paredit-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'enable-paredit-mode)

(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories
             "~/.emacs.d/elpa/auto-complete-20141208.809/dict")
(ac-config-default)

;; (setq gdb-many-windows nil)
(add-hook 'gdb-mode-hook '(lambda () (gud-tooltip-mode t)))
(setq gdb-use-separate-io-buffer t)
(setq gud-tooltip-echo-area t)

(require 'relative-line-numbers)
(global-relative-line-numbers-mode)
;; (global-linum-mode)

(add-to-list 'auto-mode-alist '("\\.json$" . js-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-hook 'js2-mode-hook 'ac-js2-mode)
(setq js2-highlight-level 3)
(eval-after-load 'js-mode '(define-key js-mode-map "{" 'paredit-open-curly))
(eval-after-load 'js-mode '(define-key js-mode-map "}" 'paredit-close-curly-and-newline))

(require 'goto-chg)
(global-set-key (kbd "C-x j") 'goto-last-change)
(global-set-key (kbd "C-x J") 'goto-last-change-reverse)

(require 'popup)
;; (add-to-list 'load-path "~/.emacs.d/web")
;; (require 'popup-select-window)
;; (global-set-key "\C-xo" 'popup-select-window)

(require 'twittering-mode)

;; (require 'skk)
;; (setq skk-large-jisyo "/usr/share/skk/SKK-JISYO.ML")
;; (setq default-input-method "japanese-skk")
;; (set-language-environment "Japanese")

(ido-mode t)

;; (require 'sbtp)
;; (setq sbtp-prompt-string "> "
;;       sbtp-lang "ja_JP.UTF-8")
;; (define-key term-raw-map (kbd "C-a") 'sbtp-begging-of-line)
;; (define-key scala-mode-map (kbd "C-c C-p") 'sbtp-console-send)
;; (define-key scala-mode-map (kbd "C-c C-l") 'sbtp-console-send-line)

;; (add-to-list 'load-path "~/.emacs.d/el-get/ensime-emacs")
;; (add-to-list 'load-path "~/.emacs.d/el-get/ensime_2.10.0-RC3-0.9.8.2/elisp")
;; You can also customize `ensime-inf-get-project-root' and `ensime-inf-get-repl-cmd-line'

(setenv "JAVA_HOME" "/usr/lib/jvm/java-1.7.0-openjdk-amd64")
(setenv "JDK_HOME" "/usr/lib/jvm/java-1.7.0-openjdk-amd64")

(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

; (setq browse-url-browser-function 'w3m-browse-url)
; (autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)
; ;; optional keyboard short-cut
; (global-set-key "\C-xm" 'browse-url-at-point)
