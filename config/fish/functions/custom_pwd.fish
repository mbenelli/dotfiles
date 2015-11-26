function custom_pwd
  echo $PWD | sed -e "s|^$HOME|~|" -e 's-\(.*/\)\([^/.]*\)$-\2-g'
end
