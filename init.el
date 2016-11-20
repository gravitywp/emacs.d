;;init file
(setenv "PATH"
	(concat
	 ""
	 (getenv "PATH")))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives
             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

;; reduce the frequency of garbage collection by making it happen on
;; each 100MB of allocated data (the default is on every 0.76MB).
(setq gc-cons-threshold 100000000)
;; display message at start and end of garbage colleciton.
(setq garbage-collection-message t)


(defvar package-list
  '(go-mode)
  "A list of packages to ensure are installed at launch.")
(defun install-package ()
  (when (not package-archive-contents)
    (package-refresh-contents))
  (dolist (pkg package-list)
    (unless (package-installed-p pkg)
      (package-install pkg)
      )
    )
  )

(install-package)
