;; shell
(add-hook 'shell-mode-hook
          (lambda ()
            (define-key shell-mode-map (kbd "<up>") 'comint-previous-input)
            (define-key shell-mode-map (kbd "<down>") 'comint-next-input)
            (define-key shell-mode-map (kbd "C-c h") 'helm-comint-input-ring)
            (define-key shell-mode-map (kbd "C-c c") 'clear-shell)))


(defun clear-shell ()
  (interactive)
  (let ((comint-buffer-maximum-size 0))
    (comint-truncate-buffer)))


(provide 'init-shell)
;; init-shell.el ends here
