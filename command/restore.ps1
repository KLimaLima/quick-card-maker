git --no-pager log --oneline --graph --decorate --all

$commit_id = Read-Host "Enter the id (the yellow text and is 6 characters long)"

git revert $commit_id