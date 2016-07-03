;;; init.el  --- Emacs init file
;;; Commentary:
;;; All the editor related configs are placed or and required here
;;; Code:

;; Packages
(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
        ("marmalade" . "http://marmalade-repo.org/packages/")
        ("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'load-path  "~/.emacs.d/lisp/")

(package-initialize)

(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

(when (not package-archive-contents)
  (package-refresh-contents))
(package-install-selected-packages)

(eval-when-compile
  (require 'use-package))

;; Setup base
(use-package setup-core)
(use-package setup-editor)
(use-package setup-osx
  :if (equal system-type 'darwin))

;; Setup modes
(use-package setup-misc)
(use-package setup-org)
(use-package setup-yaml)
(use-package setup-docker)
(use-package setup-restclient)
(use-package setup-web)
(use-package setup-js)
(use-package setup-go)
(use-package setup-clojure)
(use-package setup-python)
(use-package setup-ruby)
(use-package setup-haskell)

(use-package setup-smartparens)
(use-package setup-ivy)
(use-package setup-evil)
(use-package setup-kbds)
;;; init.el ends here
