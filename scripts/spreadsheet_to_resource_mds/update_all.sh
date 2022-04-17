#!/bin/bash

echo "Removing collections..."
rm -v ../../collections/_translations/*.md
rm -v ../../collections/_episodes/*.md

echo "Scraping data from spreadsheet..."
python update_translations.py
python update_episodes.py
