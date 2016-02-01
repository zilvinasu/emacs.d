;;; setup-ruby.el  ---  Ruby config
;;; Commentary:
;;; Ruby lang related modes and configurations
;;; Code:
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)

(provide 'setup-ruby)
;;; setup-ruby.el ends here
