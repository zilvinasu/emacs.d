;;; setup-docker.el  ---  Docker config
;;; Commentary:
;;; Docker mode related configs
;;; Code:
(use-package dockerfile-mode
  :init
  (add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode)))

(provide 'setup-docker)
;;; setup-docker.el ends here
