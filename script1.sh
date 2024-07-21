read -p "Enter the git repo url to clone:" repo_url
read -p "Enter the dir to clone the git repo into:" dir

mkdir "$dir"

git clone "$repo_url" "$dir"

if[ $? -eq 0 ];then
  echo "Repo clone successfully into $dir"
else
  echo "failed to clone the repo"
fi    