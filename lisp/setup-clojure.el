;;; setup-clojure.el  ---  Clojure config
;;; Commentary:
;;; Clojure lang related modes and configurations
;;; Code:
(require 'cider)
(setq nrepl-hide-special-buffers t)
(setq nrepl-log-messages t)
(setq nrepl-buffer-name-separator "-")
(setq nrepl-buffer-name-show-port t)
(setq cider-repl-history-file "~/.emacs.d/nrepl-history")
(add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))
(add-to-list 'auto-mode-alist '("\.edn$" . clojure-mode))
(add-to-list 'auto-mode-alist '("gantryfile" . clojure-mode))
(add-hook 'cider-repl-mode-hook #'subword-mode)
(add-hook 'cider-mode-hook
          (lambda ()
            (eldoc-mode)))

(define-key cider-repl-mode-map (kbd "C-c m m") 'hydra-cider-repl/body)
(define-key clojure-mode-map (kbd "C-c m m") 'hydra-clojure/body)

(provide 'setup-clojure)
;;; setup-clojure.el ends here
