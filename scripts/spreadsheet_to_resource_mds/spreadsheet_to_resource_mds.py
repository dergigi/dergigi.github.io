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

sheet = client.open("Bitcoin Resources").sheet1

NO_DATE = "1111-11-11"

for row in sheet.get_all_values():
    if row[0] == 'Categories':
        continue

    resource_categories = row[0].split(',')
    resource_type = row[1].lower()
    resource_essential = row[2].lower()
    resource_title = row[3].title().replace(":", "&#58")
    resource_subtitle = row[4].replace(":", "&#58")
    resource_authors = row[5].lstrip().rstrip().split(',')
    resource_authors_twitter = row[6].lstrip().rstrip().split(',')
    resource_url = row[7]
    resource_amazon_url = row[8]
    resource_wikipedia_url = row[9]
    resource_free_url = row[10]
    # resource_date = row[5] if row[5] != '' else NO_DATE
    resource_excerpt = get_excerpt_from_page(resource_url)

    # for author in resource_authors:
    #     author_slug = get_valid_author_slug(author)
    #     author_file_path = author_to_file_path(author_slug)
    #     if os.path.exists(author_file_path) or author_file_path == "":
    #         continue
    #
    #     author_file = (
    #         f"---\n"
    #         f"name: {author.strip()}\n"
    #         f"slug: {author_slug}\n"
    #         f"permalink: /author/{author_slug}\n"
    #         f"---")
    #
    #     with open(author_file_path, 'w') as f:
    #         f.write(author_file)

    md_file_path = title_to_file_path(resource_title, resource_type)
    if os.path.exists(md_file_path) or md_file_path == "":
        continue

    md_file = (
                f"---\n"
                f"layout: {resource_type}\n"
                f"title: {resource_title}\n"
                f"subtitle: {resource_subtitle}\n"
                f"essential: {resource_essential}\n"
                # f"date: {resource_date}\n"
                f"categories: {resource_categories}\n"
                f"authors: {resource_authors}\n"
                f"authors_twitter: {resource_authors_twitter}\n"
                f"excerpt: {resource_excerpt}\n"
                f"resource_url: {resource_url}\n"
                f"amazon_url: {resource_amazon_url}\n"
                f"wikipedia_url: {resource_wikipedia_url}\n"
                f"free_url: {resource_free_url}\n"
                f"---")

    with open(md_file_path, 'w') as f:
        f.write(md_file)
