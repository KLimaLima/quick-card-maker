.\command\save.ps1

$finished_branch = git branch --show-current

git switch main

git branch -d $finished_branch