#!/bin/sh
# Makes images/<name>.jpg (page 1 preview) from every PDF in reports/.
# Needs poppler: brew install poppler  |  sudo apt install poppler-utils
mkdir -p images
for f in reports/*.pdf; do
  n=$(basename "$f" .pdf)
  pdftoppm -jpeg -r 90 -f 1 -l 1 -singlefile "$f" "images/$n"
done
