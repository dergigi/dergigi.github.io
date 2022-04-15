#!/bin/bash

echo "Removing collections..."
rm -v ../../collections/_translations/*.md

echo "Scraping data from spreadsheet..."
python update_translations.py
