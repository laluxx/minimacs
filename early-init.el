(setq gc-cons-threshold most-positive-fixnum)

;; emacs --shut-the-fuck-up || -stfu
(defun display-startup-echo-area-message ()
  (message ""))
(setq initial-scratch-message nil)
(setq inhibit-startup-message t)

(add-to-list 'default-frame-alist '(background-color . "#1A1A25"))

;; (set-face-attribute 'default nil
;;                     :family "JetBrains Mono Nerd Font"
;;                     :weight 'medium
;;                     :height 110)


(setq frame-resize-pixelwise t)
(electric-pair-mode)
(scroll-bar-mode 0)
(menu-bar-mode 0)
(tool-bar-mode 0)

