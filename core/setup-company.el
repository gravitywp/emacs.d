;; This is not part of GNU Emacs.

(add-hook 'after-init-hook '(lambda ()
			      "setup company-mode"
			      (global-company-mode)
			      (setq company-dabbrev-downcase nil)
			      (add-to-list 'company-backends 'company-tern)
			      (add-to-list 'company-backends 'company-restclient)
			      ;;TODO: may not need to require tern here
			      (require 'tern)
			      (setq tern-command (append tern-command '("--no-port-file")))
			      ))
 ;; To  js complete you may need run command:  npm install tern -g
(add-hook 'js2-mode-hook '(lambda ()
			    (tern-mode t)
			    ))
(add-hook 'go-mode-hook '(lambda ()
			   (company-mode 0)
			   (auto-complete-mode)
			   ))
;;setup auto complete
;; (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
;; (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
;; (add-hook 'css-mode-hook 'ac-css-mode-setup)
;; (add-hook 'auto-complete-mode-hook 'ac-common-setup)
