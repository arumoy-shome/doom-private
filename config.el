;;; private/aru/config.el -*- lexical-binding: t; -*-

(add-to-list 'default-frame-alist '(inhibit-double-buffering . t))

(set-default
 user-full-name "Arumoy Shome"
 user-mail-address "arumoy.shome@gmail.com"

+workspaces-switch-project-function #'ignore)

(add-to-list 'org-modules 'org-habit t)


;; ui
(setq doom-theme 'doom-tomorrow-night)
(setq doom-font (font-spec :family "Source Code Pro" :size 13 :weight 'light))
(setq doom-big-font (font-spec :family "Source Code Pro" :size 15 :weight 'normal))
(setq doom-line-numbers-style nil)
(setq ns-use-thin-smoothing t)
(add-to-list 'default-frame-alist '(ns-transparent-titlebar . t))
(add-to-list 'default-frame-alist '(ns-appearance . dark))
(add-hook 'window-setup-hook #'toggle-frame-maximized)

;; org
(setq
 org-agenda-files (list org-directory)
 org-ellipsis " ▼ ")

;; latex
(set! :latex-bibtex-file "./references.bib")

;; editing
(add-hook! text-mode 'auto-fill-mode)

;; deft
(setq deft-directory org-directory)

;; multi-term
(setq multi-term-program "/usr/local/bin/fish")

;; eshell
(after! eshell
  (set-eshell-alias!
   "f"   "find-file $1"
   "l"   "ls -lh"
   "d"   "dired $1"
   "gl"  "(call-interactively 'magit-log-current)"
   "gs"  "magit-status"
   "gc"  "magit-commit"
   "rg"  "rg --color=always $*"))

;; keybindings
(map!
 :n "C-h"   #'evil-window-left
 :n "C-j"   #'evil-window-down
 :n "C-k"   #'evil-window-up
 :n "C-l"   #'evil-window-right

 (:after treemacs-evil
   (:map evil-treemacs-state-map
     "C-h" #'evil-window-left
     "C-l" #'evil-window-right))

(:leader
   (:prefix "f"
     :desc "Find file in dotfiles" :n "t" #'+aru/find-in-dotfiles
     :desc "Browse dotfiles"       :n "T" #'+aru/browse-dotfiles)
   (:prefix "n"
     :desc "Browse mode notes"     :n  "m" #'+aru/find-notes-for-major-mode
     :desc "Browse project notes"  :n  "p" #'+aru/find-notes-for-project)))
