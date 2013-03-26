;;; define modifier keys for mac
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)


;;; global key bindings
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C--") 'negative-argument)

(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s--") 'text-scale-decrease)

(global-set-key (kbd "C-M-h") 'mark-defun)

(global-set-key (kbd "M-i") 'ido-goto-symbol)

(global-set-key (kbd "M-n") 'smart-symbol-go-forward)
(global-set-key (kbd "M-p") 'smart-symbol-go-backward)

(global-set-key (kbd "C-`") 'push-mark-no-activate)
(global-set-key (kbd "M-`") 'jump-to-mark)
(define-key global-map [remap exchange-point-and-mark] ; i.e. C-x C-x
  'exchange-point-and-mark-no-activate)

;;; default CL implementation started via M-x slime
(setq slime-default-lisp 'sbcl)

;;; eshell setup
(add-hook 'eshell-mode-hook (lambda ()
                              (yas-minor-mode -1)))
