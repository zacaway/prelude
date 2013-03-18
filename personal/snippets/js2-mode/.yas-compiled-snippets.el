;;; Compiled snippets and support files for `js2-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'js2-mode
		     '(("copyright" "/**\n * Copyright SMART Technologies `(format-time-string \"%Y\")`.\n * User: `(user-login-name)`\n * Date: `(format-time-string \"%y-%m-%d\")`\n * Time: `(format-time-string \"%l:%M %p\")`\n */\n\n" "copyright" nil nil nil nil nil nil)
		       ("define" "define([\n    $1\n], function ($2) {\n    \"use strict\";\n\n    $0\n\n});\n" "define" nil nil nil nil nil nil)
		       ("describe" "describe(\"${1:Test case}\", function() {\n\n    $0\n});\n" "describe" nil nil nil nil nil nil)
		       ("it" "it(\"should $1\", function() {\n           // Assign\n           $0\n           // Act\n\n           // Assert\n});\n" "it" nil nil nil nil nil nil)))


;;; Do not edit! File generated at Tue Jan 29 10:45:59 2013
