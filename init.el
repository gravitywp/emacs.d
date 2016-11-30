;;init file
(setenv "PATH"
	(concat
	 ""
	 (getenv "PATH")))

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/"))
(add-to-list 'package-archives
             '("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa-stable/
") t)
(package-initialize)
;; reduce the frequency of garbage collection by making it happen on
;; each 100MB of allocated data (the default is on every 0.76MB).
(setq gc-cons-threshold 100000000)
;; display message at start and end of garbage colleciton.
(setq garbage-collection-message t)

(defvar package-list '(go-mode
		       doom-themes
		       js2-mode
		       js2-refactor
		       elisp-slime-nav)
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

(recentf-mode 1)
(setq recentf-max-saved-items 100) ;; just 20 is too recent
;;global turn electric-pair-mode on
(electric-pair-mode 1)

(defvar root-dir (file-name-directory load-file-name)
  "The root dir of the Emacs configuration.")
;; auto-mode-alist
(load-file (concat root-dir "core/auto-mode-alist.el"))

(load-file (concat root-dir "core/ui.el"))
(setq custom-file (concat root-dir "custom.el"))
(load custom-file)

;; 
(require 'js2-refactor)
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")
;; providers similar navigation for Emacs Lisp. 
(dolist (hook '(emacs-lisp-mode-hook ielm-mode-hook))
  (add-hook hook 'turn-on-elisp-slime-nav-mode))
