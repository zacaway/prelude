;;; packages.el --- configure additional ELPA packages required

;;; Commentary:

;; See ../README.md

;;; Code:

(prelude-ensure-module-deps '(
                              ;; JS/web development
                              js2-mode
                              js2-refactor
                              tern
                              tern-auto-complete
                              tss
                              htmlize
                              simple-httpd
                              ;; OCaml
                              tuareg
                              ;; Utilities
                              golden-ratio
                              ag
                              smartparens
                              monky
                              gnuplot
                              ledger-mode
                              flycheck-ledger
                              dklrt
                              ;; Dired extensions
                              dired+))

;;; packages.el ends here
