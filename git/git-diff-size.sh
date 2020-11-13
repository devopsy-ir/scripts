git diff --name-only  | xargs du -hs | awk '{ for (i=NF; i>1; i--) printf("%s ",$i); print $1; }'
