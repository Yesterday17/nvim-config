# Terminal notes

## Multiple terminals

```bash
# Open new terminal with id=2
:ToggleTerminal 2
```

## tmux

```bash
# attach
tmux attach

# Split vertically(without \\)
<C-b>\"

# Even vertically
<C-b>:select-layout even-vertical

# display panel border at top
<C-b>:set-option pane-border-status top

# display last segment of cwd on panel border
<C-b>:set panel-border-format "#P #(echo #{panel_current_path} | rev | cut -f1 -d '/' | rev)"
```
