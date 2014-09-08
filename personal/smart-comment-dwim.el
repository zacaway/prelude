;;; smart-comment-dwim.el --- enhancements to comment-dwim command
;;
;;; Commentary:
;;
;; Source: http://www.emacswiki.org/emacs/Commenting Code
;;
;;; Code:

(provide 'smart-comment-dwim)

(defun smart-comment-dwim (&optional arg)
  "Replacement for the comment-dwim command.
        If no region is selected and current line is not blank
        and we are not at the end of the line, then comment
        current line.  Replaces default behaviour of
        comment-dwim, when it inserts comment at the end of the
        line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
      (comment-or-uncomment-region (line-beginning-position) (line-end-position))
    (comment-dwim arg)))
