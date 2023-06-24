;;; conf.d/csv.el -*- lexical-binding: t; -*-

(add-hook 'csv-mode-hook (lambda () (visual-line-mode -1)))
(setq csv-align-padding 5)
