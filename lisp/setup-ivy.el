;;; setup-ivy.el  ---  Ivy
;;; Commentary:
;;; ivy and related mode configurations
;;; Code:
(use-package ivy
  :ensure t
  :init
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t)
  (setq projectile-completion-system 'ivy)
  :config
  (projectile-global-mode))

(provide 'setup-ivy)
;;; setup-ivy.el ends here
