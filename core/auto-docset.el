;; This is not part of GNU Emacs.

;;Different subsets of docsets can be activated depending on the buffer.

(add-hook 'emacs-lisp-mode-hook '(lambda ()
					 "active emacs doc"
					 (interactive)
					 (setq helm-dash-docsets '("emacs" "Emacs Lisp"))
					 ))
(add-hook 'js2-mode-hook '(lambda ()
			    "active js doc"
			    (interactive)
			    (setq helm-dash-docsets '("NodeJS"))
			    ))

(add-hook 'go-mode-hook '(lambda ()
			    "active golang doc"
			    (interactive)
			    (setq helm-dash-docsets '("Go"))
			    ))
