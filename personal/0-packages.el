;;; packages.el --- configure additional ELPA packages required

;;; Commentary:

;; See ../README.md

;;; Code:

(prelude-ensure-module-deps '(
                              ;; JS/web development
                              js2-mode
                              js2-refactor
                              discover-js2-refactor
                              js-comint
                              tern
                              tern-auto-complete
                              tss
                              htmlize
                              simple-httpd
                              geben
                              ;; OCaml
                              tuareg
                              ;; Utilities
                              discover
                              golden-ratio
                              ag
                              smartparens
                              monky
                              gnuplot
                              ledger-mode
                              flycheck-ledger
                              dklrt
                              guide-key
                              ;; Dired extensions
                              dired+))

;;; packages.el ends here
