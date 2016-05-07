;;; setup-smartparens.el  ---  smartparens config
;;; Commentary:
;;; smartparens mode related configs
;;; Code:
(use-package smartparens-config
  :init
  (bind-key "C-M-f" 'sp-forward-sexp smartparens-mode-map)
  (bind-key "C-M-b" 'sp-backward-sexp smartparens-mode-map)
  (bind-key "C-M-d" 'sp-down-sexp smartparens-mode-map)
  (bind-key "C-M-a" 'sp-backward-down-sexp smartparens-mode-map)
  (bind-key "C-S-d" 'sp-beginning-of-sexp smartparens-mode-map)
  (bind-key "C-S-a" 'sp-end-of-sexp smartparens-mode-map)
  (bind-key "C-M-e" 'sp-up-sexp smartparens-mode-map)
  (bind-key "C-M-u" 'sp-backward-up-sexp smartparens-mode-map)
  (bind-key "C-M-t" 'sp-transpose-sexp smartparens-mode-map)
  (bind-key "C-M-n" 'sp-next-sexp smartparens-mode-map)
  (bind-key "C-M-p" 'sp-previous-sexp smartparens-mode-map)
  (bind-key "C-M-k" 'sp-kill-sexp smartparens-mode-map)
  (bind-key "C-M-w" 'sp-copy-sexp smartparens-mode-map)
  (bind-key "M-<delete>" 'sp-unwrap-sexp smartparens-mode-map)
  (bind-key "M-<backspace>" 'sp-backward-unwrap-sexp smartparens-mode-map)
  (bind-key "C-<right>" 'sp-forward-slurp-sexp smartparens-mode-map)
  (bind-key "C-<left>" 'sp-forward-barf-sexp smartparens-mode-map)
  (bind-key "C-M-<left>" 'sp-backward-slurp-sexp smartparens-mode-map)
  (bind-key "C-M-<right>" 'sp-backward-barf-sexp smartparens-mode-map)
  (bind-key "M-D" 'sp-splice-sexp smartparens-mode-map)
  (bind-key "C-M-<delete>" 'sp-splice-sexp-killing-forward smartparens-mode-map)
  (bind-key "C-M-<backspace>" 'sp-splice-sexp-killing-backward smartparens-mode-map)
  (bind-key "C-S-<backspace>" 'sp-splice-sexp-killing-around smartparens-mode-map)
  (bind-key "C-]" 'sp-select-next-thing-exchange smartparens-mode-map)
  (bind-key "C-<left_bracket>" 'sp-select-previous-thing smartparens-mode-map)
  (bind-key "C-M-]" 'sp-select-next-thing smartparens-mode-map)
  (bind-key "M-F" 'sp-forward-symbol smartparens-mode-map)
  (bind-key "M-B" 'sp-backward-symbol smartparens-mode-map)
  :config
  (sp-local-pair 'minibuffer-inactive-mode "'" nil :actions nil)
  (sp-with-modes '(markdown-mode gfm-mode rst-mode)
    (sp-local-pair "*" "*" :bind "C-*")
    (sp-local-tag "2" "**" "**")
    (sp-local-tag "s" "```scheme" "```")
    (sp-local-tag "<"  "<_>" "</_>" :transform 'sp-match-sgml-tags))

  (sp-with-modes '(tex-mode plain-tex-mode latex-mode)
    (sp-local-tag "i" "\"<" "\">"))

  (sp-with-modes '(web-mode html-mode sgml-mode)
    (sp-local-pair "<" ">"))

  (sp-with-modes sp-lisp-modes
    (sp-local-pair "(" nil :bind "C-("))
  (smartparens-global-mode 1)
  (add-hook 'lisp-mode-hook 'smartparens-strict-mode)
  (show-smartparens-global-mode 1))

(provide 'setup-smartparens)
;;; setup-smartparens.el ends here
