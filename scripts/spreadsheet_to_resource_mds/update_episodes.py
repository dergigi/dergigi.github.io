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

articles = client.open("Dergigi Resources").worksheet("Episodes")

for idx, row in enumerate(articles.get_all_values()):
    if row[0] == 'Date':
        continue

    episode_date = row[0].lstrip().rstrip()
    episode_podname = row[1].lstrip().rstrip()
    episode_topics = row[2].lstrip().rstrip()
    episode_host = row[3].lstrip().rstrip()
    episode_abbrev = row[4].lstrip().rstrip()
    episode_sode = row[5].lstrip().rstrip()
    episode_star = row[6].lstrip().rstrip()
    episode_lang = row[7].lstrip().rstrip()
    episode_code = row[8].lstrip().rstrip()
    episode_link = row[9].lstrip().rstrip()
    episode_podlink = row[10].lstrip().rstrip()
    episode_youtube = row[11].lstrip().rstrip()
    episode_archive = row[12].lstrip().rstrip()

    md_file_name = episode_date + "-" + episode_abbrev
    md_file_path = title_to_file_path(md_file_name, 'episodes')
    if md_file_path == "":
        continue

    md_file = (
                f"---\n"
                f"layout: page\n"
                f"date: {episode_date}\n"
                f"podname: {episode_podname}\n"
                f"topics: {episode_topics}\n"
                f"host: {episode_host}\n"
                f"abbrev: {episode_abbrev}\n"
                f"sode: {episode_sode}\n"
                f"star: {episode_star}\n"
                f"lang: {episode_lang}\n"
                f"code: {episode_code}\n"
                f"link: {episode_link}\n"
                f"podlink: {episode_podlink}\n"
                f"youtube: {episode_youtube}\n"
                f"archive: {episode_archive}\n"
                f"---\n")

    with open(md_file_path, 'w') as f:
        f.write(md_file)
