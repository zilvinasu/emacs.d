;;; setup-clojure.el  ---  Clojure config
;;; Commentary:
;;; Clojure lang related modes and configurations
;;; Code:
(use-package cider
  :init
  (setq nrepl-hide-special-buffers t)
  (setq nrepl-log-messages t)
  (setq nrepl-buffer-name-separator "-")
  (setq nrepl-buffer-name-show-port t)
  (setq cider-repl-history-file "~/.emacs.d/nrepl-history")
  (setq cider-cljs-lein-repl "(do (use 'figwheel-sidecar.repl-api) (start-figwheel!) (cljs-repl))")
  (add-to-list 'auto-mode-alist '("\.cljs$" . clojurescript-mode))
  (add-to-list 'auto-mode-alist '("\\.boot\\'" . clojure-mode))
  (add-to-list 'auto-mode-alist '("\.edn$" . clojure-mode))
  (add-to-list 'auto-mode-alist '("gantryfile" . clojure-mode))
  :config
  (add-hook 'cider-repl-mode-hook #'subword-mode)
  (add-hook 'cider-mode-hook
            (lambda ()
              (eldoc-mode)))

  (defhydra hydra-cider-repl
    (:hint nil :exit t)
    "
REPL: _k_ill"
    ("k" cider-quit)
    ("q" nil nil))

  (defhydra hydra-clojure
    (:hint nil :exit t)
    "
REPL: _c_onnect | _j_ack-in clj | _J_ack-in cljs"
    ("c" cider-connect)
    ("j" cider-jack-in)
    ("J" cider-jack-in-clojurescript)
    ("q" nil nil))


  (define-key cider-repl-mode-map (kbd "C-c m m") 'hydra-cider-repl/body)
  (define-key clojure-mode-map (kbd "C-c m m") 'hydra-clojure/body))

(provide 'setup-clojure)
;;; setup-clojure.el ends here
