(define-derived-mode cp-mode text-mode "Coding Practice"
  "Major mode for coding practice."
  (setq-default indent-tabs-mode . nil)
;  (setq tab-width 4)
  (setq tab-stop-list (number-sequence 4 200 4))
)
(provide 'cp-mode)

