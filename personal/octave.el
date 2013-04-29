;;; See: http://www.gnu.org/software/octave/doc/interpreter/Using-Octave-Mode.html#Using-Octave-Mode

(add-to-list 'auto-mode-alist '("\\.m$" . octave-mode))

(add-hook 'octave-mode-hook
          (lambda ()
            (abbrev-mode 1)
            (auto-fill-mode 1)
            (if (eq window-system 'x)
                (font-lock-mode 1))))
