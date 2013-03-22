;;; packages.el --- configure additional ELPA packages required

;;; Commentary:

;; See ../README.md

;;; Code:

(require 'prelude-common-lisp)
(require 'prelude-emacs-lisp)
(require 'prelude-css)
(require 'prelude-org)
(require 'prelude-xml)

(prelude-ensure-module-deps '(js2-mode js2-refactor))

;;; packages.el ends here
