;; load PHP Repl (https://github.com/ieure/php_repl)
;; Usage: run-php
(require 'php-repl)

(defun php-debug-test (filename)
  "Run current or given PHP script for debugging with geben."
  (interactive "fPHP test file: ")
  (call-interactively 'geben)
  (shell-command
   ; use idekey that matches Chome Xdebug plugin default
   (concat "XDEBUG_CONFIG='idekey=XDEBUG_ECLIPSE' php "
           (projectile-project-root) "script/test "
           (file-relative-name filename (projectile-project-root))
           " &")))

(add-hook 'php-mode-hook
          (lambda ()
            (local-set-key (kbd "<f5>") 'php-debug-test)
            (set (make-local-variable 'compile-command)
                 (format "phpcs --report=emacs --standard=PEAR %s" (buffer-file-name)))))
