;;; setup-kbds.el  --- KBDS
;;; Commentary:
;;; Globla bindings and rempapings
;;; Code:
(windmove-default-keybindings)
(global-set-key [remap find-file] 'helm-find-files)
(global-set-key [remap execute-extended-command] 'helm-M-x)
(global-unset-key (kbd "C-x c"))
(global-set-key (kbd "C-c h") 'helm-command-prefix)
(global-set-key (kbd "C-c g l") 'magit-log-head)
(global-set-key (kbd "C-c g s") 'magit-status)
(global-set-key (kbd "C-c l p") 'package-list-packages)
(global-set-key (kbd "C-;") #'comment-line)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-'") 'avy-goto-char-timer)
(global-set-key (kbd "C-=") 'er/expand-region)
(global-set-key (kbd "C--") 'er/contract-region)
(global-set-key (kbd "M-i") 'helm-swoop)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-g f") 'avy-goto-line)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)
 
(provide 'setup-kbds)
;;; setup-kbds.el ends here
