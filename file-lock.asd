(defsystem :file-lock
  :description "File lock library on POSIX systems"
  :author "Arnold Noronha <arnold@screenshotbot.io>"
  :license "MIT License"
  :version "0.0.1"
  :serial t
  :depends-on ((:feature (:not :lispworks) :cffi)
               :easy-macros
               :log4cl)
  :components ((:file "file-lock")))

(defsystem :file-lock/tests
  :serial t
  :depends-on (:file-lock
               :fiveam
               :tmpdir)
  :components ((:file "test-file-lock"
                :if-feature (:not :windows))))
