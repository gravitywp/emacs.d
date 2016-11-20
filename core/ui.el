;; UI optimzations and tweaks.

;; This file is not part of GNU Emacs.

;; the toolbar is just a waste of valuable screen estate
;; in a tty tool-bar-mode does not properly auto-load,and is
;; already disabled anyway.
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))

(menu-bar-mode -1)

;; the blinking cursor is nothing, but an annoyance.
(blink-cursor-mode -1)

;; disable startup screen
(setq inhibit-startup-screen t)

;; enable y/n answers
(fset 'yes-or-no-p 'y-or-n-p)

;;disable scrollable
(scroll-bar-mode -1)

(setq frame-title-format
      '("" invocation-name " - " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))
;; disable the annoying bell ring
(setq ring-bell-function 'ignore)

