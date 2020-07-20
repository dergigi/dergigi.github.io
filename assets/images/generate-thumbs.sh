#!/bin/sh
magick mogrify -resize "800x800>" -format webp -quality 69 *.jpg
