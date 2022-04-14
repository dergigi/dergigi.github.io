#! /usr/bin/python3
import gspread
import json
import os
import re

from oauth2client.service_account import ServiceAccountCredentials
from util import author_to_file_path, get_excerpt_from_page, get_valid_author_slug, title_to_file_path

scope = ['https://spreadsheets.google.com/feeds',
         'https://www.googleapis.com/auth/drive']
creds = ServiceAccountCredentials.from_json_keyfile_name('client_secret.json', scope)
client = gspread.authorize(creds)

articles = client.open("Dergigi Resources").worksheet("Translations")

for idx, row in enumerate(articles.get_all_values()):
    if row[0] == 'Code':
        continue

    translation_code = row[0].lstrip().rstrip()
    translation_language = row[1].lstrip().rstrip()
    translation_author = row[2].lstrip().rstrip()
    translation_profile = row[3].lstrip().rstrip()
    translation_link = row[4].lstrip().rstrip()
    translation_archive = row[5].lstrip().rstrip()

    md_file_name = translation_archive.replace("https://archive.ph/", "")
    md_file_path = title_to_file_path(md_file_name, 'translations')
    if md_file_path == "":
        continue

    md_file = (
                f"---\n"
                f"layout: page\n"
                f"code: {translation_code}\n"
                f"language: {translation_language}\n"
                f"author: {translation_author}\n"
                f"type: {translation_profile}\n"
                f"link: {translation_link}\n"
                f"archive: {translation_archive}\n"
                f"---\n")

    with open(md_file_path, 'w') as f:
        f.write(md_file)
