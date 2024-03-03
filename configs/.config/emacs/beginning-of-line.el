 (defun back-to-indentation-or-beginning () (interactive)
   (if (= (point) (progn (back-to-indentation) (point)))
       (beginning-of-line)))

(global-set-key (kbd "<home>") 'back-to-indentation-or-beginning)


(defun back-to-indentation-or-beginning-select ()
  ""
  (interactive) ;; this is a command (i.e. can be interactively used)

  (when (not (region-active-p))  ;; if the region is not active...
    (push-mark (point) t t))     ;; ... set the mark and activate it

  (back-to-indentation-or-beginning))               ;; move point ;; (backward-word)

;; Bind the command to a key
(global-set-key (kbd "S-<home>") 'back-to-indentation-or-beginning-select)
