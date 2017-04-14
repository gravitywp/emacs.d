(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(backup-by-copying t)
 '(backup-directory-alist (quote (("." . "~/.emacs.d/.saves"))))
 '(browse-url-browser-function (quote browse-url-chrome))
 '(browse-url-chrome-program "google-chrome-beta")
 '(browse-url-new-window-flag nil)
 '(custom-safe-themes
   (quote
    ("ad9747dc51ca23d1c1382fa9bd5d76e958a5bfe179784989a6a666fe801aadf2" "3cddc1775f6c26573a69315dacd5fd45a6cd04df539b6354281d316985f254f3" "9f3181dc1fabe5d58bbbda8c48ef7ece59b01bed606cfb868dd147e8b36af97c" "7153b82e50b6f7452b4519097f880d968a6eaf6f6ef38cc45a144958e553fbc6" "e0d42a58c84161a0744ceab595370cbe290949968ab62273aed6212df0ea94b4" "3cc2385c39257fed66238921602d8104d8fd6266ad88a006d0a4325336f5ee02" "987b709680284a5858d5fe7e4e428463a20dfabe0a6f2a6146b3b8c7c529f08b" default)))
 '(delete-old-versions t)
 '(es-always-pretty-print t)
 '(es-cc-endpoint "http://10.14.1.5:9200")
 '(es-default-url "http://10.14.1.5:9200")
 '(gofmt-command "goimports")
 '(helm-autoresize-max-height 30)
 '(helm-autoresize-mode t)
 '(js-indent-level 2)
 '(kept-new-versions 10)
 '(kept-old-versions 0)
 '(package-selected-packages
   (quote
    (eziam-theme leuven-theme autothemer alect-themes yaml-mode typescript-mode wgrep-ag ag helm-dash helm-projectile projectile csv-mode web-mode org-bullets magit elisp-slime-nav js2-refactor js2-mode doom-themes go-mode)))
 '(projectile-globally-ignored-directories
   (quote
    (".idea" ".ensime_cache" ".eunit" ".git" ".hg" ".fslckout" "_FOSSIL_" ".bzr" "_darcs" ".tox" ".svn" ".stack-work" "node_modules" "dist")))
 '(rmail-file-name "~/mails")
 '(typescript-indent-level 2)
 '(version-control nil)
 '(web-mode-code-indent-offset 2))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; (require 'doom-themes)
;; (load-theme 'doom-one t)
;;; OPTIONAL
;; brighter source buffers
;; (add-hook 'find-file-hook 'doom-buffer-mode)
;; brighter minibuffer when active
;; (add-hook 'minibuffer-setup-hook 'doom-brighten-minibuffer)
;; Custom neotree theme
;;(require 'doom-neotree)
;; (load-theme 'deeper-blue)
;;Placing all auto-save files in /tmp directory
(setq backup-directory-alist `((",*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;; rmail
(setq rmail-movemail-program "/usr/bin/movemail")
(setq rmail-primary-inbox-list '("pop://guozhen@goyoo.com@pop.exmail.qq.com"))
(setq rmail-pop-password-required t)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(projectile-mode)
(persp-mode)
(require 'persp-projectile)

(define-key js2-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook (lambda ()
			   (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))
(setq corral-syntax-entries '((?# "_")
                              (?' "_")))
