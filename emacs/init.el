(package-initialize)

;;List of packages:
;;Org-mode
;;bind-key
;;ivy
;;solarized
;;org-bullets
;;which-key
;;magit
;;Doom-themes
;;Company

;; REMEMBER 'Esc' IS THE META KEY IN EMACS ON THE TERMINAL

(require 'bind-key)
(bind-key* "C-c =" 'kill-buffer-and-window)
(bind-key* "C-;" 'other-window)
(bind-key* "s-m" 'eval-buffer)
(bind-key* "C-x p" 'kill-this-buffer)
(bind-key* "M-l" 'next-buffer)
(bind-key* "M-k" 'previous-buffer)
(bind-key* "M-p" 'previous-line)
(bind-key* "M-o" 'next-line)
(bind-key* "M-f" 'forward-word)
(bind-key* "`" 'package-install)

(toggle-frame-fullscreen)
(setq default-cursor-type 'underscore)

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php$" . emmet-mode))

(add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
(setq highlight-indent-guides-method 'character)

(electric-pair-mode 1)
(electric-indent-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(add-hook (quote after-init-hook) t)
 '(add-to-list (quote default-frame-alist))
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(backup-directory-alist (\` (("." . "~/.emacs.d/.emacs_saves"))))
 '(blink-cursor-interval 0.5)
 '(blink-cursor-mode nil)
 '(buffers-menu-show-status nil)
 '(compilation-message-face (quote default))
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(cursor-type (quote box))
 '(custom-enabled-themes (quote (doom-molokai)))
 '(custom-safe-themes
   (quote
    ("84d2f9eeb3f82d619ca4bfffe5f157282f4779732f48a5ac1484d94d5ff5b279" "e88abed2a39b47dfedb1272066f214cb2c9db28ee6aa1794bfb27948792f81c0" "0820d191ae80dcadc1802b3499f84c07a09803f2cb90b343678bdb03d225b26b" "235dc2dd925f492667232ead701c450d5c6fce978d5676e54ef9ca6dd37f6ceb" "9b1c580339183a8661a84f5864a6c363260c80136bd20ac9f00d7e1d662e936a" "de0b7245463d92cba3362ec9fe0142f54d2bf929f971a8cdf33c0bf995250bcf" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "3eb93cd9a0da0f3e86b5d932ac0e3b5f0f50de7a0b805d4eb1f67782e9eb67a4" "003a9aa9e4acb50001a006cfde61a6c3012d373c4763b48ceb9d523ceba66829" "b181ea0cc32303da7f9227361bb051bbb6c3105bb4f386ca22a06db319b08882" "2b8dff32b9018d88e24044eb60d8f3829bd6bbeab754e70799b78593af1c3aba" "3fa07dd06f4aff80df2d820084db9ecbc007541ce7f15474f1d956c846a3238f" "0cd56f8cd78d12fc6ead32915e1c4963ba2039890700458c13e12038ec40f6f5" "64ca5a1381fa96cb86fd6c6b4d75b66dc9c4e0fc1288ee7d914ab8d2638e23a9" "a94f1a015878c5f00afab321e4fef124b2fc3b823c8ddd89d360d710fc2bddfc" "552b25f8e7c6ba6d33f4f3a41e12569881fba6ffa1f264c1d511a7916eb91fe9" "363de9fd1194546e7461bdb766793b1442c222376faa8254b8eafaf25afe48dc" "6b1e6953a08acf12843973ec25d69dbfa1a53d869f649dc991a56fbdf0d7eb9e" "4b3c24a1b13f29c6c6926c194eb8aa76e4ddab7a487cd171043b88ac1f3b4481" "84f35ac02435aa65aef82f510756ab21f173624fcb332dd81e3c9f2adaf6b85b" "f78de13274781fbb6b01afd43327a4535438ebaeec91d93ebdbba1e3fba34d3c" "a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "db2ecce0600e3a5453532a89fc19b139664b4a3e7cbefce3af42b6d9b1d6214" default)))
 '(fci-rule-color "#5B6268")
 '(global-company-mode t)
 '(global-linum-mode 1)
 '(highlight-changes-colors (quote ("#d33682" "#6c71c4")))
 '(highlight-indent-guides-auto-enabled 1)
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(highlight-tail-colors
   (quote
    (("#073642" . 0)
     ("#546E00" . 20)
     ("#00736F" . 30)
     ("#00629D" . 50)
     ("#7B6000" . 60)
     ("#8B2C02" . 70)
     ("#93115C" . 85)
     ("#073642" . 100))))
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(indent-guide-global-mode ni)
 '(inhibit-startup-buffer-menu nil)
 '(inhibit-startup-screen nil)
 '(initial-buffer-choice "./.emacs.d/init.el")
 '(iswitchb-mode nil)
 '(ivy-mode t)
 '(jdee-db-active-breakpoint-face-colors (cons "#1B2229" "#51afef"))
 '(jdee-db-requested-breakpoint-face-colors (cons "#1B2229" "#98be65"))
 '(jdee-db-spec-breakpoint-face-colors (cons "#1B2229" "#3f444a"))
 '(magit-diff-use-overlays nil)
 '(menu-bar-mode nil)
 '(mouse-wheel-progressive-speed nil)
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-ellipsis "  ")
 '(org-fontify-done-headline t)
 '(org-fontify-quote-and-verse-blocks t)
 '(org-fontify-whole-heading-line t)
 '(package-archives
   (quote
    (("gnu" . "http://elpa.gnu.org/packages/")
     ("melpa" . "https://melpa.org/packages/"))))
 '(package-enable-at-startup t)
 '(package-selected-packages
   (quote
    (grandshell-theme emmet-mode highlight-indent-guides web-mode powerline cyberpunk-theme indent-guide airline-themes bind-key ivy company doom-themes magit org-bullets solarized-theme org which-key)))
 '(pos-tip-background-color "#073642")
 '(pos-tip-foreground-color "#93a1a1")
 '(ring-bell-function (quote ignore))
 '(scroll-bar-mode nil)
 '(setq message-log-max)
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(sublimity-attractive-centering-width 200)
 '(sublimity-mode t)
 '(sublimity-scroll-weight 10)
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(tool-bar-mode nil)
 '(uniquify-buffer-name-style (quote post-forward) nil (uniquify))
 '(vc-annotate-background "#1B2229")
 '(vc-annotate-background-mode nil)
 '(vc-annotate-color-map
   (list
    (cons 20 "#98be65")
    (cons 40 "#b4be6c")
    (cons 60 "#d0be73")
    (cons 80 "#ECBE7B")
    (cons 100 "#e6ab6a")
    (cons 120 "#e09859")
    (cons 140 "#da8548")
    (cons 160 "#d38079")
    (cons 180 "#cc7cab")
    (cons 200 "#c678dd")
    (cons 220 "#d974b7")
    (cons 240 "#ec7091")
    (cons 260 "#ff6c6b")
    (cons 280 "#cf6162")
    (cons 300 "#9f585a")
    (cons 320 "#6f4e52")
    (cons 340 "#5B6268")
    (cons 360 "#5B6268")))
 '(vc-annotate-very-old-color nil)
 '(weechat-color-list
   (quote
    (unspecified "#002b36" "#073642" "#990A1B" "#dc322f" "#546E00" "#859900" "#7B6000" "#b58900" "#00629D" "#268bd2" "#93115C" "#d33682" "#00736F" "#2aa198" "#839496" "#657b83")))
 '(which-key-mode t)
 '(windmove-default-keybindings nil)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 220 :width normal :foundry "nil" :family "Inconsolata"))))
 '(cursor ((t (:background "orange1"))))
 '(mode-line ((t (:background "gold1" :foreground "gold1" :box nil))))
 '(mode-line-buffer-id ((t (:foreground "black" :weight bold))))
 '(mode-line-highlight ((t (:inherit highlight)))))
