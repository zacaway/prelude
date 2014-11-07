(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(autoload 'js2-mode "js2-mode" nil t)

(add-hook 'js2-mode-hook (lambda ()
                           (auto-complete-mode t)
                           (tern-mode t)
                           ;; key bindings for js-comint
                           (local-set-key "\C-x\C-e" 'js-send-last-sexp)
                           (local-set-key "\C-\M-x" 'js-send-last-sexp-and-go)
                           (local-set-key "\C-cb" 'js-send-buffer)
                           (local-set-key "\C-c\C-b" 'js-send-buffer-and-go)
                           (local-set-key "\C-cl" 'js-load-file-and-go)))

(eval-after-load 'js2-mode
  '(progn
     (require 'js2-refactor)
     (js2r-add-keybindings-with-prefix "s-m")))

;; See http://truongtx.me/2014/04/20/emacs-javascript-completion-and-refactoring/
;; and http://ternjs.net
(eval-after-load 'tern
  '(progn
     (require 'tern-auto-complete)
     (tern-ac-setup)))

;; (defun projectile-test-suffix (project-type)
;;   "Hard-coded test suffix for WBP project.  PROJECT-TYPE is ignored."
;;   "_spec")

(setq inferior-js-program-command "env NODE_NO_READLINE=1 node")
(add-hook 'inferior-js-mode-hook
          (lambda ()
            ;; We like nice colors
            (ansi-color-for-comint-mode-on)))
