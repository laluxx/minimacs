;; TODO popper-toggle should make sure that themodeline is note in that buffer
;; TODO A list of commands where 'vertico-mode' should be disabled
;; TODO Better-theming
;; TODO Persistent `scratch-buffer' package
;; TODO Hide modeline and help message in *Completions* buffer
;; TODO Create missing directories when we open a file that doesn't exist under a
;; TODO If there is only 1 line or 'variable' of lines C-w should kill from the beginning of buffer
;; directory tree that may not exist.
;; TODO bind 'C-c-C-n' and 'C-c-C-p' to jump to the next or prev defun in 'emacs-lisp-mode'
;; TODO 'yank' links in 'org-mode' if what is currently in the 'kill-ring' look like a link
;; TODO pressing "'" should insert 2 if we are in a comment in 'emacs-lisp-mode'
;; TODO 'C-e' should be callable multiple times and it should increment the arg or something idk

;; MELPA
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(setq user-full-name "Laluxx")
(setq source-directory "~/xos/projects/emacs")

;; TODO a minor-mode that automatically generate an .org file
;; for the project gathering all the TODO's and interact witht the agenda
;; maybe only for a list of project, and then a manual way or an alist to add projects
;; using builtin 'project' library

;; TODO 'interactive' commands alias alist
;; TODO 'consult-apropos-documentation'

;; KEYBINDS

(global-set-key (kbd "C-c C-q") 'save-buffers-kill-terminal)
(global-set-key (kbd "C-M-j") 'delete-indentation)
(global-set-key (kbd "C-x 8 n") 'nerd-icons-insert)
(global-set-key (kbd "C-h C-l") 'find-library)
(global-set-key (kbd "M-s") 'consult-line)
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C-S-k") 'kill-region)
(global-set-key (kbd "C--") 'text-scale-decrease)

(global-set-key (kbd "C-h C-v") 'set-variable)
(global-set-key (kbd "C-x C-g") 'find-grep)
(global-set-key (kbd "C-c p") 'beginning-of-buffer)
(global-set-key (kbd "C-c n") 'end-of-buffer)
(global-set-key (kbd "C-t") #'transpose-words)
(global-set-key (kbd "M-t") #'transpose-chars)
(global-set-key (kbd "C-S-d") 'kill-word)
(global-set-key (kbd "C-S-o") 'duplicate-line)

(global-set-key (kbd "C-S-w") 'mark-word)
(global-set-key (kbd "C-w") 'laluxx/kill-whole-word)

(global-set-key (kbd "C-x g") 'laluxx/google-this)
(global-set-key (kbd "C-c C-p") 'laluxx/find-package-source-code)
(global-set-key (kbd "C-c C-i") 'info-display-manual)
(global-set-key (kbd "C-x C-r") 'consult-recent-file)
(global-set-key (kbd "C-h C-f") 'describe-face)
(global-set-key (kbd "C-c C-j") 'laluxx/toggle-eat)
(global-set-key (kbd "C-h t") 'consult-theme)
(global-set-key (kbd "C-x k") 'kill-current-buffer)
(global-set-key (kbd "C-c i") 'consult-imenu)
(global-set-key (kbd "C-c C-a") 'bitmap-artist-mode)
(global-set-key (kbd "C-c h") 'proced)
(global-set-key (kbd "C-x f") 'consult-find)
(global-set-key (kbd "M-n") 'forward-paragraph) 
(global-set-key (kbd "M-p") 'backward-paragraph)
(global-set-key (kbd "C-c s") 'scratch-buffer)
(global-set-key (kbd "C-S-h") '+doom-dashboard/open)

(global-set-key (kbd "C-c f") 'split-init)
(global-set-key (kbd "C-x s") 'laluxx/toggle-scratch-buffer)



;; (use-package c3-mode
;;   :load-path "~/.config/emacs/lisp/c3-mode")

;; (use-package evil
;;   :ensure t)

(use-package solaire-mode
  :ensure t)


;; (use-package doom-dashboard
;;   :load-path "~/.config/emacs/lisp/doom-dashboard"
;;   :hook (after-init . +doom-dashboard-init-h))

(use-package doom-dashboard
  :load-path "~/.config/emacs/lisp/doom-dashboard"
  :hook (after-init . +doom-dashboard-init-h)
  :config
  )



(use-package navi
  :load-path "~/.config/emacs/lisp/navi")

(use-package ewm
  :load-path "~/.config/emacs/lisp/ewm"
  :config (global-ewm-mode))

;; (use-package crystal-point
;;   :load-path "~/.config/emacs/lisp/crystal-point"
;;   ;; :config (crystal-point-enable)
;;   )

(use-package crystal-point
  :load-path "~/.config/emacs/lisp/crystal-point"
  :hook (after-init . crystal-point-enable))


;; (use-package vertico-demand
;;   :load-path "~/.config/emacs/lisp/vertico-demand"
;;   :config
;;   (vertico-demand-mode))


;; THEME



(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(corfu-bar ((t (:background "#32324A"))))
 '(corfu-border ((t (:background "#252534"))))
 '(corfu-current ((t (:background "#32324A" :weight extrabold))))
 '(corfu-default ((t (:background "#252534"))))
 '(dired-subtree-depth-1-face ((t (:background unspecified))))
 '(dired-subtree-depth-2-face ((t (:background unspecified))))
 '(dired-subtree-depth-3-face ((t (:background unspecified))))
 '(dired-subtree-depth-4-face ((t (:background unspecified))))
 '(dired-subtree-depth-5-face ((t (:background unspecified))))
 '(diredfl-file-suffix ((t (:weight bold))))
 '(diredfl-number ((t (:weight bold))))
 '(font-lock-function-name-face ((t (:weight bold))))
 '(font-lock-keyword-face ((t (:weight bold))))
 '(font-lock-type-face ((t (:weight bold))))
 '(orderless-match-face-0 ((t (:foreground unspecified :background unspecified))))
 '(orderless-match-face-1 ((t (:foreground unspecified :background unspecified))))
 '(orderless-match-face-2 ((t (:foreground unspecified :background unspecified))))
 '(orderless-match-face-3 ((t (:foreground unspecified :background unspecified))))
 '(orderless-match-face-4 ((t (:foreground unspecified :background unspecified))))
 '(org-document-title ((t (:height 1.6))))
 '(org-level-1 ((t (:inherit outline-1 :height 1.7))))
 '(org-level-2 ((t (:inherit outline-2 :height 1.6))))
 '(org-level-3 ((t (:inherit outline-3 :height 1.5))))
 '(org-level-4 ((t (:inherit outline-4 :height 1.4))))
 '(org-level-5 ((t (:inherit outline-5 :height 1.3))))
 '(org-level-6 ((t (:inherit outline-5 :height 1.2))))
 '(org-level-7 ((t (:inherit outline-5 :height 1.1)))))


(use-package doom-modeline
  :ensure t
  :config
  (setq doom-modeline-bar-width 0)
  (doom-modeline-mode))

(use-package doom-themes
  :ensure t)

(use-package kaolin-themes
  :ensure t
  :config
  (setq kaolin-themes-modeline-border nil)
  (setq kaolin-themes-bold t
	kaolin-themes-italic t
	kaolin-themes-underline t)
  (load-theme 'kaolin-ocean t)
  )

(use-package theme-magic
  :ensure t)

;; EDITING
(setq-default truncate-lines t)
(recentf-mode)
(savehist-mode)
(electric-pair-mode)
(global-auto-revert-mode 1)
(save-place-mode t)

(defun mwim-beginning ()
  "Move point at the beginning of line,
if already there go back to indentation instead"
  (interactive "^")
  (if (bolp)                   
      (back-to-indentation)
    (move-beginning-of-line nil)))

(defun mwim-end ()
  "Move point at the end of line,
if already there go at end of line text"
  (interactive "^")
  (if (eolp)
      (end-of-line-text)
    (move-end-of-line nil)))

(global-set-key (kbd "C-a") 'mwim-beginning)
(global-set-key (kbd "C-e") 'mwim-end)


(defun laluxx/kill-line-or-kill-region ()
  "'kill-line' if no active region, otherwise 'kill-region'.
If point is inside a string, 'kill-string' instead."
  (interactive)
  (if (use-region-p)
      (call-interactively 'kill-region)
    (if (nth 3 (syntax-ppss))
        (laluxx/kill-string)
      (kill-line))))

(defun laluxx/kill-string ()
  "Kill from point to the end of the string, keeping the closing quotation mark."
  (let ((ppss (syntax-ppss)))
    (if (nth 3 ppss)  ;; Check if inside a string
        (let ((start (point)))
          (skip-syntax-forward "^\"")
          (kill-region start (point)))
      (kill-line))))


(global-set-key (kbd "C-k") 'laluxx/kill-line-or-kill-region)


(defun laluxx/insert-or-comment-region ()
  "Insert the character 'c' if no active region, otherwise comment the region."
  (interactive)
  (if (use-region-p)
      (call-interactively 'comment-dwim)
    (insert "c")))

(global-set-key (kbd "c") 'laluxx/insert-or-comment-region)

(defun laluxx/insert-or-copy-region ()
  "Insert the character 'y' if no active region, otherwise copy the region and reset `copied-line`."
  (interactive)
  (if (use-region-p)
      (progn
	(call-interactively 'kill-ring-save)
	(setq copied-line nil))
    (insert "y")))

(global-set-key (kbd "y") 'laluxx/insert-or-copy-region)

(defun laluxx/insert-or-eval-region ()
  "Insert the character 'e' if no active region, otherwise evaluate the region and then deactivate the region."
  (interactive)
  (if (use-region-p)
      (progn
	    (call-interactively 'eval-region)
	    (deactivate-mark))  ; Deselect the region correctly without signaling quit
    (insert "e")))

(global-set-key (kbd "e") 'laluxx/insert-or-eval-region)


(defun laluxx/yank-indent ()
  "Yank content and then indent the yanked region."
  (interactive)
  (let ((start (point)))
    (yank)
    (indent-region start (point)))) 

(global-set-key (kbd "C-y") 'laluxx/yank-indent)


;; (use-package paredit
;;   :ensure t
;;   :hook ((emacs-lisp-mode lisp-mode scheme-mode clojure-mode) . (lambda ()
;;                                                                   (paredit-mode)
;;                                                                   (my-setup-paredit-keys))))

(defun laluxx/paredit-kill ()
  (interactive)
  (if (use-region-p)
      (call-interactively 'kill-region)
    (paredit-kill)))

(defun laluxx/paredit-forward-kill-word ()
  (interactive)
  (if (use-region-p)
      (call-interactively 'kill-region)
    (paredit-forward-kill-word)))


(defun my-setup-paredit-keys ()
  "Set up keybindings for Paredit-related commands."
  (local-set-key (kbd "C-<backspace>") #'paredit-backward-kill-word)
  (local-set-key (kbd "C-w") #'laluxx/paredit-forward-kill-word)
  (define-key paredit-mode-map (kbd "C-k") nil)  ; Unbind C-k from paredit
  (local-set-key (kbd "C-k") #'laluxx/paredit-kill)
  )




(use-package iedit
  :ensure t
  :config
  (defun laluxx/iedit-forward-word()
    "Activate iedit-mode and go to the end of the current word."
    (interactive)
    (iedit-mode)
    (forward-word))

  (defun laluxx/iedit-backward-word()
    "Activate iedit-mode and go to the end of the current word."
    (interactive)
    (iedit-mode)
    (backward-word))

  (global-set-key (kbd "M-I") 'laluxx/iedit-backward-word)
  (global-set-key (kbd "M-i") 'laluxx/iedit-forward-word))


;; COMPILATION

(defun laluxx/save-and-compile ()
  "Save the current buffer and then compile without asking."
  (interactive)
  (save-buffer)  ; Save the current buffer
  (compile compile-command))

(global-set-key (kbd "C-j") 'laluxx/save-and-compile)

(defun laluxx/save-and-set-compile ()
  "Save the current buffer and compile interactively."
  (interactive)
  (save-buffer)
  (call-interactively 'compile))

(global-set-key (kbd "C-x C-c") 'laluxx/save-and-set-compile)


(require 'compile)
(defun laluxx/update-compilation-header ()
  "Update the header line with the number of errors, warnings, and successes in the compilation buffer."
  (when (derived-mode-p 'compilation-mode)  ; Ensure it's a compilation buffer
    (save-excursion
      (goto-char (point-min))
      (let ((errors (count-matches "^[^ \n].*[0-9]+:\\([0-9]+:\\)? error:"))
            (warnings (count-matches "^[^ \n].*[0-9]+:\\([0-9]+:\\)? warning:"))
            (successes (count-matches "build successful")))  ; Customize the success message pattern as needed
        (setq header-line-format
              (concat
               (propertize (format "Errors: %d" errors) 'face 'compilation-error) ", "
               (propertize (format "Warnings: %d" warnings) 'face 'compilation-warning) ", "
               (propertize (format "Info: %d" successes) 'face 'compilation-info)))))))  ; Define or customize 'compilation-info' face as needed

(defun laluxx/enable-header-in-compilation ()
  "Enable custom header line in compilation mode."
  (setq header-line-format nil)  ; Clear any existing header line format
  (laluxx/update-compilation-header))

(add-hook 'compilation-mode-hook 'laluxx/enable-header-in-compilation)
(add-hook 'compilation-filter-hook 'laluxx/update-compilation-header)

(define-key compilation-mode-map (kbd "C-j") 'recompile)
(define-key compilation-mode-map (kbd "j") 'recompile)
(define-key compilation-mode-map (kbd "k") 'quit-window)
(define-key compilation-mode-map (kbd "c") 'recompile)
(define-key compilation-mode-map (kbd "y") 'laluxx/copy-buffer)


(use-package popper
  :ensure t
  :config
  (global-set-key (kbd "C-;") #'popper-toggle)
  (global-set-key (kbd "C-'") #'popper-cycle)
  (global-set-key (kbd "M-;") #'popper-toggle-type)
  ;; (setq popper-display-function #'display-buffer-in-child-frame) ; TODO
  (setq popper-window-height 15)
  (setq popper-reference-buffers
        '(Custom-mode
          compilation-mode
          magit-status-mode
          magit-revision-mode
          magit-log-mode
          messages-mode
          help-mode
          occur-mode
          eshell-mode
          "^\\*xref\\*"
          "^\\*Warnings\\*"
          "^\\*Warnings\\*"
          "^\\*eat\\*"
          "^\\*ansi-term\\*"
          "^\\*term\\*"
          "^\\*Compile-Log\\*"
          "^\\*rustic-compilation\\*"
          "^\\*HS-Error\\*"
          "^\\*shell\\*"
          "^\\*Messages\\*"
          "^\\*Backtrace\\*"
          "^\\*evil-registers\\*"
          "^\\*ielm\\*"
          "^\\*TeX Help\\*"
          "^\\*Shell Command Output\\*"
          "^\\*Async Shell Command\\*"
          "^\\*Completions\\*"
          "^\\*Apropos"
          "Calc:"
          "[Oo]utput\\*"))
  (popper-mode))

;; NOTE This might not be needed
(defun my/popper-hide-modeline ()
  (setq-local mode-line-format nil))
(add-hook 'popper-open-popup-hook 'my/popper-hide-modeline)

(defun laluxx/hide-modeline-for-popups ()
  "Hide the mode line in specific buffers and modes."
  (let ((buffer-name (buffer-name)))
    (when (or (member buffer-name '("*Warnings*"
                                    "*Compile-Log*"
                                    "*rustic-compilation*"
                                    "*Embark Actions*"
                                    "*ansi-term*"
                                    "*eat*"
                                    "*term*"
                                    "*ielm*"
                                    "*xref*"
                                    "*shell*"
                                    "*eshell*"
                                    "*HS-Error*"
                                    "*Help*"
                                    "*Apropos*"
                                    "*Disabled Command*"
                                    "*Backtrace*"
                                    "*compilation*"
                                    "*Shell Command Output*"))
              (derived-mode-p 'magit-log-mode
                              'magit-revision-mode
                              'magit-status-mode
                              'eshell-mode
                              'shell-mode
                              'help-mode))
      (setq mode-line-format nil))))

(add-hook 'after-change-major-mode-hook 'laluxx/hide-modeline-for-popups)

(add-hook 'buffer-list-update-hook 'laluxx/hide-modeline-for-popups)


(defun set-popper-height-for-revision ()
  "Set the popper-window-height to 30 when entering magit-revision-mode."
  (when (derived-mode-p 'magit-revision-mode)
    (customize-set-variable 'popper-window-height 30 "Set by entering magit-revision-mode.")
    (popper-toggle)))

(defun set-popper-height-for-log ()
  "Set the popper-window-height to 15 when entering magit-log-mode."
  (when (derived-mode-p 'magit-log-mode)
    (customize-set-variable 'popper-window-height 15 "Set by entering magit-log-mode.")))

(add-hook 'magit-revision-mode-hook 'set-popper-height-for-revision)
(add-hook 'magit-log-mode-hook 'set-popper-height-for-log)

;; Why do i have to do it like this 
(with-current-buffer "*Messages*"
  (setq mode-line-format nil))


;; PROCED

(setq-default proced-auto-update-flag t)
(setq proced-enable-color-flag t)

;; DIRED

(use-package diredfl
  :ensure t
  :config
  (diredfl-global-mode))

(use-package wdired
  :ensure t
  :config
  (define-key wdired-mode-map (kbd "RET") 'wdired-finish-edit))

(use-package nerd-icons-dired
  :ensure t
  :diminish
  :custom-face
  (nerd-icons-dired-dir-face ((t (:inherit nerd-icons-dsilver :foreground unspecified))))
  :hook (dired-mode . nerd-icons-dired-mode))

(defun laluxx/dired-jump-or-kill ()
  "Jump to Dired buffer in another window or kill the Dired buffer if already in one."
  (interactive)
  (if (eq major-mode 'dired-mode)
      (progn
        (kill-this-buffer)
        (delete-window))
    (dired-jump-other-window)))

(global-set-key (kbd "C-x C-l") 'laluxx/dired-jump-or-kill)


(defun laluxx/dired-copy-file-content ()
  "Copy the contents of the file at point in Dired to the clipboard."
  (interactive)
  (let* ((filename (dired-get-file-for-visit))
         (buffer-existed (get-buffer filename))
         (buffer (find-file-noselect filename)))
    (with-current-buffer buffer
      (clipboard-kill-ring-save (point-min) (point-max)))
    (unless buffer-existed
      (kill-buffer buffer))
    (message "Copied %s" filename)))


(require 'dired-x)
(setq dired-omit-files (concat dired-omit-files "\\|^\\.#\\|~$"))
(add-hook 'dired-mode-hook 'dired-omit-mode)

(use-package dired-hacks
  :load-path "~/.config/emacs/lisp/dired-hacks"
  :config
  (require 'dired-subtree)
  (require 'dired-rainbow)
  ;; (require 'dired-narrow)
  (custom-set-faces
   '(dired-subtree-depth-1-face ((t (:background unspecified))))
   '(dired-subtree-depth-2-face ((t (:background unspecified))))
   '(dired-subtree-depth-3-face ((t (:background unspecified))))
   '(dired-subtree-depth-4-face ((t (:background unspecified))))
   '(dired-subtree-depth-5-face ((t (:background unspecified))))))

(defun my-dired-mode-setup ()
  "Custom keybindings and settings for `dired-mode`."
  ;; (define-key dired-mode-map (kbd "C-s") 'dired-narrow)
  ;; (define-key dired-mode-map (kbd "s") 'dired-narrow)
  (define-key dired-mode-map (kbd "TAB") 'dired-subtree-toggle)
  (define-key dired-mode-map (kbd "b") 'dired-up-directory)
  (define-key dired-mode-map (kbd "j") 'dired-next-line)
  (define-key dired-mode-map (kbd "k") 'dired-previous-line)
  (define-key dired-mode-map (kbd "h") 'dired-up-directory)
  (define-key dired-mode-map (kbd "l") 'dired-find-file)
  (define-key dired-mode-map (kbd "y") 'laluxx/dired-copy-file-content)
  (define-key dired-mode-map (kbd "i") 'wdired-change-to-wdired-mode)
  (auto-revert-mode 1))

(add-hook 'dired-mode-hook 'my-dired-mode-setup)


;; INFO

(setq Info-use-header-line nil)

(with-eval-after-load 'info
  (define-key Info-mode-map (kbd "n") 'Info-forward-node)
  (define-key Info-mode-map (kbd "p") 'Info-backward-node)
  (define-key Info-mode-map (kbd "]") 'Info-next)
  (define-key Info-mode-map (kbd "[") 'Info-prev))

(defun info-mode-setup ()
  "Set up my preferences for Info mode."
  (olivetti-mode 1)
  (olivetti-set-width 82)
  (text-scale-set 1))

(add-hook 'Info-mode-hook 'info-mode-setup)

;; UI

(setq confirm-nonexistent-file-or-buffer nil)

(setq frame-title-format '("%b – Minimacs")
      icon-title-format frame-title-format)

(global-prettify-symbols-mode)

(use-package rainbow-mode
  :diminish
  :ensure t
  :diminish
  :hook org-mode prog-mode)

(use-package rainbow-delimiters
  :ensure t
  :hook (prog-mode . rainbow-delimiters-mode))


(use-package olivetti
  :ensure t
  :config
  (global-set-key (kbd "C-<") #'olivetti-expand)
  (global-set-key (kbd "C->") #'olivetti-shrink))

(use-package hl-todo
  :ensure t
  :hook ((org-mode . hl-todo-mode)
         (prog-mode . hl-todo-mode))
  :config
  (setq hl-todo-highlight-punctuation ":"
        hl-todo-keyword-faces
        `(("TODO"       warning bold)
          ("FIXME"      error bold)
          ("FIX"      error bold)
          ("BUG"      error bold)
          ("HACK"       font-lock-constant-face bold)
          ("REVIEW"     font-lock-keyword-face bold)
          ("NOTE"       success bold)
          ("IMPORTANT"  success bold)
          ("DEPRECATED" font-lock-doc-face bold)
          ("AFTER" font-lock-constant-face bold)
          ("NEXT" font-lock-keyword-face bold)
          ("MAYBE" font-lock-keyword-face bold)
          ("SYNTAX" font-lock-keyword-face bold)
          ("LATER" font-lock-doc-face bold))))



