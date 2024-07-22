#!/bin/bash
REPO_FILE="repo_list.txt"
while read -r REPO_URL; do
      REPO_NAME = $(basename "$REPO_URL" .git)
      echo "Clonning the repo: $REPO_NAME"
      git clone "$REPO_URL"
      cd "$REPO_NAME" || {
        echo "Fail to clone the repo : $REPO_NAME";
        continue;
      }

      git checkout -b feature-branch
      cd..
done < "$REPO_FILE"      