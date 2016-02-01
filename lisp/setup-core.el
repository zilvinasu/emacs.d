(setq gc-cons-threshold 100000000)
(setq inhibit-splash-screen t)
(setq apropos-sort-by-scores t)

(defalias 'yes-or-no-p 'y-or-n-p)
(defalias 'list-buffers 'ibuffer)

(scroll-bar-mode -1)
(tool-bar-mode -1)

(provide 'setup-core)
