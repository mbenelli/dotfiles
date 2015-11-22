function ddg
  if test (count $argv) -gt 0
    set keys $argv[1]
  end
  if test (count $argv) -gt 1
    for k in $argv[2..-1]
      set keys "$keys+$k"
    end
  end
  eval $BROWSER \'"https://duckduckgo.com/?q=$keys"\'
end
