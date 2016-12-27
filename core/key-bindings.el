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
(global-set-key (kbd "C-c d") 'helm-dash-at-point)

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
