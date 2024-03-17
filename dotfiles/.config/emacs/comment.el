(defun comment-or-uncomment-region-or-line ()
    "Comments or uncomments the region or the current line if there's no active region."
    (interactive)
    (let (beg end)
        (if (region-active-p)
            (setq beg (region-beginning) end (region-end))
            (setq beg (line-beginning-position) end (line-end-position)))
        (comment-or-uncomment-region beg end)
        ;(next-line)
        ))

(add-hook 'php-mode-hook 'my-php-mode-hook)
(defun my-php-mode-hook ()
  (set (make-local-variable 'comment-start) "//")
  (set (make-local-variable 'comment-padding) " ")
  (set (make-local-variable 'comment-end) "")
  (set (make-local-variable 'comment-style) 'indent))

