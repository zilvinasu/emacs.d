;;; setup-haskell.el  ---  Haskell config
;;; Commentary:
;;; Haskell lang related modes and configurations
;;; Code:
(use-package haskell
  :init
  (setq-default haskell-tags-on-save t)
  (setq-default haskell-process-type 'stack-gchi)
  (setq-default haskell-process-suggest-remove-import-lines t)
  (setq-default haskell-process-auto-import-loaded-modules t)
  (setq-default haskell-process-log t)
  :config
  (autoload 'ghc-init "ghc" nil t)
  (autoload 'ghc-debug "ghc" nil t)
  (add-hook 'haskell-mode-hook
            (lambda ()
              (ghc-init)
              (add-to-list 'company-backends 'company-ghc)))

  (add-hook 'haskell-mode-hook 'interactive-haskell-mode)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
  (add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)

  (eval-after-load 'haskell-mode
    '(progn
       (define-key haskell-mode-map (kbd "C-c C-l") 'haskell-process-load-or-reload)
       (define-key haskell-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
       (define-key haskell-mode-map (kbd "C-c C-n C-t") 'haskell-process-do-type)
       (define-key haskell-mode-map (kbd "C-c C-n C-i") 'haskell-process-do-info)
       (define-key haskell-mode-map (kbd "C-c C-n C-c") 'haskell-process-cabal-build)
       (define-key haskell-mode-map (kbd "C-c C-n c") 'haskell-process-cabal)
       (define-key haskell-mode-map (kbd "SPC") 'haskell-mode-contextual-space)))
  (eval-after-load 'haskell-cabal
    '(progn
       (define-key haskell-cabal-mode-map (kbd "C-c C-z") 'haskell-interactive-switch)
       (define-key haskell-cabal-mode-map (kbd "C-c C-k") 'haskell-interactive-mode-clear)
       (define-key haskell-cabal-mode-map (kbd "C-c C-c") 'haskell-process-cabal-build)
       (define-key haskell-cabal-mode-map (kbd "C-c c") 'haskell-process-cabal))))


(provide 'setup-haskell)
;;; setup-haskell.el ends here
