path=$(config path)
owner=$(config owner)
group=$(config group)
mode=$(config mode)
recursive=$(config recursive)


if test $recursive -eq 1; then
  mkdir -p $path || exit 1 
else
  mkdir $path || exit 1
fi

if test "${owner}"; then
  chown $owner -R $path || exit 1
fi

if test "${group}"; then
  chgrp $owner -R $path || exit 1
fi

if test "${mode}"; then
  chmod $mode $path || exit 1
fi

echo -n 'directory path: '
stat -c %n -- $path

echo -n 'directory owner: '
stat -c '<'%U'>' -- $path

echo -n 'directory group: '
stat -c '<'%G'>' -- $path

echo -n 'directory access rights: '
stat -c %A -- $path

echo done



