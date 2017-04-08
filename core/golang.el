;; This file is not part of GNU Emacs.

;;golang configuration
;;go auto-complete
(require 'go-autocomplete)
(require 'auto-complete-config)
(eval-after-load "go-mode"
  '(define-key go-mode-map (kbd "C-c C-j") nil))
