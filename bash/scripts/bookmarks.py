#!/usr/bin/env python

import os
import json
import subprocess


class Bookmark:
    def __init__(self, name: str, url: str):
        self.name = name
        self.url = url

    def __str__(self):
        return f"{self.name} {self.url}"


bookmarks_list: list[Bookmark] = []


CONFIG_PATH = os.getenv("XDG_CONFIG_HOME") or exit(1)
BOOKMARKS = CONFIG_PATH + "/" + "google-chrome" + "/" + "Default" + "/" + "Bookmarks"


def chromium_path(browser: str) -> str:
    return CONFIG_PATH + "/" + browser + "/" + "Default" + "/" + "Bookmarks"


if not os.path.isfile(BOOKMARKS):
    exit(1)

BROWSERS = [
    chromium_path("google-chrome"),
    chromium_path("BraveSoftware/Brave-Browser"),
]

for BOOKMARKS in BROWSERS:
    with open(BOOKMARKS, "r") as f:
        bookmarks_json = f.read()
        bookmarks_dict = json.loads(bookmarks_json)

        def traverse(object: dict) -> None:
            if not "children" in object.keys():
                if "name" in object.keys():
                    bookmarks_list.append(Bookmark(object["name"], object["url"]))
                return
            else:
                for child in object["children"]:
                    traverse(child)

        for root in bookmarks_dict["roots"].items():
            for child in root:
                if type(child) == dict:
                    traverse(child)


def gen():
    for i in range(len(bookmarks_list)):
        yield i


bookmarks_list.append(Bookmark("TESTI", "/home/perttu/.wakatime.cfg"))

i = gen()

b_input = bytes(
    "\n".join(
        map(lambda x: f"{next(i)}: {x.__str__()}", bookmarks_list),
    ),
    "utf-8",
)

b_output = b""

try:
    # b_output = subprocess.check_output(["fzf", "--layout=reverse-list"], input=b_input)
    b_output = subprocess.check_output(["rofi", "-dmenu", "-i"], input=b_input)
except:
    exit(1)


output = b_output.decode()
index = int(output.split(":")[0])
selected_bookmark: Bookmark = bookmarks_list[index]
subprocess.run(["xdg-open", f"{selected_bookmark.url}"])
