;;; private/aru/config.el -*- lexical-binding: t; -*-

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
(setq org-ellipsis " ▼ ")
(setq agenda-files (directory-files-recursively "~/Google Drive/masters/semester-1/" "todo.org$"))
(add-to-list 'agenda-files (expand-file-name "todo.org" org-directory))
(setq org-agenda-files agenda-files)

;; latex
(set! :latex-bibtex-file "./references.bib")

;; editing
(add-hook! text-mode 'auto-fill-mode)
