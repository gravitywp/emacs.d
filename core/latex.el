(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq Tex-save-query t)
(setq-default TeX-PDF-mode t)

(add-hook 'LaTeX-mode-hook 
  (lambda()
  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
  (setq TeX-command-default "XeLaTeX")
  (setq TeX-save-querynil )
  (setq TeX-show-compilation t)
))
;; (add-to-list 'Tex-command-list
;; 	     '("XeLaTex" "%'xelatex%(mode)%' %t"
;; 	       Tex-run-Tex nil t))
;; (setq TeX-command-default ""XeLaTeX"")
