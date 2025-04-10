#!/bin/sh

tmux new\; split -v\; send 'man tmux' C-m\; select-pane -U\; send '# Use Ctrl+B ArrowUp - ArrowDown to choise tmux pane' C-m
