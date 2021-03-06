;;; setup-osx.el  --- OSX cfg
;;; Commentary:
;;; OSX specific configs
;;; Code:
(defvar-local osx-frame-font "Input Mono Narrow")
(defvar-local osx-frame-font-size 11)

(when (find-font (font-spec :name osx-frame-font))
  (set-frame-font (format "%s-%d" osx-frame-font osx-frame-font-size)))

;; Rebind modifier keys
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)
(setq locate-command "mdfind")

;; Fixup PATH
(add-hook
 'after-init-hook
 (lambda ()
   (setq exec-path-from-shell-check-startup-files nil)
   (exec-path-from-shell-initialize)
   (exec-path-from-shell-copy-envs '("WORKON_HOME" "GOPATH"))))

(provide 'setup-osx)
;;; setup-osx.el ends here
