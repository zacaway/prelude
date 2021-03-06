;; dired-x extensions
;;
;; See: https://www.gnu.org/software/emacs/manual/html_node/dired-x/index.html
;; and: http://www.masteringemacs.org/article/dired-shell-commands-find-xargs-replacement

(add-hook 'dired-load-hook
          (lambda ()
            (load "dired-x")
            ;; Set dired-x global variables here.  For example:
            ;; (setq dired-guess-shell-gnutar "gtar")
            ;; (setq dired-x-hands-off-my-keys nil)
            ))
(add-hook 'dired-mode-hook
          (lambda ()
            ;; Set dired-x buffer-local variables here.  For example:
            ;; (dired-omit-mode 1)
            ))
