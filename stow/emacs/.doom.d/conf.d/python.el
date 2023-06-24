;;; conf.d/python.el -*- lexical-binding: t; -*-

;; Note: Behavior of python linting (pyls) is changed in .config/flake8

(setq-hook! 'python-mode-hook +format-with 'black)
