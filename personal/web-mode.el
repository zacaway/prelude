;; See http://web-mode.org

(add-hook 'web-mode-hook
          (lambda ()
            (define-key web-mode-map (kbd "C-c /") 'web-mode-element-close)))
