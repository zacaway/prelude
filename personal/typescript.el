(require 'flycheck)
(require 'tss)

(add-to-list 'auto-mode-alist '("\\.ts$" . typescript-mode))
(autoload 'typescript-mode "typescript")

(defconst typescript-imenu-generic-expression
  '(("Class" "^class\\[ \n\t\\]+\\(\\w+\\)" 1)))

(add-to-list 'compilation-error-regexp-alist-alist
             '(grunt-tslint
               ;; Match errors from grunt tslint plugin
               "^>> \\(.*?\\)\\[\\([0-9]+\\), \\([0-9]+\\)\\]: " 1 2 3))

(add-to-list 'compilation-error-regexp-alist 'grunt-tslint)

(add-hook 'typescript-mode-hook
          (lambda ()
            ;; enable basic imenu support
            (setq imenu-generic-expression typescript-imenu-generic-expression)

            ;; follow slime conventions for describe symbol
            (setq tss-popup-help-key "C-c C-d C-d")

            ;; usual etags jump to definition
            (setq tss-jump-to-definition-key "C-.")

            ;; (customize-group "tss")

            (tss-config-default)

            (flymake-mode -1)))

;; TODO: enable customization of tsc arguments
;; http://flycheck.readthedocs.org/en/latest/manual/extending.html#configuration-files-for-syntax-checkers

;; TODO: disable flymake-mode (still seems to be alive?)

;; TODO: maybe find better way to suppress output than /dev/null (what happens on Win32?)

;; TODO: submit flycheck checker to flycheck maintainers


(flycheck-define-checker typescript-tsc
  "A TypeScript checker using tsc.

See URL: `http://www.typescriptlang.org'."
  :command ("tsc" "--out" "/dev/null" "--module" "amd" source-inplace)
  :error-patterns
  ((error line-start (file-name) "(" line "," column
          "): error TS" (zero-or-more not-newline) ": " (message) line-end))
  :modes typescript-mode)
