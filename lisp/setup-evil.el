;;; setup-evil.el  --- Evil mode configs
;;; Commentary:
;;; Evil mode related configurations
;;; Code:
(use-package evil
  :init
  (add-hook 'smartparens-enabled-hook #'evil-smartparens-mode)
  :config
  (global-evil-leader-mode 1)
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

  (evil-leader/set-leader "<SPC>")
  
  (evil-leader/set-key
   "b" 'helm-mini
   "e" 'find-file
   "j" 'avy-goto-char-timer
   "o" 'projectile-find-file
   "p" 'projectile-switch-project)
  
  ;; \ is bound to evil-execute-in-emacs-state
  (bind-key (kbd "gd") (kbd "\\ M-.") evil-normal-state-map)
  (bind-key (kbd "C-o") (kbd "\\ M-,") evil-normal-state-map))

(provide 'setup-evil)
;;; setup-evil.el ends here
