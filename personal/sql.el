(add-hook 'sql-interactive-mode-hook
          (lambda ()
            (sql-set-product "postgres")
            (toggle-truncate-lines t)))
