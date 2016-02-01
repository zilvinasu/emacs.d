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

;; Setup base
(require 'setup-core)
(require 'setup-editor)
(when (equal system-type 'darwin)
  (require 'setup-osx))

;; Setup modes
(require 'setup-misc)
(require 'setup-org)
(require 'setup-yaml)
(require 'setup-docker)
(require 'setup-restclient)
(require 'setup-web)
(require 'setup-js)
(require 'setup-go)
(require 'setup-clojure)
(require 'setup-python)
(require 'setup-ruby)
(require 'setup-haskell)

(require 'setup-smartparens)
(require 'setup-helm)
(require 'setup-kbds)
;;; init.el ends here
