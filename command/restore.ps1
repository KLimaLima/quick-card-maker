git --no-pager log --oneline --graph --decorate --all

Write-Host "Enter the id (the yellow text and is 6 characters long) that you want to go back to"
$commit_id = Read-Host "commit id"

git revert $commit_id