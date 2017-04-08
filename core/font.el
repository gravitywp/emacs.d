;; This file is not part of GNU Emacs.

;;font configuration

(add-to-list 'default-frame-alist '(font . "Inconsolata"))

(add-hook 'window-setup-hook '(lambda ()
			      "set font size"
			      (interactive)
			      (set-face-attribute 'default nil
						  :family "Inconsolata"
						  :height 160
						  :weight 'normal
						  :width 'normal)
			      ))
