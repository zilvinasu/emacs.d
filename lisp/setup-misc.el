;;; setup-misc.el  --- Misc configs
;;; Commentary:
;;; Configs for modes which require little configuration
;;; Code:
(add-hook 'prog-mode-hook 'flycheck-mode)
(add-hook 'text-mode-hook 'flyspell-mode)
(winner-mode 1)
(global-company-mode)
(yas-global-mode)

(provide 'setup-misc)
;;; setup-misc.el ends here
