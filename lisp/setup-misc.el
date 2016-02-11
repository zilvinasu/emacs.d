;;; setup-misc.el  --- Misc configs
;;; Commentary:
;;; Configs for modes which require little configuration
;;; Code:
(add-hook 'prog-mode-hook 'flycheck-mode)
(add-hook 'prog-mode-hook 'company-mode)
(add-hook 'text-mode-hook 'flyspell-mode)
(winner-mode 1)
(yas-global-mode)

(provide 'setup-misc)
;;; setup-misc.el ends here
