;;; Code:
(require 'org-bullets)
(require 'org-journal)



;;; org-jounal
(use-package org-journal
             :bind (("C-c t" . journal-file-today)
                    ("C-c y" . journal-file-yesterday)
                    ("C-c s" . find-in-journal))
             :custom
             (org-journal-dir "~/work/journal")
             (org-journal-file-format "%Y%m%d")
             (org-journal-date-format "%e %b %Y (%A)")
             (org-journal-time-format "")
             :preface
             (defun get-journal-file-today ()
               "Gets filename for today's journal entry."
               (let ((daily-name (format-time-string "%Y%m%d")))
                 (expand-file-name (concat org-journal-dir daily-name))

                 ))

             (defvar template-daily-journal
               "=be better than you were yesterday ;)=\n\n\n* Tasks\n\n\n\n* Notes\n\n\n\n* Ideas\n\n\n\n")

             (defun journal-file-today ()
               "Creates and load a journal file based on today's date."
               (interactive)
               (find-file (get-journal-file-today))
               (unless (file-exists-p (get-journal-file-today))
                 (insert template-daily-journal)))

             (defun get-journal-file-yesterday ()
               "Gets filename for yesterday's journal entry."
               (let* ((yesterday (time-subtract (current-time) (days-to-time 1)))
                      (daily-name (format-time-string "%Y%m%d" yesterday)))
                 (expand-file-name (concat org-journal-dir daily-name))))

             (defun journal-file-yesterday ()
               "Creates and load a file based on yesterday's date."
               (interactive)
               (find-file (get-journal-file-yesterday))
               (unless (file-exists-p (get-journal-file-yesterday))
                 (insert template-daily-journal)))

             (defun find-in-journal (expr)
               "Search an expression in my journal"
               (interactive "sExpression: ")
               (find-grep
                (concat "find " org-journal-dir " -type f -exec grep --color -nH --null -i '" expr "' \{\} +")))
             )

(provide 'init-journal)
;;; init-journal.el ends here
