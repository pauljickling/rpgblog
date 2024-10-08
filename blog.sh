#!/bin/bash
set -eu

TITLE="$1"

DATE="$(date +%Y-%m-%d)"

if [[ $# -eq 0 ]] ; then
    echo "Missing title argument"
    exit 1
fi

MARKDOWN_HEADER="---
layout: post
date: $DATE
title: \"$TITLE\"
---"

FILE_PATH="_posts/$DATE-$TITLE.md"

echo "$MARKDOWN_HEADER" > "$FILE_PATH"

echo "Markdown header generated at $FILE_PATH"
