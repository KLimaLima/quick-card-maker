Write-Host "Checking branch..."
$current_branch = git branch --show-current

if ("main" -eq $current_branch)
{
   Write-Host "
   You are currently in $current_branch and should not directly work here.
   Create a seperate branch to avoid doing irreversable damage to $current_branch
   "

   exit
}

git --no-pager log --oneline --graph --decorate --all

Write-Host "Enter the id (the yellow text and is 6 characters long) that you want to go back to"
$commit_id = Read-Host "commit id"

git revert $commit_id