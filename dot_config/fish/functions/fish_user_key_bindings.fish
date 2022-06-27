function fish_user_key_bindings
  fish_vi_key_bindings
  if [ $TERM_PROGRAM != "vscode" ]
    bind -M insert -m default df backward-char force-repaint
  end
end
