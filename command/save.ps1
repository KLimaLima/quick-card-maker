param ([Parameter(Mandatory)]$message)

Write-Host "=========================================================="
Start-Sleep -Seconds 1.5

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

Write-Host "Saving to $current_branch"

Write-Host "
   _____________________________
  |                             |
  | Saving to $current_branch   |
  |_____________________________|
        /
(/O.O)/  ~~~~(your code)
"

Write-Host "=========================================================="
Start-Sleep -Seconds 1.5

Write-Host "Adding files"
git add .

Write-Host "
   _____________________________
  |                             |
  | *Throws your code calmly*   |
  |_____________________________|
        /
(/O.O)/  ~~~~(your code)
"

Write-Host "=========================================================="
Start-Sleep -Seconds 1.5

Write-Host "Committing change"
git commit -m "$message"

Write-Host "
   _____________________________________
  |                                     |
  | Committing genoc- I mean your code. |
  |_____________________________________|
        /
(~^-^)~
"

Write-Host "=========================================================="
Start-Sleep -Seconds 1.5

Write-Host "Uploading to GitHub"
git push

Write-Host "
   ________________________________
  |                                |
  | This code is good I promise.   |
  |________________________________|
            /
{\__/}
(o_o)
( >(Not good code)
"

Write-Host "=========================================================="
Start-Sleep -Seconds 1.5