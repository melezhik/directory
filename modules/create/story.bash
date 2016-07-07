path=$(config path)
owner=$(config owner)
mode=$(config mode)
recursive=$(config recursive)


if test $recursive -eq 1; then
  mkdir -p $path || exit 1 
else
  mkdir $path || exit 1
fi

if test "${owner}"; then
  chown $owner $path || exit 1
fi

if test "${mode}"; then
  chmod $mode $path || exit 1
fi

stat -c owner:%U: $path


echo directory-create-ok



