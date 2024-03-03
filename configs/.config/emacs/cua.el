;; ++++++++ CUA mode: C-x, C-c, C-v for copying, pasting, C-z for undo ++++++

(cua-mode t)
(transient-mark-mode 1)													;; No region when it is not highlighted
(setq cua-keep-region-after-copy t)										;; Standard Windows behaviour 

;; Delete (and its variants) delete forward instead of backward.        ;; C-Backspace kills backward a word (as C-Delete normally would). ;; M-Backspace does undo. 
;; Home and End move to beginning and end of line.                      ;; C-Home and C-End move to beginning and end of buffer. ;; C-Escape does list-buffers."

(delete-selection-mode nil)

;; Makes clipboard work (copy from emacs)

(setq x-select-enable-clipboard t)
(setq interprogram-paste-function 'x-cut-buffer-or-selection-value)
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; Other global keybindings
;(global-set-key (kbd "C-s") 'save-buffer)

;; (global-set-key (kbd "C-S-s") 'another-command)  ;;C-S-s (Ctrl+Shift+s)