#this script will read the repo url from the txt file and clone it
import git
import os
from urllib.parse import urlparse

file = "repo_list.txt"
#function to extract the name of repo
def get_repo_name(url):
    parsed_url = urlparse(url)
    path = parsed_url.path
    repo_name_with_extension = os.path.basename(path)
    repo_name = os.path.splitext(repo_name_with_extension)[0]
    return repo_name

with open(file) as file:
    links = [link.strip() for link in file]

for link in links:
    dir_name = get_repo_name(link)
    git.Repo.clone_from(link,dir_name)