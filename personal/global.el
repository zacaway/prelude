;;; initial frame size & position
;; (setq initial-frame-alist
      ;; '((top . 1) (left . 800) (width . 100) (height . 70)))

;;; define modifier keys for mac
(setq mac-command-modifier 'super)
(setq mac-option-modifier 'meta)


;;; global key bindings
(global-set-key (kbd "RET") 'newline-and-indent)

(global-set-key (kbd "C--") 'negative-argument)

(global-set-key (kbd "C-^") 'join-line)

(global-set-key (kbd "s-+") 'text-scale-increase)
(global-set-key (kbd "s--") 'text-scale-decrease)

(global-set-key (kbd "C-M-h") 'mark-defun)

(global-set-key (kbd "M-n") 'smart-symbol-go-forward)
(global-set-key (kbd "M-p") 'smart-symbol-go-backward)

(global-set-key (kbd "C-`") 'push-mark-no-activate)
(global-set-key (kbd "M-`") 'jump-to-mark)
(define-key global-map [remap exchange-point-and-mark] ; i.e. C-x C-x
  'exchange-point-and-mark-no-activate)

(global-set-key (kbd "M-;") 'smart-comment-dwim)

;;; eshell setup
(add-hook 'eshell-mode-hook (lambda ()
                              (yas-minor-mode -1)))

;;; terminal-only settings
(unless (display-graphic-p)
  (when (require 'w3m nil :noerror)
    (message "Using w3m browser")
    (setq browse-url-browser-function 'w3m-browse-url)))

;;; enable golden ratio mode
;; (golden-ratio-mode)

;;; enable fast hg status with monky
;;; see: https://github.com/ananthakumaran/monky
(setq monky-process-type 'cmdserver)

;;; disable flycheck doc warnings in elisp buffers
(eval-after-load 'flycheck
  '(setq flycheck-checkers (delq 'emacs-lisp-checkdoc flycheck-checkers)))

;;; enable tail mode for log files
(add-to-list 'auto-mode-alist '("\\.log\\'" . auto-revert-tail-mode))

;; enable guide-key mode
(setq guide-key/guide-key-sequence '("C-x r" "C-x 4" "C-c" "C-c p"))
(guide-key-mode 1)
