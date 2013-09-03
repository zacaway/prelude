;;; Source: http://eschulte.github.io/babel-dev/DONE-integrate-plantuml-support.html

;; active Org-babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
 '(;; other Babel languages
   (plantuml . t)))

;; path to PlantUML .jar file
(setq org-plantuml-jar-path
      (expand-file-name "~/Scripts/plantuml.jar"))
