;;; settings for CL dev

;(setq cltl2-url "file:///usr/share/doc/cltl/clm/node1.html")

;; TODO: create a list of places to look for the hyperspec
(if (file-exists-p "/opt/local/share/doc/lisp/HyperSpec-7-0/HyperSpec/")
    (setq common-lisp-hyperspec-root "file:/opt/local/share/doc/lisp/HyperSpec-7-0/HyperSpec/"))
