;; This file is not part of GNU Emacs.
;; js2-refactory
(js2r-add-keybindings-with-prefix "C-c C-m")

;;Helm
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x f") 'helm-recentf)
(global-set-key (kbd "C-x y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-buffers-list)
(global-unset-key (kbd "M-SPC"))

;;projectile
(global-set-key (kbd "C-x p") 'helm-projectile-find-file-dwim)
(global-set-key (kbd "C-c p s") 'projectile-ag)
(global-set-key (kbd "C-c p k") 'projectile-kill-buffers)
(global-set-key (kbd "C-c p o") 'projectile-multi-occur)
(global-set-key (kbd "C-c p p") 'projectile-switch-project)
;; dash docsets
(global-set-key (kbd "C-c d d") 'helm-dash-at-point)
(global-set-key (kbd "C-c d a") 'helm-dash-activate-docset)
(global-set-key (kbd "C-c d r") 'helm-dash-deactivate-docset)
(global-set-key (kbd "C-c d i") 'helm-dash-async-install-docset)
(global-set-key (kbd "C-c d u") 'helm-dash-update-docset)
;;buffer
(global-set-key (kbd "C-x C-k") '(lambda ()
				   "Removes file connected to current buffer and kills buffer."
				   (interactive)
				   (let ((filename (buffer-file-name))
					 (buffer (current-buffer))
					 (name (buffer-name)))
				     (if (not (and filename (file-exists-p filename)))
					 (ido-kill-buffer)
				       (when (yes-or-no-p "Are you sure you want to remove this file? ")
					 (delete-file filename)
					 (kill-buffer buffer)
					 (message "File '%s' successfully removed" filename))))
				   ))

(add-hook 'go-mode-hook (lambda ()
			   (local-set-key (kbd "M-.") #'godef-jump)
			   (local-set-key (kbd "M-=") #'gofmt)
			   ))
;; corral key binding
(global-set-key (kbd "M-9") 'corral-parentheses-backward)
(global-set-key (kbd "M-0") 'corral-parentheses-forward)
(global-set-key (kbd "M-[") 'corral-brackets-backward)
(global-set-key (kbd "M-]") 'corral-brackets-forward)
;; (global-set-key (kbd "M-{") 'corral-braces-backward)
;; (global-set-key (kbd "M-}") 'corral-braces-forward)
(global-set-key (kbd "M-\"") 'corral-double-quotes-backward)

;;ace jumper
(define-key global-map (kbd "C-c j") 'ace-jump-mode)
(define-key global-map (kbd "C-c g") 'ace-jump-line-mode)
(define-key global-map (kbd "C-c C-j") 'ace-jump-mode-pop-mark)



(global-set-key (kbd "C-z") 'shell)

;;line-number
(global-unset-key (kbd "C-x n"))
(global-set-key (kbd "C-x n") 'linum-mode)

;;multiple cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this-word)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this-word)
(global-set-key (kbd "C-c C->") 'mc/skip-to-next-like-this)
(global-set-key (kbd "C-c C-<") 'mc/skip-to-previous-like-this)
(global-set-key (kbd "C-c C-n") 'mc/mark-all-dwim)

