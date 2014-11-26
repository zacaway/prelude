(defun point-in-string-p (pt)
  "Returns t if PT is in a string"
  (eq 'string (syntax-ppss-context (syntax-ppss pt))))

(defun beginning-of-string ()
  "Moves to the beginning of a syntactic string."
  (interactive)
  (unless (point-in-string-p (point))
    (error "You must be in a string for this command to work"))
  (while (point-in-string-p (point))
    (forward-char -1))
  (point))

(defun end-of-string ()
  "Moves to the end of a syntatic string."
  (beginning-of-string)
  (forward-sexp)
  (point))

(defun swap-quotes ()
  "Swaps the quote symbols in a string between single or double quotes."
  (interactive)
  (save-excursion
    (let ((bos (save-excursion
                 (beginning-of-string)))
          (eos (save-excursion
                 (end-of-string)))
          (replacement-char ?\'))
      (goto-char bos)
      (when (eq (following-char) ?\')
        (setq replacement-char ?\"))
      (delete-char 1)
      (insert replacement-char)
      (goto-char eos)
      (delete-char -1)
      (insert replacement-char))))
