git secret init

LINE='git secret hide'
FILE=.git/hooks/pre-commit
touch "$FILE"
grep -qF -- "$LINE" "$FILE" || echo "$LINE" >> "$FILE"
