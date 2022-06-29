#!/bin/zsh

query="$1"

bookmarkDir=~/Library/Application\ Support/BraveSoftware/Brave-Browser/Default/Bookmarks
jq=/usr/local/bin/jq
fzf=/usr/local/bin/fzf

# input
# {
#   "roots": {
#     "bookmark_bar": {
#       "children": [
#         {
#           "children": [
#             {
#               "date_added": "13290681482957177",
#               "guid": "dda7b574-5be3-4483-896c-f6fc4bb8a366",
#               "id": "11",
#               "name": "Discord",
#               "type": "url",
#               "url": "https://discord.com/channels/@me"
#             },
#             {
#               "date_added": "13236441393886071",
#               "guid": "3c1eb896-a235-467c-887d-541cb8d75c31",
#               "id": "12",
#               "name": "WhatsApp",
#               "type": "url",
#               "url": "https://web.whatsapp.com/"
#             },
#             {
#               "date_added": "13290681723227064",
#               "guid": "9c6c7f28-9a74-4333-8ae9-e8eb66ce87af",
#               "id": "14",
#               "name": "Telegram",
#               "type": "url",
#               "url": "https://web.telegram.org/z/"
#             }
#           ],
#           "date_added": "13263539257484222",
#           "date_modified": "13290681723227064",
#           "guid": "f7ffe577-add1-4175-b027-79933fbfb1ad",
#           "id": "5",
#           "name": "comms",
#           "type": "folder"
#         }
#       ]
#     }
#   }
# }
#
# output
# {
#   "items": [
#     {
#       "title": "Discord",
#       "subtitle": "https://discord.com/channels/@me",
#       "arg": "https://discord.com/channels/@me",
#       "quicklookurl": "https://discord.com/channels/@me"
#     },
#     {
#       "title": "WhatsApp",
#       "subtitle": "https://web.whatsapp.com/",
#       "arg": "https://web.whatsapp.com/",
#       "quicklookurl": "https://web.whatsapp.com/"
#     },
#     {
#       "title": "Telegram",
#       "subtitle": "https://web.telegram.org/z/",
#       "arg": "https://web.telegram.org/z/",
#       "quicklookurl": "https://web.telegram.org/z/"
#     }
#   ]
# }
#

cat $bookmarkDir | $jq -r '.. | .children? //empty | .[] | select(.type == "url") | .name + "-|-" + .url' | $fzf --filter $query | $jq -cRs 'split("\n") | map(select(length>0)) | map(split("-|-") | {title: .[0], subtitle: .[1], arg: .[1], quicklookurl: .[1]}) | {items: .}'