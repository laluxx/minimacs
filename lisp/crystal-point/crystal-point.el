;;; crystal-point.el --- Dynamically update cursor color based on text properties  -*- lexical-binding: t; -*-

;;; Commentary:

;; dynamically update the point color

;; TODO add a variable 'crystal-point-handle-hl-line'
;; if you don't use 'hl-line-mode' it makes no sense to do
;; all those extra checks 

;; TODO make it works also in tty mode
;; TODO add a variable to turn on or off the cursor backup system (and FIX it)

;;; Code:

(defvar after-load-theme-hook nil
  "Hook run after a color theme is loaded using `load-theme`.")

(defadvice load-theme (after run-after-load-theme-hook activate)
  "Run `after-load-theme-hook`."
  (run-hooks 'after-load-theme-hook))

;; BASE (fastest)
;; (defun crystal-point/update-cursor-color ()
;;   "Update the cursor color based on the foreground color of the character at point."
;;   (set-cursor-color
;;    (face-attribute (or (car (face-at-point nil t)) 'default) :foreground nil t)))

;; UNSPECIFIED FIX (a bit slower but more reliable)
;; (defun crystal-point/update-cursor-color ()
;;   "Update the cursor color based on the foreground color of the character at point."
;;   (let ((fg (face-attribute (or (car (face-at-point nil t)) 'default) :foreground nil t)))
;;     (set-cursor-color
;;      (if (or (not fg) (string= fg "unspecified"))
;;          (face-attribute 'default :foreground)
;;        fg))))

;; UNSPECIFIED + CURSOR-BACKUP TODO
(defun crystal-point/update-cursor-color ()
  "Update the cursor color based on the foreground color of the character at point."
  (let* ((char (char-after (point)))
         (fg (if (and char (not (char-equal char ?\s)) (not (char-equal char ?\t)) (not (char-equal char ?\n)))
                 (face-attribute (or (car (face-at-point nil t)) 'default) :foreground nil t)
               (face-attribute 'cursor-backup :foreground nil t))))
    (set-cursor-color
     (if (or (not fg) (string= fg "unspecified"))
         (face-attribute 'default :foreground)
       fg))))

;; HL-LINE FIX (slowest) 
;; (defun crystal-point/update-cursor-color ()
;;   "Update the cursor color based on the foreground color of the character at point."
;;   (let* ((hl-line-enabled (bound-and-true-p hl-line-mode))
;;          (face (progn
;;                  (when hl-line-enabled (hl-line-mode -1))
;;                  (or (car (face-at-point nil t)) 'default)))
;;          (fg (face-attribute face :foreground nil t))
;;          (fallback-color (face-attribute 'default :foreground)))
;;     (when hl-line-enabled (hl-line-mode 1))  ; Re-enable hl-line-mode if it was enabled.
;;     (set-cursor-color (if (or (not fg) (string= fg "unspecified"))
;;                           fallback-color
;;                         fg))))

;;;###autoload
(defun crystal-point-enable ()
  "Enable dynamic cursor color updates."
  (interactive)
  ;; Create the cursor-backup face if it doesn't already exist
  (unless (facep 'cursor-backup)
    (make-face 'cursor-backup))
  ;; Update the cursor-backup face
  (set-face-attribute 'cursor-backup nil
                      :foreground (face-attribute 'cursor :background))
  ;; Add hooks
  (add-hook 'post-command-hook 'crystal-point/update-cursor-color)
  (add-hook 'after-load-theme-hook
            (lambda ()
              (set-face-attribute 'cursor-backup nil
                                  :foreground (face-attribute 'cursor :background)))))

;; (defun crystal-point-enable ()
;;   "Enable dynamic cursor color updates."
;;   (interactive)
;;   (add-hook 'post-command-hook 'crystal-point/update-cursor-color))

;;;###autoload
(defun crystal-point-disable ()
  "Disable dynamic cursor color updates."
  (interactive)
  (remove-hook 'post-command-hook 'crystal-point/update-cursor-color))

(provide 'crystal-point)

;;; crystal-point.el ends here
