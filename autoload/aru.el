;;; ~/.config/doom/autoload/aru.el -*- lexical-binding: t; -*-
;; taken from hlissner/doom-emacs-private

;;;###autoload
(defun +aru/find-in-dotfiles ()
  "Open a file somewhere in ~/dotfiles via a fuzzy filename search."
  (interactive)
  (doom-project-find-file (expand-file-name "~/dotfiles")))

;;;###autoload
(defun +aru/browse-dotfiles ()
  "Browse the files in ~/dotfiles."
  (interactive)
  (doom-project-browse (expand-file-name "~/dotfiles")))

;;;###autoload
(defun +aru/find-notes-for-major-mode (&optional arg)
  "TODO"
  (interactive "P")
  (let ((default-directory (expand-file-name "code/" +org-dir)))
    (if arg
        (call-interactively #'find-file)
      (find-file
       (expand-file-name (concat (string-remove-suffix "-mode" (symbol-name major-mode)) ".org"))))))
