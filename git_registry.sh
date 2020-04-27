#!/bin/bash
git add ${1}
git commit -m "$(stat ${1} | grep ^Modi | awk '{print $2" "$3}' | cut -d '.' -f1)"
git push
