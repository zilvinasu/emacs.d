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
  (add-to-list 'auto-mode-alist '("\.cljs$" . clojure-mode))
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
REPL: _f_igwheel _k_ill"
    ("f" (lambda ()
           (interactive)
           (save-some-buffers)
           (with-current-buffer (cider-current-repl-buffer)
             (goto-char (point-max))
             (insert "(require 'figwheel-sidecar.repl-api)
             (figwheel-sidecar.repl-api/cljs-repl)")
             (cider-repl-return))))
    ("k" cider-quit)
    ("q" nil nil))

  (defhydra hydra-clojure
    (:hint nil :exit t)
    "
REPL: _c_onnect _j_ack-in"
    ("c" cider-connect)
    ("j" cider-jack-in)
    ("q" nil nil))


  (define-key cider-repl-mode-map (kbd "C-c m m") 'hydra-cider-repl/body)
  (define-key clojure-mode-map (kbd "C-c m m") 'hydra-clojure/body))

(provide 'setup-clojure)
;;; setup-clojure.el ends here
