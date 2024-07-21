read -p "Enter the git repo url to clone:" repo_url
read -p "Enter the dir to clone the git repo into:" dir

mkdir "$dir"

git clone "$repo_url" "$dir"
  