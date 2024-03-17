;;code view
  ;(require 'ecb-autoloads)
  (setq ecb-auto-expand-tag-tree 'all)
  
  (global-set-key (kbd "C-x C-;") 'ecb-activate)
  (global-set-key (kbd "C-x C-'") 'ecb-deactivate)
  (global-set-key (kbd "C-.") 'ecb-goto-window-edit1)
  (global-set-key (kbd "C-,") 'ecb-goto-window-methods)
  
  
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "utf-8")
 '(ecb-display-image-icons-for-semantic-tags t)
 '(ecb-expand-methods-nodes "10")
 '(ecb-layout-name "left9")
 '(ecb-layout-window-sizes (quote (("left9" (ecb-methods-buffer-name 0.15028901734104047 . 0.975)))))
 '(ecb-options-version "2.40")
 '(ecb-tip-of-the-day nil)
 '(ecb-tree-expand-symbol-before t)
 '(ecb-use-speedbar-instead-native-tree-buffer nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

