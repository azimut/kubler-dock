(load "/quicklisp.lisp")

(quicklisp-quickstart:install :path "/root/quicklisp/")
(setf ql-util::*do-not-prompt* t)
(ql:add-to-init-file)
(ql:quickload :cepl)
(ql:quickload :cepl.sdl2)
