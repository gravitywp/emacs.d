(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/.saves"))))
 '(custom-safe-themes
   (quote
    ("e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" default)))
 '(delete-old-versions t)
 '(helm-autoresize-max-height 30)
 '(helm-autoresize-mode t)
 '(js-indent-level 2)
 '(kept-new-versions 10)
 '(kept-old-versions 0)
 '(package-selected-packages
   (quote
    (org-bullets magit elisp-slime-nav js2-refactor js2-mode doom-themes go-mode)))
 '(version-control nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'doom-themes)
(load-theme 'doom-one t)
;;; OPTIONAL
;; brighter source buffers
(add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
(add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
;; Custom neotree theme
;;(require 'doom-neotree)

;;Placing all auto-save files in /tmp directory
(setq backup-directory-alist `((",*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
