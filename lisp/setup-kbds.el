(windmove-default-keybindings)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "M-i") 'imenu)
(global-set-key (kbd "C-c l p") 'package-list-packages)

(provide 'setup-kbds)
