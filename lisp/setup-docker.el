;;; setup-docker.el  ---  Docker config
;;; Commentary:
;;; Docker mode related configs
;;; Code:

(require 'dockerfile-mode)
(add-to-list 'auto-mode-alist '("Dockerfile\\'" . dockerfile-mode))

(provide 'setup-docker)
;;; setup-docker.el ends here
