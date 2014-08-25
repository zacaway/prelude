(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(autoload 'js2-mode "js2-mode" nil t)

(add-hook 'js2-mode-hook
          (lambda ()
            (require 'js2-refactor)
            (js2r-add-keybindings-with-prefix "C-c C-r")))

;; See: http://ternjs.net
;; (add-to-list 'load-path "~/Projects/tern/emacs/")
;; (autoload 'tern-mode "tern" nil t)

;; (add-hook 'js2-mode-hook
;;           (lambda () (if (locate-library "tern")
;;                          (tern-mode t))))

(defun projectile-test-suffix (project-type)
  "Hard-coded test suffix for WBP project.  PROJECT-TYPE is ignored."
  "_spec")
