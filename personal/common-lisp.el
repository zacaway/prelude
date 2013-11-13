;;; Settings for Common Lisp development.

;;; load SLIME from quicklisp install
(if (file-exists-p "~/.quicklisp/slime-helper.el")
    (load (expand-file-name "~/.quicklisp/slime-helper.el")))

;;; default CL implementation started via M-x slime
(setq slime-default-lisp 'sbcl)


;(setq cltl2-url "file:///usr/share/doc/cltl/clm/node1.html")

;;; Setup path to find HyperSpec
(defvar common-lisp-hyperspec-paths
  '("/opt/local/share/doc/lisp/HyperSpec-7-0/HyperSpec/")
  "List of local paths to search for the Common Lisp HyperSpec.")

(dolist (path common-lisp-hyperspec-paths)
  (if (file-exists-p path)
      (setq common-lisp-hyperspec-root (concat "file:" path))))
