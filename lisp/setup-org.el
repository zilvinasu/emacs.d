;;; setup-org.el  ---  Org config
;;; Commentary:
;;; Org mode related configs
;;; Code:
(use-package org
  :init
  (setq org-src-fontify-natively t)
  (setq org-replace-disputed-keys t)
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((shell . t)))
  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode)))

(provide 'setup-org)
;;; setup-org.el ends here