;; WINDOW DIVIDER

(defun set-window-divider-colors ()                                             
  (let ((bg-color (face-attribute 'default :background nil t)))                 
    (set-face-foreground 'window-divider bg-color)                              
    (set-face-background 'window-divider bg-color)                              
    (set-face-foreground 'window-divider-first-pixel bg-color)                  
    (set-face-background 'window-divider-first-pixel bg-color)                  
    (set-face-foreground 'window-divider-last-pixel bg-color)                   
    (set-face-background 'window-divider-last-pixel bg-color)))  

(set-window-divider-colors) ;; Call it for the first loaded theme

(setq window-divider-default-right-width 1)
(setq window-divider-default-bottom-width 0)

(with-eval-after-load 'consult
  (advice-add 'consult-theme :after
              (lambda (&rest _)
                (set-window-divider-colors))))

(window-divider-mode 1)



;; COMPLETION

(setq enable-recursive-minibuffers t)
(setq tab-always-indent 'complete)

;; Do not allow the cursor in the minibuffer prompt
(setq minibuffer-prompt-properties
      '(read-only t cursor-intangible t face minibuffer-prompt))
(add-hook 'minibuffer-setup-hook #'cursor-intangible-mode)

(use-package vertico
  :ensure t
  :config
  (vertico-mode))

(use-package orderless
  :ensure t
  :init
  ;; Configure a custom style dispatcher (see the Consult wiki)
  ;; (setq orderless-style-dispatchers '(+orderless-consult-dispatch orderless-affix-dispatch)
  ;;       orderless-component-separator #'orderless-escapable-split-on-space)
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

(use-package marginalia
  :ensure t
  :init
  (marginalia-mode))

(use-package nerd-icons-completion
  :ensure t
  :config
  (nerd-icons-completion-mode))

(use-package corfu
  ;; Optional customization's
  :custom

  (completion-highlight-region-function nil)
  (corfu-cycle t)                ;; Enable cycling for `corfu-next/previous'
  (corfu-auto t)                 ;; Enable auto completion
  ;; (corfu-separator ?\s)          ;; Orderless field separator
  ;; (corfu-quit-at-boundary nil)   ;; Never quit at completion boundary
  ;; (corfu-quit-no-match nil)      ;; Never quit, even if there is no match
  ;; (corfu-preview-current nil)    ;; Disable current candidate preview
  ;; (corfu-preselect 'prompt)      ;; Preselect the prompt
  ;; (corfu-on-exact-match nil)     ;; Configure handling of exact matches
  (corfu-scroll-margin 5)        ;; Use scroll margin
  (corfu-bar-width 0.3)

  :ensure t
  :init
  (global-corfu-mode))

(defun corfu-enable-in-minibuffer ()
  "Enable Corfu in the minibuffer."
  (when (local-variable-p 'completion-at-point-functions)
    ;; (setq-local corfu-auto nil) ;; Enable/disable auto completion
    (setq-local corfu-echo-delay nil ;; Disable automatic echo and popup
		corfu-popupinfo-delay nil)
    (corfu-mode 1)))
(add-hook 'minibuffer-setup-hook #'corfu-enable-in-minibuffer)


;; (setq corfu-auto        t
;;       corfu-auto-delay  0 ;; Note: A delay of 0 is typically not recommended as it can be disruptive.
;;       corfu-auto-prefix 1 ;; Note: A prefix of 1 is also generally considered too small.
;;       completion-styles '(basic))


;; (setq-local corfu-auto        t
;;             corfu-auto-delay  0 ;; TOO SMALL - NOT RECOMMENDED
;;             corfu-auto-prefix 1 ;; TOO SMALL - NOT RECOMMENDED
;;             completion-styles '(basic))


;; (use-package kind-icon
;;   :ensure t
;;   :after corfu
;;   :custom
;;   (kind-icon-blend-background t)
;;   (kind-icon-default-face 'corfu-default) ; only needed with blend-background
;;   :config
;;   (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))



(use-package nerd-icons-corfu
  :ensure t
  :config

  ;; OPTIONALLY:
  (setq nerd-icons-corfu-mapping
	'((array :style "cod" :icon "symbol_array" :face font-lock-type-face)
      (boolean :style "cod" :icon "symbol_boolean" :face font-lock-builtin-face)
	  (class :style "cod" :icon "symbol_class" :face font-lock-type-face)
	  (color :style "cod" :icon "symbol_color" :face success)
	  (command :style "cod" :icon "terminal" :face default)
	  (constant :style "cod" :icon "symbol_constant" :face font-lock-constant-face)
	  (constructor :style "cod" :icon "triangle_right" :face font-lock-function-name-face)
	  (enummember :style "cod" :icon "symbol_enum_member" :face font-lock-builtin-face)
	  (enum-member :style "cod" :icon "symbol_enum_member" :face font-lock-builtin-face)
	  (enum :style "cod" :icon "symbol_enum" :face font-lock-builtin-face)
	  (event :style "cod" :icon "symbol_event" :face font-lock-warning-face)
	  (field :style "cod" :icon "symbol_field" :face font-lock-variable-name-face)
	  (file :style "cod" :icon "symbol_file" :face font-lock-string-face)
	  (folder :style "cod" :icon "folder" :face font-lock-doc-face)
	  (interface :style "cod" :icon "symbol_interface" :face font-lock-type-face)
	  (keyword :style "cod" :icon "symbol_keyword" :face font-lock-keyword-face)
	  (macro :style "cod" :icon "symbol_misc" :face font-lock-keyword-face)
	  (magic :style "cod" :icon "wand" :face font-lock-builtin-face)
	  (method :style "cod" :icon "symbol_method" :face success)
	  (function :style "cod" :icon "symbol_method" :face font-lock-function-name-face)
	  (module :style "cod" :icon "file_submodule" :face font-lock-preprocessor-face)
	  (numeric :style "cod" :icon "symbol_numeric" :face font-lock-builtin-face)
	  (operator :style "cod" :icon "symbol_operator" :face font-lock-comment-delimiter-face)
	  (param :style "cod" :icon "symbol_parameter" :face default)
	  (property :style "cod" :icon "symbol_property" :face font-lock-variable-name-face)
	  (reference :style "cod" :icon "references" :face font-lock-variable-name-face)
	  (snippet :style "cod" :icon "symbol_snippet" :face font-lock-string-face)
	  (string :style "cod" :icon "symbol_string" :face font-lock-string-face)
	  (struct :style "cod" :icon "symbol_structure" :face font-lock-variable-name-face)
	  (text :style "cod" :icon "text_size" :face font-lock-doc-face)
	  (typeparameter :style "cod" :icon "list_unordered" :face font-lock-type-face)
	  (type-parameter :style "cod" :icon "list_unordered" :face font-lock-type-face)
	  (unit :style "cod" :icon "symbol_ruler" :face font-lock-constant-face)
	  (value :style "cod" :icon "symbol_field" :face font-lock-builtin-face)
	  (variable :style "cod" :icon "symbol_variable" :face font-lock-variable-name-face)
          (t :style "cod" :icon "code" :face font-lock-warning-face)))

  ;; Remember to add an entry for `t', the library uses that as default.
  ;; The Custom interface is also supported for tuning the variable above.

  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)
  )






(use-package consult
  :ensure t
  :init
  (global-set-key (kbd "C-x b") #'consult-buffer))

(use-package which-key
  :diminish
  :ensure t
  :init
  (which-key-mode))

(use-package helpful
  :ensure t
  :init
  (global-set-key (kbd "C-h f") #'helpful-callable)
  (global-set-key (kbd "C-h v") #'helpful-variable)
  (global-set-key (kbd "C-h k") #'helpful-key)
  (global-set-key (kbd "C-h x") #'helpful-command)
  :hook (helpful-mode . my-helpful-olivetti-setup))

(defun my-helpful-olivetti-setup ()
  "Enable Olivetti mode and set the preferred width."
  (olivetti-mode 1)
  (olivetti-set-width 84))

;; LSP

(use-package lsp-mode
  :ensure t
  ;; :hook ((c-mode . lsp)
  ;;        (c++-mode . lsp))
  :config
  (setq lsp-idle-delay 0.1) ; clangd is fast
  (setq lsp-headerline-breadcrumb-enable nil))

(use-package lsp-ui
  :ensure t
  :config
  (define-key lsp-ui-mode-map [remap xref-find-definitions] #'lsp-ui-peek-find-definitions)
  (define-key lsp-ui-mode-map [remap xref-find-references] #'lsp-ui-peek-find-references))

(use-package consult-flycheck
  :ensure t)

(use-package flycheck
  :ensure t)
(global-set-key (kbd "C-h C-e") #'consult-flycheck)




;; SCROLLING
(setq mouse-wheel-scroll-amount '(2 ((shift) . 5))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don"t accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse


;; OPTIMIZATIONS
(setq make-backup-files nil)
(setq auto-save-default nil)


;; (setq idle-update-delay 1.0)
(setq-default cursor-in-non-selected-windows nil)
;; (setq highlight-nonselected-windows nil)

;; (setq fast-but-imprecise-scrolling t)
;; (setq redisplay-skip-fontification-on-input t)

(setq custom-safe-themes t)
(setq use-dialog-box nil)
(setq confirm-nonexistent-file-or-buffer nil)
(setq confirm-kill-processes nil)

(defun shut-up-autosave-a (fn &rest args)
  "If a file has autosaved data, `after-find-file' will pause for 1 second to
tell you about it. Very annoying. This prevents that."
  (cl-letf (((symbol-function 'sit-for) #'ignore))
    (apply fn args)))

(advice-add 'after-find-file :around #'shut-up-autosave-a)



;; MAGIT

(use-package magit
  :ensure t
  :commands magit-status)

(global-set-key (kbd "C-h g") #'magit-status)
(global-set-key (kbd "C-h C-c") #'magit-log-all)

(defun laluxx/magit-bury-and-log-all ()
  "Bury the current Magit buffer and open Magit log all."
  (interactive)
  (magit-mode-bury-buffer)
  (magit-log-all))

(with-eval-after-load 'magit
  (define-key magit-revision-mode-map (kbd "q") 'laluxx/magit-bury-and-log-all))


;; EWW

(defun my-eww-mode-hook ()
  "Custom settings for `eww-mode`."
  (setq-local header-line-format nil))  ; Hide the header line

(add-hook 'eww-mode-hook #'my-eww-mode-hook)




;; AUTO INSERT

(auto-insert-mode)

(setq auto-insert-query nil)

(define-auto-insert
  "\\.org\\'"
  '("Default Org File Template"
    "#+TITLE: " (file-name-nondirectory (buffer-file-name)) "\n"
    "#+AUTHOR: " user-full-name "\n"
    "#+DATE: " (format-time-string "[%Y-%m-%d]") "\n"
    "#+OPTIONS: toc:2\n\n"
    ))


;; LANGUAGES

;; ELISP

(global-set-key (kbd "C-M-h") 'mark-defun-or-sexpr)

(defun mark-defun-or-sexpr ()
  "Mark the current s-expression or if at `(` or `)`, mark only that s-expression."
  (interactive)
  (if (or (eq (char-after) ?\() (eq (char-after) ?\)))
      (mark-sexp)
    (mark-defun)))

(defun setup-emacs-lisp-keybindings ()
  "Set up keybindings for `emacs-lisp-mode`."
  (define-key emacs-lisp-mode-map (kbd "C-M-h") 'mark-defun-or-sexpr))

(add-hook 'emacs-lisp-mode-hook 'setup-emacs-lisp-keybindings)



;; (setq inferior-lisp-program "clisp")

;; ;; LISP Configuration with enhanced SLY interaction
;; (use-package sly
;;   :ensure t
;;   :config
;;   (setq sly-command-switch-to-existing-lisp 'always)
;;   (setq inferior-lisp-program "clisp"))

;; ;; TODO add a bool value to switch to the sly buffer on save
;; (defun my-lisp-load-on-save ()
;;   "Enhanced save function for Lisp files. It checks for any active SLY buffer, starts SLY if necessary, then loads the file only if SLY was started by this function."
;;   (add-hook 'after-save-hook
;;             (lambda ()
;;               (let ((source-buffer (current-buffer))
;;                     (sly-buffer-prefix "*sly-mrepl for clisp*")
;;                     (sly-started nil))
;;                 ;; Check if any SLY buffer exists and start SLY if none exists
;;                 (unless (seq-some (lambda (buffer)
;;                                     (string-prefix-p sly-buffer-prefix (buffer-name buffer)))
;;                                   (buffer-list))
;;                   (sly)
;;                   (setq sly-started t)) ; Mark that SLY was started by this action
;;                 ;; Wait briefly to ensure SLY has started if needed
;;                 (when sly-started
;;                   (sleep-for 0.5)) ; Adjust timing if necessary
;;                 ;; If SLY was started by this function, switch back and load the file
;;                 (if sly-started
;;                     (progn
;;                       (switch-to-buffer-other-window source-buffer)
;;                       (sly-load-file (buffer-file-name)))
;;                   ;; Otherwise just load the file without switching windows
;;                   (sly-load-file (buffer-file-name))))) ; Load the current file into Lisp
;;             nil 'local))


;; (add-hook 'lisp-mode-hook 'my-lisp-load-on-save)



(use-package glsl-mode
  :ensure t)

(use-package auctex
  :ensure t
  :hook
  (LaTeX-mode . turn-on-prettify-symbols-mode))

(use-package haskell-mode
  :ensure t
  :config
  (setq haskell-process-show-debug-tips nil))

(defun laluxx/haskell-prettify-symbols ()
  "Prettify backslash to lambda in Haskell mode."
  (push '("\\" . "λ") prettify-symbols-alist)
  (prettify-symbols-mode))

(add-hook 'haskell-mode-hook 'laluxx/haskell-prettify-symbols)


(defun laluxx/haskell-load-on-save ()
  "When saving, load the current Haskell file interactively."
  (add-hook 'after-save-hook
            (lambda ()
              (call-interactively 'haskell-process-load-file))
            nil 'local))

(add-hook 'haskell-mode-hook 'laluxx/haskell-load-on-save)

(defun setup-haskell-interactive-keys ()
  "Set up custom keybindings for the Haskell interactive mode."
  (local-set-key (kbd "<up>") 'haskell-interactive-mode-history-previous)
  (local-set-key (kbd "<down>") 'haskell-interactive-mode-history-next)
  (local-set-key (kbd "C-l") 'haskell-interactive-mode-clear))

(add-hook 'haskell-interactive-mode-hook 'setup-haskell-interactive-keys)



(use-package rust-mode
  :ensure t
  :defer t
  :mode ("\\.rs\\'" . rust-mode))

(use-package zig-mode
  :ensure t
  :defer t
  :mode ("\\.zig\\'" . zig-mode))



;; C
(setq-default c-basic-offset 4
              tab-width 4
              indent-tabs-mode nil)


;; JADE

(add-to-list 'auto-mode-alist '("\\.jade\\'" . rust-mode))


;; (defun my-jade-save-hook ()
;;   "Run 'jade' command if the current buffer is visiting a .jade file."
;;   (when (and (buffer-file-name)          ; Ensure there's a file associated with the buffer
;;              (string-match "\\.jade\\'" (buffer-file-name)))  ; Check if the file has a .jade extension
;;     (shell-command (concat "jade " (shell-quote-argument (buffer-file-name))))))  ; Run the jade command on the file

(defun my-jade-save-hook ()
  "Run './jade' command if the current buffer is visiting a .jade file."
  (when (and (buffer-file-name)          ; Ensure there's a file associated with the buffer
             (string-match "\\.jade\\'" (buffer-file-name)))  ; Check if the file has a .jade extension
    (shell-command (concat "./jade " (shell-quote-argument (buffer-file-name))))))  ; Run the jade command on the file


;; Add the hook to `after-save-hook`
(add-hook 'after-save-hook 'my-jade-save-hook)



;;;; IELM
(setq ielm-header "")
(setq ielm-prompt " 〉 ")

(add-hook 'ielm-mode-hook (lambda ()
                            (define-key ielm-map (kbd "C-l")
                                        (lambda ()
                                          (interactive)
                                          (recenter-top-bottom 0)))))



;; FUNCTIONS


(defun laluxx/toggle-scratch-buffer ()
  "Toggle the scratch buffer. If the scratch buffer is not visible, create it in a new window."
  (interactive)
  (let ((scratch-buffer (get-buffer "*scratch*")))
    (if (and scratch-buffer (get-buffer-window scratch-buffer))
        (delete-window (get-buffer-window scratch-buffer))
      (progn
        (split-window-below)
        (other-window 1)
        (switch-to-buffer "*scratch*")))))


(defun laluxx/copy-project ()
  "Concatenate the content of all .c and .h files in the current directory and copy to the clipboard."
  (interactive)
  (let ((files (directory-files "." t "\\.[ch]$"))
        (content ""))
    (dolist (file files)
      (setq content (concat content (when (file-readable-p file)
                                      (with-temp-buffer
                                        (insert-file-contents file)
                                        (buffer-string)))
                            "\n\n"))) ; Add extra newlines between files for readability
    (unless (string= content "")
      (kill-new content)
      (message "Copied content of .c and .h files to clipboard."))))


(defun laluxx/cycle-line-numbers ()
  "Cycle between line number modes: absolute, relative, none."
  (interactive)
  (cond
   ((eq display-line-numbers t)
    (setq display-line-numbers 'relative))

   ((eq display-line-numbers 'relative)
    (setq display-line-numbers nil))

   (t (setq display-line-numbers t))))

(defun laluxx/random-numbers ()
  "Replace all numbers in the current buffer or selected region with random numbers from 1 to 100, maintaining the format (integer or float)."
  (interactive)
  (save-excursion
    (let (replacements
          (start (if mark-active (region-beginning) (point-min)))
          (end (if mark-active (region-end) (point-max))))
      (goto-char start)
      ;; Collect all numbers and their positions within the specified range
      (while (and (< (point) end)
                  (re-search-forward "\\b\\([0-9]+\\(?:\\.[0-9]+\\)?\\)\\b" end t))
        (let* ((match-start (match-beginning 0))
               (match-end (match-end 0))
               (original (match-string 0))
               (is-float (string-match "\\." original))
               (random-number (1+ (random 100)))
               (replacement (if is-float
                                (format "%.1f" random-number)
                              (number-to-string random-number))))
          (push (list match-start match-end replacement) replacements)))
      ;; Replace all collected numbers
      (dolist (rep replacements)
        (goto-char (car rep))
        (delete-region (car rep) (cadr rep))
        (insert (caddr rep))))))


(defun laluxx/stringify-region (start end)
  "Put a double quote at the start and end of each line in the selection."
  (interactive "r")
  (save-excursion
    (goto-char start)
    (while (< (point) end)
      (beginning-of-line)
      (insert "\"")
      (end-of-line)
      (insert "\"")
      (forward-line 1)
      (setq end (+ end 2)))))

(defun laluxx/smart-hungry-delete-backward ()
  "Delete contiguous stream of whitespace backward, or a single character if no whitespace is found. Leaves a newline if whitespaces spans multiple lines."
  (interactive)
  (let ((start (point)))
    (skip-chars-backward " \t\n")
    (if (> (count-lines (point) start) 1)
        (progn
          ;; If spanning multiple lines, delete to just before the first newline encountered.
          (re-search-forward "\n" start t)
          (delete-region (point) start))
      (if (= (point) start)
          ;; If no whitespace is found, delete the previous character.
          (delete-char -1)
        ;; Otherwise, just delete the whitespace.
        (delete-region (point) start)))))

(global-set-key (kbd "C-c C-<backspace>") 'laluxx/smart-hungry-delete-backward)


(defun laluxx/find-header ()
  "Toggle between a C source file and its corresponding header file."
  (interactive)
  (let* ((current-file (buffer-file-name))
         (extension (file-name-extension current-file))
         (base-name (file-name-sans-extension current-file))
         target-file)
    ;; Determine the target file based on the extension of the current file
    (setq target-file
          (cond ((string= extension "c") (concat base-name ".h"))
                ((string= extension "h") (concat base-name ".c"))
                (t (error "Not a C or Header file: %s" current-file))))
    ;; Check if the target file exists and open it
    (if (file-exists-p target-file)
        (find-file target-file)
      (message "File does not exist: %s" target-file))))

(global-set-key (kbd "C-x C-h") 'laluxx/find-header)

(defun laluxx/google-this (query)
  "Search QUERY using Firefox."
  (interactive "sGoogle: ")
  (shell-command (concat "xdg-open 'https://www.google.com/search?q="
                         (url-hexify-string query) "'")))


(defun laluxx/kill-whole-word ()
  "Kill the entire word under the cursor, regardless of point position within the word.
If no word is under the cursor, move to the next word and kill that word."
  (interactive)
  (let ((bounds (bounds-of-thing-at-point 'word)))
    (if bounds
        (kill-region (car bounds) (cdr bounds))
      (progn
        (forward-word)
        (setq bounds (bounds-of-thing-at-point 'word))
        (if bounds
            (kill-region (car bounds) (cdr bounds))
          (message "No word found"))))))

(defun find-file-in-home ()
  "Find a file starting from the home directory."
  (interactive)
  (let ((default-directory (expand-file-name "~")))
    (call-interactively 'find-file)))

(global-set-key (kbd "C-x ~") 'find-file-in-home)

(defun laluxx/toggle-shell ()
  (interactive)
  (let ((buf (get-buffer "*ansi-term*")))
    (if buf
        (if (equal (current-buffer) buf)
            (bury-buffer)
          (switch-to-buffer buf))
      (ansi-term "/bin/bash"))))




(defun laluxx/kill-current-buffer ()
  "Kill the current buffer without prompting."
  (interactive)
  (kill-buffer (current-buffer)))

(defun laluxx/copy-buffer ()
  "Copy the entire buffer to the clipboard."
  (interactive)
  (save-excursion
    (mark-whole-buffer)
    (kill-ring-save (point-min) (point-max))))

(defun toggle-modeline ()
  "Toggle the visibility of the modeline in the current buffer."
  (interactive)
  (setq mode-line-format
        (if mode-line-format
            nil
          (default-value 'mode-line-format)))
  (force-mode-line-update))


(use-package eat
  :ensure t
  :config
  (define-key eat-mode-map (kbd "C-c C-j") 'laluxx/toggle-eat))

(defun laluxx/toggle-eat ()
  (interactive)
  (if (get-buffer "*eat*")
      (if (equal (current-buffer) (get-buffer "*eat*"))
          (bury-buffer)
        (eat))
    (eat)))



(defun adjust-hex-color (hex-color percentage lighter)
  "Adjust HEX-COLOR by PERCENTAGE to make it LIGHTER or DARKER.
If LIGHTER is non-nil, the color will be lightened; otherwise, it will be darkened."
  (let* ((hex-color (if (string-prefix-p "#" hex-color)
                        (substring hex-color 1)
                      hex-color))
         (r (string-to-number (substring hex-color 0 2) 16))
         (g (string-to-number (substring hex-color 2 4) 16))
         (b (string-to-number (substring hex-color 4 6) 16))
         (factor (if lighter
                     (/ (+ 100 percentage) 100.0)
                   (/ (- 100 percentage) 100.0)))
         (adjust (lambda (val) (min 255 (max 0 (round (* val factor))))))
         (r-new (funcall adjust r))
         (g-new (funcall adjust g))
         (b-new (funcall adjust b)))
    (format "#%02X%02X%02X" r-new g-new b-new)))

(defun interactive-adjust-hex-color ()
  "Interactive function to adjust a hex color."
  (interactive)
  (let* ((hex-color (read-string "Enter hex color (e.g., #738FD7): "))
         (percentage (read-number "Enter percentage to adjust (e.g., 10): "))
         (lighter (y-or-n-p "Lighten the color? "))
         (result (adjust-hex-color hex-color percentage lighter)))
    (message "Adjusted color: %s" result)
    (kill-new result))) ;; Copy the result to the clipboard




;; BITMAP

;; (defvar bitmap-artist-mode-map
;;   (let ((map (make-sparse-keymap)))
;;     ;; Bind hjkl to movement functions
;;     (define-key map (kbd "h") 'bitmap-artist-mode-left)
;;     (define-key map (kbd "j") 'bitmap-artist-mode-down)
;;     (define-key map (kbd "k") 'bitmap-artist-mode-up)
;;     (define-key map (kbd "l") 'bitmap-artist-mode-right)
;;     ;; Bind x to swap characters
;;     (define-key map (kbd "x") 'bitmap-artist-mode-swap)
;;     ;; Bind ESC to exit the mode
;;     (define-key map (kbd "ESC") 'bitmap-artist-mode-exit)
;;     ;; Bind nfpb to move the point (non-ctrl)
;;     (define-key map (kbd "n") 'bitmap-artist-mode-down)
;;     (define-key map (kbd "f") 'bitmap-artist-mode-right)
;;     (define-key map (kbd "p") 'bitmap-artist-mode-up)
;;     (define-key map (kbd "b") 'bitmap-artist-mode-left)
;;     map)
;;   "Keymap for `bitmap-artist-mode'.")

;; (define-minor-mode bitmap-artist-mode
;;   "A minor mode for bitmap editing with cursor movement and character swapping."
;;   nil
;;   " Bitmap"
;;   bitmap-artist-mode-map)

;; (defvar bitmap-artist-mode-direction 'right
;;   "Current direction of movement for `bitmap-artist-mode-swap`.")

;; (defun bitmap-artist-mode-left ()
;;   "Move point left."
;;   (interactive)
;;   (backward-char))

;; (defun bitmap-artist-mode-right ()
;;   "Move point right."
;;   (interactive)
;;   (forward-char))

;; (defun bitmap-artist-mode-up ()
;;   "Move point up."
;;   (interactive)
;;   (previous-line))

;; (defun bitmap-artist-mode-down ()
;;   "Move point down."
;;   (interactive)
;;   (next-line))

;; (defun bitmap-artist-mode-swap ()
;;   "Swap the character under the cursor between '.' and 'X', and handle direction."
;;   (interactive)
;;   (let* ((original-pos (point))       ; Save the original position
;;          (current-char (char-to-string (char-after)))
;;          (char-left (if (not (eq (point) (point-min)))
;;                         (char-to-string (char-before))
;;                       nil)))
;;     ;; Swap the character under the cursor
;;     (cond
;;      ((string= current-char ".")
;;       (delete-char 1)
;;       (insert "X"))
;;      ((string= current-char "X")
;;       (delete-char 1)
;;       (insert ".")))
;;     ;; Move back to the original position
;;     (goto-char original-pos)
;;     ;; Check if the character to the left is '"'
;;     (when (string= char-left "\"")
;;       ;; Toggle direction
;;       (setq bitmap-artist-mode-direction
;;             (if (eq bitmap-artist-mode-direction 'right) 'left 'right)))))

;; (defun bitmap-artist-mode-exit ()
;;   "Exit `bitmap-artist-mode`."
;;   (interactive)
;;   (bitmap-artist-mode -1))


;; (use-package fringe-helper
  
;;   :ensure t)

;; (fringe-helper-define 'test-bitmap '(top repeat)
;;   "........"
;;   "X......."
;;   "XX......"
;;   "XXX....."
;;   "XXXX...."
;;   "XXXXX..."
;;   "XXXXX..."
;;   "XXXX...."
;;   "XXX....."
;;   "XX......"
;;   "X......."
;;   )

;; (require 'flymake)

;; (defvar flymake-fringe-overlays nil
;;   "List of fringe overlays created by `flymake`.")

;; (make-variable-buffer-local 'flymake-fringe-overlays)

;; (defun my-flymake-add-to-fringe (beg end tooltip-text face mouse-face)
;;   "Add a fringe indicator for Flymake errors or warnings using `test-bitmap`."
;;   (let ((bitmap (fringe-helper-create 'test-bitmap)))
;;     (push (fringe-helper-insert-region
;;            beg end
;;            bitmap
;;            'left-fringe 'font-lock-warning-face)
;;           flymake-fringe-overlays)))

;; (defun my-flymake-remove-from-fringe ()
;;   "Remove fringe indicators for Flymake errors or warnings."
;;   (mapc 'fringe-helper-remove flymake-fringe-overlays)
;;   (setq flymake-fringe-overlays nil))

;; ;; Add advice to Flymake functions to use custom fringe indicators
;; (advice-add 'flymake-make-overlay :after #'my-flymake-add-to-fringe)
;; (advice-add 'flymake-delete-own-overlays :after #'my-flymake-remove-from-fringe)

;; (defun test-insert-bitmap ()
;;   "Insert the `test-bitmap` into the current buffer's left fringe for testing."
;;   (interactive)
;;   (let ((beg (point))
;;         (end (line-end-position)))
;;     ;; Insert the custom bitmap into the fringe
;;     (fringe-helper-insert-region
;;      beg end
;;      'test-bitmap
;;      'left-fringe
;;      'font-lock-warning-face)))








(defun laluxx/find-package-source-code ()
  "NOTE Work only with 'elpa' opens a .el file corresponding to the extended 'word' under the cursor in the ~/.config/emacs/elpa/ directory in a new window."
  (interactive)
  (save-excursion
    (let* ((start (progn (skip-chars-backward "^ \t\n") (point)))
	       (end (progn (skip-chars-forward "^ \t\n") (point)))
	       (package-name (buffer-substring-no-properties start end))
	       (elpa-dir "~/.config/emacs/elpa/")
	       (directories (directory-files elpa-dir t "\\`[^.].*")) ; ignore hidden dirs
	       matching-dir file-path found)

      ;; Find the first directory that starts with the package name and has a version
      (dolist (dir directories found)
	    (when (string-match-p (format "\\`%s-.*" (regexp-quote package-name)) (file-name-nondirectory dir))
	      (setq matching-dir dir)
	      (setq found t)))

      (when matching-dir
	    ;; Assuming the main .el file has the same name as the package
	    (setq file-path (concat matching-dir "/" package-name ".el"))

	    ;; Check if the .el file exists or fallback to any .el file
	    (unless (file-exists-p file-path)
	      (let ((el-files (directory-files matching-dir t "\\.el\\'")))
	        (when el-files
	          (setq file-path (car el-files)))))

	    (if (file-exists-p file-path)
	        (find-file-other-window file-path)  ; Open the file in a new window if it exists
	      (message "Elisp file does not exist: %s" file-path)))
      (unless found
	    (message "No directory starts with: %s" package-name)))))




;; ORG

;; TODO https://github.com/alphapapa/org-super-agenda
;; TODO https://github.com/bastibe/org-journal

(require 'org-tempo)

(setq org-hide-emphasis-markers t)
(setq org-agenda-files '("~/org/"))
(add-hook 'org-mode-hook 'org-indent-mode)


(use-package org-bullets
  :ensure t
  :hook (org-mode . org-bullets-mode)
  :config
  (setq org-bullets-bullet-list '("◉" "○" "⬠" "⚫"))) ;; • ●


(defun laluxx/org-next-visible-heading-and-recenter ()
  "Move to the next visible heading and recenter the window."
  (interactive)
  (org-next-visible-heading 1)
  (recenter-top-bottom 0))

(defun laluxx/org-previous-visible-heading-and-recenter ()
  "Move to the previous visible heading and recenter the window."
  (interactive)
  (org-previous-visible-heading 1)
  (recenter-top-bottom 0))

(global-set-key (kbd "C-c l") #'org-store-link)
(global-set-key (kbd "C-c a") #'org-agenda)
(global-set-key (kbd "C-c c") #'org-capture)

(with-eval-after-load 'org
  (define-key org-mode-map (kbd "C-c C-n") 'laluxx/org-next-visible-heading-and-recenter)
  (define-key org-mode-map (kbd "C-c C-p") 'laluxx/org-previous-visible-heading-and-recenter)
  (setq
   org-startup-indented t
   org-enforce-todo-dependencies t
   org-priority-faces
   '((?A . error)
     (?B . warning)
     (?C . success))
   org-enforce-todo-dependencies t))





;; TODO only for side-dired
(setq dired-listing-switches
      "-l --almost-all --human-readable --group-directories-first --no-group") ;; --time-style=long-iso


(defun side-dired ()
  "Toggle a minimal Dired buffer on the left side of the frame."
  (interactive)
  (let* ((buf-name "*dired*")
         (buf (get-buffer buf-name))
         (window (get-buffer-window buf-name 'visible)))
    (if (and buf window)
        ;; If the buffer is already open, close it
        (progn
          (delete-window window)
          (kill-buffer buf))
      ;; Otherwise, open a new Dired buffer
      (let ((buf (dired-noselect default-directory))) ;; Open Dired buffer
        (with-current-buffer buf
          (dired-hide-details-mode) ;; Hide details
          ;; Replace modeline with current path
          (setq mode-line-format
                (list " "
                      '(:eval (abbreviate-file-name default-directory))
                      " ")))
        (pop-to-buffer buf '((display-buffer-in-side-window)
                             (side . left)
                             (window-width . 35))) ;; TODO make 35 a variable
        (select-window (get-buffer-window buf))))))

(setq dired-hide-details-hide-information-lines nil)


(global-set-key (kbd "C-c C-h") 'side-dired)

(put 'narrow-to-region 'disabled nil)





(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
