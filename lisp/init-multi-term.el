(require 'multi-term)


;; term
(setq multi-term-program "/bin/bash")
(add-hook 'term-mode-hook
          (lambda ()
            (define-key term-raw-map (kbd "M-v") 'term-paste)))

(add-to-list 'term-unbind-key-list "C-s")
(add-to-list 'term-unbind-key-list "C-r")


(defun lb/term ()
  "Load .bash_profile secrets and aliases"
  (interactive)
  (save-excursion
    (multi-term)
    (let ((bff (buffer-name)))
      (comint-send-string bff "cd\n")
      (comint-send-string bff ". ~/.bash_profile\n"))))


(defun lb/ipython ()
  "My ipython running in terminal, not in shell"
  (interactive)
  (save-excursion
    (multi-term)
    (let ((bff (buffer-name)))
      (comint-send-string bff "cd\n")
      (comint-send-string bff ". ~/.bash_profile\n")
      (comint-send-string bff "ipython -i\n"))))

(set-terminal-coding-system 'utf-8-unix)


;; (global-set-key (kbd "C-z r") 'lb/term)
(global-set-key (kbd "C-c p r") 'lb/ipython)


(provide 'init-multi-term)
;; init-multi-term ends here
