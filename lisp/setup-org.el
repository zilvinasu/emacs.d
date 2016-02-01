;;; setup-org.el  ---  Org config
;;; Commentary:
;;; Org mode related configs
;;; Code:

(setq org-src-fontify-natively t)
(setq org-replace-disputed-keys t)
(require 'org)
(org-babel-do-load-languages
 'org-babel-load-languages
 '((sh . t)))

(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

(provide 'setup-org)
;;; my-org.el ends here
