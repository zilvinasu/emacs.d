(setq package-archives
      '(("gnu" . "http://elpa.gnu.org/packages/")
	("marmalade" . "http://marmalade-repo.org/packages/")
	("melpa" . "http://melpa.milkbox.net/packages/")))

(add-to-list 'load-path  "~/.emacs.d/lisp/")

(package-initialize)

(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

(require 'setup-core)
(require 'setup-editor)
(require 'setup-kbds)
(when (equal system-type 'darwin)
  (require 'setup-osx))
