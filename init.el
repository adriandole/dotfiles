(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq package-selected-packages
      '(
	company-mode
	evil
	evil-collection
	key-chord
	lsp-mode
	lsp-treemacs
	lsp-ui
	magit
	projectile
	solarized-theme
	))
(package-install-selected-packages)

;; Look and feel
(load-theme 'solarized-dark t)

;; evil-collection keybindings expect this state
(setq evil-want-integration t)
(setq evil-want-keybinding nil)

(require 'evil)
(evil-mode 1)

(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "df" 'evil-normal-state)

(defun bb-semicolon ()
  (interactive)
  (save-excursion
    (end-of-line)
    (insert ";"))
  )
(with-eval-after-load 'evil-maps
  (define-key evil-normal-state-map (kbd ";") 'bb-semicolon))

(evil-collection-init)

;; LSP
(require 'lsp-mode)

;; Projectile
(projectile-mode +1)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
