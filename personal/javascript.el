(autoload 'js2-mode "js2-mode" nil t)
;;(autoload 'js2-highlight-vars-mode "js2-highlight-vars" nil t)

(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))


(require 'js2-refactor)
(js2r-add-keybindings-with-prefix "C-c C-m")


(require 'projectile)
(add-to-list 'projectile-project-compilation-commands
             '("mvn compile" .
               (lambda (dir)
                 (file-exists-p (expand-file-name "pom.xml" dir)))))
(add-to-list 'projectile-project-test-commands
             '("mvn clean install -Dtest=unit" .
               (lambda (dir)
                 (file-exists-p (expand-file-name "pom.xml" dir)))))

(defun projectile-compute-test-file-name (file)
  (let ((basename (file-name-sans-extension file))
        (extension (file-name-extension file)))
    (-first #'file-exists-p
            (-map (lambda (suffix)
                    (s-replace "/src/" "/test/unit/" (concat (s-append suffix basename) "." extension)))
                  projectile-test-files-suffices))))

(defun projectile-compute-file-name (test-file)
  (let ((basename (file-name-sans-extension test-file))
        (extension (file-name-extension test-file)))
    (-first #'file-exists-p
            (-map (lambda (suffix)
                    (s-replace "/test/unit/" "/src/" (concat (s-chop-suffix suffix basename) "." extension)))
                  projectile-test-files-suffices))))

;; (add-hook 'js2-mode-hook (lambda ()
;;                            (require 'js2-refactor)
;;                            (js2r-add-keybindings-with-prefix "C-c C-m")

;;                            (require 'projectile)
;;                            (add-to-list 'projectile-project-compilation-commands
;;                                         '("mvn compile" .
;;                                           (lambda (dir)
;;                                             (file-exists-p (expand-file-name "pom.xml" dir)))))
;;                            (add-to-list 'projectile-project-test-commands
;;                                         '("mvn clean install -Dtest=unit" .
;;                                           (lambda (dir)
;;                                             (file-exists-p (expand-file-name "pom.xml" dir)))))))


;; (add-hook 'js2-mode-hook
;;           (lambda ()
;;             (require 'js2-hightlight-vars)
;;             (if (featurep 'js2-hightlight-vars)
;;                 (js2-highlight-vars-mode))))
