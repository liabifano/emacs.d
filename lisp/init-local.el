;;; Code:

(exec-path-from-shell-copy-env "PYTHONPATH")

;;; line number
(add-hook 'prog-mode-hook 'linum-mode)
(add-hook 'org-mode-hook 'org-bullets-mode)

;;; my keys
(dolist (key '("\C-v"
               "\M-c"
               "\M-v"
               "\M-d"
               "\M-D"
               "\M-w"
               ))
  (global-unset-key key))


;;; keys
(global-set-key (kbd "M-v") 'cua-paste)
(global-set-key (kbd "M-c") 'cua-copy-region)
(global-set-key (kbd"C-c r") 'run-python)
(global-set-key (kbd "C-c C-g") 'google-this)
(global-set-key (kbd "C-x c") 'kill-some-buffers)
(global-set-key (kbd "C-c p n") 'ein:jupyter-server-start)
(global-set-key (kbd "C-c p k") 'ein:jupyter-server-stop)
;;; Intellij keys
;; (global-set-key (kbd "M-0") 'split-window-horizontally)
;; (global-set-key (kbd "M-9") 'split-window-vertically)
;;; chorme's keys
(global-set-key (kbd "M-w") 'delete-window)
(global-set-key (kbd "M-q") 'delete-other-windows)
(global-set-key (kbd "M-l") 'other-window)
(global-set-key (kbd "M-z") 'undo)
;;; Spotify
(global-set-key (kbd "C-c s s") 'helm-spotify-plus)  ;; s for SEARCH
(global-set-key (kbd "C-c s f") 'helm-spotify-plus-next)
(global-set-key (kbd "C-c s b") 'helm-spotify-plus-previous)
(global-set-key (kbd "C-c s p") 'helm-spotify-plus-play)
(global-set-key (kbd "C-c s g") 'helm-spotify-plus-pause) ;; g cause you know.. C-g stop things :)



;;; themes
(set-frame-parameter (selected-frame) 'alpha '(85 85))
(add-to-list 'default-frame-alist '(alpha 85 85))
(set-cursor-color "DarkOrange")
(setq-default cursor-type 'bar)
(global-hl-line-mode 1)
(set-face-background hl-line-face "gray13")

(require 'google-this)
(google-this-mode 1)
;; (set-theme-dark)

(dolist (key '("\C-r"
               "\C-v"
               "\M-c"
               "\M-v"
               ))
  (global-unset-key key))

(global-set-key (kbd "M-v") 'cua-paste)
(global-set-key (kbd "M-c") 'cua-copy-region)
(global-set-key (kbd "C-c e") 'pyvenv-workon)
(global-set-key (kbd "C-c i") 'elpy-autopep8-fix-code)
(global-set-key (kbd "C-c C-j") 'imenu)
(global-set-key (kbd "C-c l") 'elpy-goto-definition)
(global-set-key (kbd "C-c g") 'elpy-goto-definition-other-window)
(global-set-key (kbd "C-r p") 'run-python)
(global-set-key (kbd "C-r n") 'ein:jupyter-server-start)
(global-set-key (kbd "C-r k") 'ein:jupyter-server-stop)
(global-set-key (kbd "C-c k") 'kill-this-buffer)
(global-set-key (kbd "C-c c") 'kill-some-buffers)


(set-frame-parameter (selected-frame) 'alpha '(85 85))
(add-to-list 'default-frame-alist '(alpha 85 85))

(provide 'init-local)
;;; init-local.el ends here
