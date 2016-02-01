;;; setup-python.el  ---  Python config
;;; Commentary:
;;; Python lang related modes and configurations
;;; Code:
(elpy-enable)
(add-hook 'python-mode-hook
          (lambda ()
            (add-to-list 'company-backends 'elpy-company-backend)))

(provide 'setup-python)
;;; setup-python.el ends here
