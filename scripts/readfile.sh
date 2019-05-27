#!/bin/bash
file=secret.txt

while IFS= read -r varname; do
    printf '%s\n' "$varname"

echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo ""
echo "$varname"
done < "$file"
