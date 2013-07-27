;; interface

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(default-input-method "russian-computer")
 '(desktop-save-mode t)
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(show-paren-mode t)
 '(sml-electric-pipe-mode nil)
 '(tool-bar-mode nil))

(setq hl-line-mode t)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:height 120 :width normal :family "Monospace")))))

;; abbrevs

(setq abbrev-file-name "~/.emacs.d/my_emacs_abbrev.el")
(setq abbrev-mode t)
(setq-default abbrev-mode t)

;; haskell-mode

(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(add-hook 'haskell-mode-hook 'haskell-font-lock-symbols t)

(global-set-key [(control meta m)] 'imenu)

;; ido-mode

(ido-mode t)

;; reverting buffers

(global-auto-revert-mode t)

(defun revert-all-buffers ()
    "Refreshes all open buffers from their respective files."
    (interactive)
    (dolist (buf (buffer-list))
      (with-current-buffer buf
        (when (and (buffer-file-name) (not (buffer-modified-p)))
          (revert-buffer t t t) )))
    (message "Refreshed open files.") )

;; key bindings

(global-set-key [(control tab)] 'other-window)
(global-set-key [(control ?z)] 'undo)
(global-set-key (kbd "C-x a") 'align-regexp)
(global-set-key (kbd "M-g") 'goto-line)

(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

(global-set-key (kbd "M-<up>"  ) (lambda () (interactive) (scroll-down 1)))
(global-set-key (kbd "M-<down>") (lambda () (interactive) (scroll-up   1)))
(global-set-key (kbd "C-c C-k") 'kill-some-buffers)

;; user defined functions

(defun dired-in-curr-dir ()
  (interactive)
  (dired ".")
)

(defun wrap ()
  (interactive)
  (toggle-truncate-lines)
)

(global-set-key [(control ?x) (control ?j)] 'dired-in-curr-dir)

;; Packages repo

(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))

;; R

auto-mode-alist (append (list '("\\.S$" . S-mode)
			      '("\\.s$" . S-mode)
			      '("\\.R$" . R-mode)
			      '("\\.r$" . R-mode)
	                )
		      auto-mode-alist)


;; C-mode

(defun gcc-single-file ()
  (interactive)
  (let ((file (file-name-nondirectory buffer-file-name)))
    (format "g++ -o main -O2 %s" file)))

(add-hook 'c-mode-hook
  (lambda ()
    (local-set-key (kbd "C-c l") 'gcc-single-file))
)

(setq c-default-style "linux"
      c-basic-offset 2)

(setq-default indent-tabs-mode nil)

;; yes-no question, just y-n
(defalias 'yes-or-no-p 'y-or-n-p)

;; dired - open folders in the same buffer every time
(put 'dired-find-alternate-file 'disabled nil)

(normal-erase-is-backspace-mode 1)
(delete-selection-mode 1)

;; Color theme

(load-theme 'solarized-dark t)
