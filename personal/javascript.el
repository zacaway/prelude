(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(autoload 'js2-mode "js2-mode" nil t)

(add-hook 'js2-mode-hook (lambda ()
                           (auto-complete-mode t)
                           (tern-mode t)))

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

(defun projectile-test-suffix (project-type)
  "Hard-coded test suffix for WBP project.  PROJECT-TYPE is ignored."
  "_spec")
