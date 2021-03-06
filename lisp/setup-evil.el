;;; setup-evil.el  --- Evil mode configs
;;; Commentary:
;;; Evil mode related configurations
;;; Code:
(use-package evil
  :init
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
  :config
  (global-evil-leader-mode 1)
  (evil-leader/set-leader "<SPC>")
  (global-evil-surround-mode 1)
  (global-evil-matchit-mode 1)
  (evil-mode 1)
  
  (evil-set-initial-state 'paradox-menu-mode 'emacs)
  (evil-set-initial-state 'inferior-python-mode 'emacs)
  (evil-set-initial-state 'doc-view-mode 'emacs)
  (evil-set-initial-state 'eldoc-mode 'emacs)
  (evil-set-initial-state 'cider-docview-mode 'emacs)
  (evil-set-initial-state 'custom-theme-choose-mode 'emacs)
  (evil-set-initial-state 'help-mode 'emacs)
  (evil-set-initial-state 'special-mode 'emacs)
  (evil-set-initial-state 'cider-stacktrace-mode 'emacs)
  (evil-set-initial-state 'text-mode 'insert)
  (evil-set-initial-state 'git-commit-mode 'insert)
  (evil-set-initial-state 'shell-mode 'insert)

  (evil-leader/set-key
    "bb" 'switch-to-buffer
    "e" 'find-file
    "d" 'dired
    "j" 'avy-goto-char-timer
    "o"  'projectile-find-file
    "bk" 'kill-this-buffer
    "gs" 'magit-status
    "gl" 'magit-log-head
    "gd" 'magit-diff
    "ps" 'projectile-ag
    "pf" 'projectile-find-file
    "pd" 'projectile-dired
    "pk" 'projectile-kill-buffers
    "pp" 'projectile-switch-project)
  
  ;; \ is bound to evil-execute-in-emacs-state
  (bind-key (kbd "gd") (kbd "\\ M-.") evil-normal-state-map)
  (bind-key (kbd "C-o") (kbd "\\ M-,") evil-normal-state-map))

(provide 'setup-evil)
;;; setup-evil.el ends here
