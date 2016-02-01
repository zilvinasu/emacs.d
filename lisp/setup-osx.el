;;; setup-osx.el  --- OSX cfg
;;; Commentary:
;;; OSX specific configs
;;; Code:
(set-frame-font "Input Mono Narrow-12")

;; Rebind modifier keys
(setq mac-option-modifier 'super)
(setq mac-command-modifier 'meta)
(setq ns-function-modifier 'hyper)

;; Fixup PATH
(add-hook
 'after-init-hook
 (lambda ()
   (setq exec-path-from-shell-check-startup-files nil)
   (exec-path-from-shell-initialize)
   (exec-path-from-shell-copy-envs '("WORKON_HOME" "GOPATH"))))

(provide 'setup-osx)
;;; setup-osx.el ends here
