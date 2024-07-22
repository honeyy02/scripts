#python script for clone the repos and create a feature branch
import git 
repo_path = "/workspaces/scripts"
repo = git.Repo(repo_path) 
#list all the branches in repo
for branch in repo.branches:
    print(branch)

#create a new branch
repo.git.branch("feature_branch_python")
repo.git.checkout("feature_branch_python")

