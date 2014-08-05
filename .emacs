(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(blink-cursor-mode nil)
 '(cua-mode nil nil (cua-base))
 '(custom-enabled-themes nil)
 '(custom-safe-themes (quote ("86e74c4c42677b593d1fab0a548606e7ef740433529b40232774fbb6bc22c048" default)))
 '(menu-bar-mode nil)
 '(nyan-mode t)
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.milkbox.net/packages/"))))
 '(scheme-program-name "petite")
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "darkslategrey" :foreground "wheat" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 136 :width normal :foundry "outline" :family "Courier New")))))
(autoload 'scheme-mode "cmuscheme" "Major mode for Scheme." t)
(autoload 'run-scheme "cmuscheme" "Switch to interactive Scheme buffer." t)
(setq auto-mode-alist (cons '("\\.ss" . scheme-mode) auto-mode-alist))


; load path 
(let* ((my-lisp-dir "~/.emacs.d/") 
        (default-directory my-lisp-dir)) 
   (setq load-path (cons my-lisp-dir load-path)) 
   (normal-top-level-add-subdirs-to-load-path)) 
(require 'color-theme)
    (color-theme-initialize)
    (color-theme-subtle-hacker)
