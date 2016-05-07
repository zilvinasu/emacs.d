;;; setup-web.el  ---  Web Mode config
;;; Commentary:
;;; Web Mode configurations
;;; Code:
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

(defun my-web-mode-hook ()
  (setq-local web-mode-markup-indent-offset 2)
  (setq-local web-mode-code-indent-offset 2)
  (setq-local web-mode-css-indent-offset 2)
  (setq-local web-mode-enable-auto-quoting nil)
  (yas-activate-extra-mode 'html-mode))

(add-hook 'web-mode-hook  'my-web-mode-hook)

(provide 'setup-web)
;;; setup-web.el ends here
