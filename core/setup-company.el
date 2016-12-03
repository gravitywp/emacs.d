;; This is not part of GNU Emacs.

(add-hook 'after-init-hook '(lambda ()
			      "setup company-mode"
			      (global-company-mode)
			      (add-to-list 'company-backends 'company-tern)
			      ;;TODO: may not need to require tern here
			      (require 'tern)
			      (setq tern-command (append tern-command '("--no-port-file")))
			      ))
;; To  js complete you may need run command:  npm install tern -g
(add-hook 'js2-mode-hook '(lambda ()
			    (tern-mode t)
			    ))
