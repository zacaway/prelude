;;; define modifier keys for mac
(setq mac-command-modifier 'meta)
(setq mac-option-modifier 'super)

;;; global key bindings
(define-key global-map (kbd "RET") 'newline-and-indent)

(define-key global-map (kbd "C--") 'negative-argument)

(define-key global-map (kbd "s-+") 'text-scale-increase)
(define-key global-map (kbd "s--") 'text-scale-decrease)


;;; default CL implementation started via M-x slime
(setq slime-default-lisp 'sbcl)
