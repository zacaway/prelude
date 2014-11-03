(defun php-debug-test (filename)
  "Run current or given PHP script for debugging with geben."
  (interactive "fPHP test file: ")
  (call-interactively 'geben)
  (shell-command
   (concat "XDEBUG_CONFIG='idekey=miket-php-debug' php "
           (projectile-project-root) "script/test "
           (file-relative-name filename (projectile-project-root))
           " &")))

(add-hook 'php-mode-hook
          (lambda ()
            (local-set-key (kbd "<f5>") 'php-debug-test)
            (set (make-local-variable 'compile-command)
                 (format "phpcs --report=emacs --standard=PEAR %s" (buffer-file-name)))))
