;;; package --- Summary

;;; Commentary:

;;; Code:

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

(autoload 'js2-mode "js2-mode" nil t)
;;(autoload 'js2-highlight-vars-mode "js2-highlight-vars" nil t)

;; See: http://ternjs.net
(add-to-list 'load-path "~/Projects/tern/emacs/")
(autoload 'tern-mode "tern" nil t)

(add-hook 'js2-mode-hook
          (lambda () (if (locate-library "tern")
                         (tern-mode t))))

;; (add-hook 'js2-mode-hook
;;           (lambda ()
;;             (add-to-list 'projectile-project-compilation-commands
;;                          '("mvn compile clean" .
;;                            (lambda (dir)
;;                              (file-exists-p (expand-file-name "pom.xml" dir)))))
;;             (add-to-list 'projectile-project-test-commands
;;                          '("mvn clean install -Dtest=unit clean" .
;;                            (lambda (dir)
;;                              (file-exists-p (expand-file-name "pom.xml" dir)))))))

(defun projectile-test-suffix (project-type)
  "Hard-coded test suffix for WBP project.  PROJECT-TYPE is ignored."
  "_spec")

(provide 'javascript)
;;; javascript.el ends here
