#!/bin/sh
set -eu

# Create missing WebP thumbs for cover images. Skips files that already
# have a .webp sibling so hand-tuned assets (e.g. with alpha) stay intact.
for src in *.jpg *.jpeg *.png; do
  [ -e "$src" ] || continue
  out="${src%.*}.webp"
  if [ -e "$out" ]; then
    continue
  fi
  magick "$src" -resize "800x800>" -quality 69 "$out"
  echo "created $out"
done
