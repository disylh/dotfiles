(add-to-list 'load-path "~/.emacs.d/lisp")
(add-to-list 'custom-theme-load-path "~/.emacs.d/lisp")

(require 'cl)
(require 'tomorrow-night-eighties-theme)
;;(load-file "~/.emacs.d/lisp/color-theme-tomorrow.el")
;;(require 'tomorrow-night-theme)
;(load-file "~/.emacs.d/lisp/tomorrow-night-theme.el")
;(tomorrow-night-theme)

;;(require 'cp-mode)
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(require 'csharp-mode)
(require 'google-c-style)

(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

;;(require 'cc-mode)
;;(require 'google-c-style)
;; (defun my-build-tab-stop-list (width)
;;   (let ((num-tab-stops (/ 80 width))
;;     (counter 1)
;;     (ls nil))
;;     (while (<= counter num-tab-stops)
;;       (setq ls (cons (* width counter) ls))
;;       (setq counter (1+ counter)))
;;     (set (make-local-variable 'tab-stop-list) (nreverse ls))))
;; (defun my-c-mode-common-hook ()
;; ;;  (c-set-style "google-c-style")
;;   (setq tab-width 2) ;; change this to taste
;;   (my-build-tab-stop-list tab-width)
;;   (setq c-basic-offset tab-width)
;;   (setq indent-tabs-mode nil) ;; force only spaces for indentation
;;   (local-set-key "\C-o" 'ff-get-other-file)
;;   (c-set-offset 'substatement-open 0)
;; ;;  (c-set-offset 'arglist-intro c-lineup-arglist-intro-after-paren)
;;   )
;; ;; google sytle is defined in above function
;; (add-hook 'c-mode-common-hook 'my-c-mode-common-hook)
;;(add-hook 'c++-mode-common-hook 'my-c-mode-common-hook)

(defun cpplint ()
  "check source code format according to Google Style Guide"
  (interactive)
  (compilation-start (concat "python ~/bin/cpplint.py " (buffer-file-name))))

(load "~/.emacs.d/lisp/clang-format.el")
(add-hook 'c-mode-common-hook (function (lambda () (local-set-key (kbd "TAB") 'clang-format-region))))
(add-hook 'c-mode-common-hook (function (lambda () (local-set-key (kbd "M-TAB") 'clang-format-buffer))))

(global-linum-mode 1)
(setq linum-format "%d ")
;;(linum ((t (:foreground ,zenburn-green+2 :background ,zenburn-bg+1))))
;;(linum ((,class (:foreground "#AFAFAF" :background "white"))))
(defun linum-face-settings ()
  "Face settings for `linum'."
  (custom-set-faces
   '(linum
     ((((background dark))
       :foreground "cyan")
      (t :foreground "gray")))))

(eval-after-load 'linum
  `(linum-face-settings))

(provide 'linum-face-settings)

;;(setq linum-format "%4d \u2502 ")
(setq column-number-mode t)
