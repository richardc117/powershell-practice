$GitHubUsername = 'richardc117'
$CommitMessage = 'Auto committed from auto-committing-setup.ps1!'
$PracticeRepoDir = 'C:\Users\Azriel\Desktop\LaunchCode\Azure\Studios\Chapter 9 Studio'

git clone "https://github.com/$GitHubUsername/powershell-practice.git" "$PracticeRepoDir"

Copy-Item C:\Users\Azriel\Desktop\auto-committing-setup.ps1 "$PracticeRepoDir"

Set-Location "$PracticeRepoDir"

echo "Initial status:"
git status

echo "Post commit status:" 
git add auto-committing-setup.ps1
git commit -m "$CommitMessage"

git push origin master

echo "Script complete."
