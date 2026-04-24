### ***GIT*** 

### ***Question 1:-***

echo Hello > app.txt

git status

git add app.txt

git commit -m "First commit"



echo Update >> app.txt

git diff

git add app.txt

git commit -m "Updated"



git branch dev

git checkout dev

echo Dev change >> app.txt

git add app.txt

git commit -m "Dev commit"



git checkout main

git diff main dev





🔹 Step 1: Create a file (app.txt)

In Visual Studio Code

Right click → New File → app.txt

Add:

Hello DevOps

OR Terminal:

echo Hello DevOps > app.txt

🔹 Step 2: Check repository status

git status

✔ Output → app.txt is untracked



🔹 Step 3: Stage file

git add app.txt

🔹 Step 4: Commit changes

git commit -m "Added app.txt"

🔹 Step 5: Modify file



Open app.txt and add:



This is updated content

🔹 Step 6: View differences

git diff



✔ Shows changes (old vs new)



🔹 Step 7: Commit updated changes

git add app.txt

git commit -m "Updated app.txt"

✅ PART 2: Branching Operations

🔹 Step 8: Create dev branch

git branch dev

🔹 Step 9: Switch to dev branch

git checkout dev



✔ OR (new command):



git switch dev

🔹 Step 10: Make changes in dev branch



Edit app.txt:



Changes from dev branch



Then:



git add app.txt

git commit -m "Changes in dev branch"

🔹 Step 11: Switch back to main

git checkout main



✔ OR:



git switch main

🔹 Step 12: Compare branches

git diff main dev



✔ Shows difference between branches



✅ FINAL OUTPUT (What examiner expects)



✔ File lifecycle (untracked → staged → committed)

✔ Changes tracked using git diff

✔ Branch created (dev)

✔ Changes made in branch

✔ Switched between branches

✔ Compared branches



⚡ Super Short Exam Version

echo Hello > app.txt

git status

git add app.txt

git commit -m "First commit"



echo Update >> app.txt

git diff

git add app.txt

git commit -m "Updated"



git branch dev

git checkout dev

echo Dev change >> app.txt

git add app.txt

git commit -m "Dev commit"



git checkout main

git diff main dev













### ***Question 2:-***  Branching and Isolation

• Create a dev branch using git branch

• Switch branches using git checkout

• Make changes in dev branch

• Switch back to main branch

• Compare branchesOutcome: Student understands branch isolation and parallel development.





🔹 Step 1: Create dev branch

git branch dev



✔ This only creates the branch (does NOT switch)



🔹 Step 2: Switch to dev

git checkout dev



✔ OR:



git switch dev



👉 Verify:



git branch



✔ dev will have \* (active)



🔹 Step 3: Make changes in dev branch



Open app.txt in Visual Studio Code and add:



This change is from DEV branch

🔹 Step 4: Commit changes in dev

git add app.txt

git commit -m "Change in dev branch"

🔹 Step 5: Switch back to main

git checkout main



✔ OR:



git switch main

🔹 Step 6: PROOF of Isolation (VERY IMPORTANT)



👉 Open app.txt now



❗ You will NOT see dev changes

✔ This proves branch isolation



🔹 Step 7: Compare branches

git diff main dev



✔ Shows difference between main and dev



🎯 What to SAY in exam (very important)



👉 If examiner asks:



“What is branch isolation?”



Answer:



Branch isolation means changes made in one branch (like dev) do not affect another branch (like main) until they are merged.



⚡ Quick Demo Flow (write in exam)

git branch dev

git checkout dev

echo Dev change >> app.txt

git add app.txt

git commit -m "Dev change"



git checkout main

git diff main dev





• Switch branches using git checkout

• Make changes in dev branch

• Switch back to main branch

• Compare branchesOutcome: Student understands branch isolation and parallel development.



You’re now at the core demonstration part — this is where you prove branch isolation. Do it cleanly like this in your exam.



✅ 1. Switch to dev branch

git checkout dev



✔ OR:



git switch dev



👉 Verify:



git branch



✔ \* dev should be active



✅ 2. Make changes in dev branch



Open app.txt in Visual Studio Code and add a new line:



This change is from DEV branch

✅ 3. Commit changes in dev

git add app.txt

git commit -m "Change in dev branch"

✅ 4. Switch back to main

git checkout main



✔ OR:



git switch main

✅ 5. Prove branch isolation (VERY IMPORTANT)



👉 Open app.txt again



❗ You will NOT see the dev changes



✔ This proves:



Changes in dev are isolated and do not affect main



✅ 6. Compare branches

git diff main dev



✔ This shows:



What is added in dev

Difference between both branches

🎯 What to SAY in exam (important line)



Branch isolation means changes in one branch do not affect another branch until they are merged.



⚡ Quick Exam Flow

git checkout dev

echo Dev change >> app.txt

git add app.txt

git commit -m "Dev change"



git checkout main

git diff main dev









### ***Question 3:-Merging and Conflict Handling***

### ***• Merge dev branch into main using git merge***

### ***• Perform fast-forward merge***

### ***• Create conflicting changes in two branches***

### ***• Resolve merge conflicts manually***

### ***• Commit resolved changes***

🔹 Step 1: Check branches

git branch



👉 You should have:



master (or main)

dev

🔹 Step 2: Switch to master

git checkout master

🔹 Step 3: Merge dev into master

git merge dev



✔ Output:



Fast-forward



🎯 Meaning:



No changes in master → it just moves forward



✅ PART 2: Create Merge Conflict

🔹 Step 4: Go to dev branch

git checkout dev



Edit app.txt:



This line is from DEV

git add app.txt

git commit -m "Change from dev"

🔹 Step 5: Switch to master

git checkout master



Edit SAME line in app.txt:



This line is from MASTER

git add app.txt

git commit -m "Change from master"

✅ PART 3: Trigger Conflict

git merge dev



❌ Output:



CONFLICT (content): Merge conflict in app.txt

✅ PART 4: Resolve Conflict



Open file in Visual Studio Code



You will see:



<<<<<<< HEAD

This line is from MASTER

=======

This line is from DEV

>>>>>>> dev

🔹 Step 6: Fix manually



Edit to:



This line is from MASTER

This line is from DEV



👉 Remove all:



<<<<<<<

=======

>>>>>>>

✅ PART 5: Commit resolved file

git add app.txt

git commit -m "Resolved merge conflict"

🎯 FINAL OUTPUT



✔ Fast-forward merge demonstrated

✔ Conflict created intentionally

✔ Conflict markers understood

✔ Manual resolution done

✔ Final commit completed



💡 Viva answers (important)

❓ What is fast-forward merge?



A merge where Git simply moves the pointer forward without creating a new commit.



❓ What is merge conflict?



Occurs when two branches modify the same part of a file differently.



❓ How to resolve?



Edit file manually, remove conflict markers, then commit.





### ***Question 4:-Working with Remote Repositories***

✅ 1. Configure Remote (git remote add)



👉 First create a repo on GitHub, then in your project folder:



git remote add origin https://github.com/username/repo-name.git



✔ Verify:



git remote -v

✅ 2. Push Local Code (git push)

git add .

git commit -m "Initial commit"

git push -u origin master



✔ Uploads your code to GitHub



✅ 3. Clone Repository (git clone)



👉 Simulate another user or new folder:



git clone https://github.com/username/repo-name.git

cd repo-name



✔ Creates a local copy of remote repo



✅ 4. Fetch Updates (git fetch)

git fetch



✔ Downloads changes from remote

❗ Does NOT merge them



✅ 5. Pull Changes (git pull)

git pull



✔ Fetch + Merge

✔ Updates your working files



✅ 6. Push Changes (git push)



👉 After editing files:



git add .

git commit -m "Updated file"

git push origin master



✔ Sends changes to remote



🔄 Full Demo Flow (best for exam)

git clone <repo-url>

cd repo-name

echo Hello >> file.txt

git add .

git commit -m "Update"

git push origin master

🔍 Important Difference

Command	Meaning

git fetch	Download only

git pull	Download + merge

git push	Upload changes

🎯 What examiner checks



✔ Remote repository configured

✔ Code pushed to GitHub

✔ Repository cloned

✔ Fetch works

✔ Pull updates local repo

✔ Push updates remote repo



💡 Viva answers (VERY IMPORTANT)

❓ What is a remote repository?



A repository hosted on a server like GitHub used for collaboration.



❓ Difference between fetch and pull?



Fetch downloads changes, while pull downloads and merges them.



❓ What does push do?



It uploads local commits to the remote repository.



🚨 Common mistakes



❌ Wrong repository URL

❌ Not committing before push

❌ Authentication issues

❌ Confusing fetch vs pull



⚡ Quick Revision Commands

git remote add origin <url>

git clone <url>

git fetch

git pull

git push origin master





### ***Question 5:-GitHub Collaboration Workflow***

✅ STEP 1: Create Repository on GitHub

Go to GitHub

Click New Repository

Name: demo-repo

Click Create

✅ STEP 2: Push Local Code to Remote



In your project folder:



git init

git add .

git commit -m "Initial commit"

git remote add origin https://github.com/username/demo-repo.git

git branch -M master

git push -u origin master



✔ Your code is now on GitHub



✅ STEP 3: Clone Repository (simulate another user)

git clone https://github.com/username/demo-repo.git

cd demo-repo



✔ Creates a new working copy



✅ STEP 4: Create Feature Branch

git checkout -b feature-branch



Make changes:



echo Feature work >> file.txt

git add .

git commit -m "Added feature"

✅ STEP 5: Push Feature Branch

git push origin feature-branch



✔ Branch uploaded to GitHub



✅ STEP 6: Create Pull Request



On GitHub:



Go to repository

Click Compare \& Pull Request

Add title/description

Click Create Pull Request

✅ STEP 7: Review \& Merge

Review changes

Click Merge Pull Request

Confirm merge



✔ Feature branch merged into master



🎯 FINAL OUTPUT



✔ Repository created

✔ Code pushed

✔ Repository cloned

✔ Feature branch created

✔ Pull request created

✔ Changes reviewed and merged



💡 Viva answers (VERY IMPORTANT)

❓ What is a pull request?



A request to merge changes from one branch into another after review.



❓ Why use feature branches?



To develop features independently without affecting the main code.



❓ Why clone repository?



To create a local copy of the remote repository.



🚨 Common mistakes



❌ Forgetting to push branch before PR

❌ Creating PR without commits

❌ Wrong base branch

❌ Not committing changes



⚡ Quick Flow (exam revision)

git clone <url>

git checkout -b feature

git add .

git commit -m "feature"

git push origin feature





### ***Question 6:- Undoing Changes \& Recovery***

🧩 PART 1: Undoing Changes \& Recovery

🔹 Create a sample file

echo Hello > file.txt

git add .

git commit -m "Initial commit"

🔹 Undo unstaged changes

echo Change >> file.txt

git checkout -- file.txt



✔ Restores last committed version



🔹 Unstage file

git add file.txt

git reset file.txt

🔹 Amend commit

git commit --amend -m "Updated commit"

🔹 Reset types

Soft

git reset --soft HEAD\~1

Mixed

git reset HEAD\~1

Hard ⚠️

git reset --hard HEAD\~1

🔹 Safe undo (revert)

git revert HEAD

🔹 Recover using reflog

git reflog

git reset --hard <commit-id>

🧩 PART 2: Merge + Conflict Handling

🔹 Create dev branch

git branch dev

git checkout dev

🔹 Make change in dev

echo Dev change >> file.txt

git commit -am "Dev change"

🔹 Switch to master \& merge (fast-forward)

git checkout master

git merge dev

🔹 Create conflict

In dev:

git checkout dev

echo Line from DEV > file.txt

git commit -am "Dev edit"

In master:

git checkout master

echo Line from MASTER > file.txt

git commit -am "Master edit"

🔹 Merge → conflict

git merge dev

🔹 Resolve manually



Open file → remove:



<<<<<<<

=======

>>>>>>>



Keep:



Line from MASTER

Line from DEV

🔹 Commit resolved

git add file.txt

git commit -m "Resolved conflict"

🧩 PART 3: Feature Branch Workflow

🔹 Create feature branch

git checkout -b feature

🔹 Incremental commits

echo Feature1 >> file.txt

git commit -am "Feature step 1"



echo Feature2 >> file.txt

git commit -am "Feature step 2"

🔹 Push to remote (use GitHub)

git push origin feature

🔹 Update branch with develop/master

git checkout feature

git pull origin master

🔹 Merge back

git checkout master

git merge feature

🧩 PART 4: Remote Repository Operations

🔹 Add remote

git remote add origin <repo-url>

🔹 Clone

git clone <repo-url>

🔹 Fetch

git fetch

🔹 Pull

git pull

🔹 Push

git push origin master

🧩 PART 5: Rollback \& Recovery

🔹 Identify commit

git log

🔹 Reset to previous commit

git reset --hard <commit-id>

🔹 Discard changes

git checkout -- file.txt

🔹 Revert (safe for shared branch)

git revert <commit-id>

🔹 Verify

git log

git status

🎯 FINAL OUTPUT (what examiner checks)



✔ Undo operations shown

✔ Reset (soft/mixed/hard) explained

✔ Revert used correctly

✔ Merge + conflict handled

✔ Feature branch workflow done

✔ Remote operations performed

✔ Rollback + recovery demonstrated



💡 MOST IMPORTANT VIVA POINTS



Reset vs Revert



Reset rewrites history, revert creates a new commit



Fast-forward merge



No divergence, pointer moves forward



Conflict



Happens when same line is modified



Reflog



Used to recover lost commits





### 

### ***Question 7:-Git Hooks for Automation***

🧩 PART 1: Git Hooks for Automation

🎯 Concept (say this)



Git hooks are scripts that run automatically on events like commit, push, or merge.



🔹 Where hooks are stored



Inside your repo:



.git/hooks/

✅ 1. Create a pre-commit hook (lint check)

Step:



Go to:



.git/hooks



Create file:



pre-commit



👉 Add this:



\#!/bin/sh

echo "Running lint check..."

🔹 Make it executable (important)

chmod +x .git/hooks/pre-commit



✔ Now it runs before every commit



✅ 2. Create pre-push hook (test check)



Create file:



pre-push



Add:



\#!/bin/sh

echo "Running tests before push..."

✅ 3. Post-merge hook



Create file:



post-merge



Add:



\#!/bin/sh

echo "Post merge script executed"

🎯 What this shows



✔ Automation before commit

✔ Automation before push

✔ Script execution after merge



🧩 PART 2: Git File Lifecycle

🔹 Step 1: Initialize repo

git init

🔹 Step 2: Create file

echo Hello > app.txt

🔹 Step 3: Check status

git status

🔹 Step 4: Stage file

git add app.txt

🔹 Step 5: Commit

git commit -m "First commit"

🔹 Step 6: Modify file

echo Update >> app.txt

🔹 Step 7: View difference

git diff

🔹 Step 8: Commit again

git add app.txt

git commit -m "Updated file"

🎯 FINAL OUTPUT



✔ Hooks created and executed

✔ File lifecycle demonstrated

✔ Automation working before commit/push



💡 Viva answers (VERY IMPORTANT)

❓ What are Git hooks?



Scripts that run automatically at certain Git events.



❓ What is pre-commit hook?



Runs before commit to validate code.



❓ What is pre-push hook?



Runs before pushing code to remote.



❓ Where are hooks stored?



Inside .git/hooks directory.





### ***Question 8:-Initialize and Track Files***

✅ STEP 1: Initialize Git repository

git init



✔ Creates .git folder



✅ STEP 2: Create a file

echo Hello > app.txt

✅ STEP 3: Check status

git status



✔ Output:



app.txt → untracked

✅ STEP 4: Stage the file

git add app.txt

✅ STEP 5: Commit changes

git commit -m "First commit"

✅ STEP 6: Modify file

echo Update >> app.txt

✅ STEP 7: View difference

git diff



✔ Shows changes (old vs new)



✅ STEP 8: Commit updated file

git add app.txt

git commit -m "Updated app.txt"

🎯 FINAL OUTPUT



✔ Repository initialized

✔ File created

✔ File staged

✔ File committed

✔ File modified

✔ Changes viewed using git diff

✔ Changes committed again



💡 Viva answer (important)



Git tracks files in stages: untracked, staged, and committed. The git diff command shows changes before committing.



⚡ Quick revision (write in exam)

git init

echo Hello > app.txt

git status

git add app.txt

git commit -m "First commit"

echo Update >> app.txt

git diff

git add app.txt

git commit -m "Update"





### ***Question 9:-Branching and Isolation***

🎯 PART 1: Branching and Isolation

🔹 1) Create dev branch

git branch dev

🔹 2) Switch to dev

git checkout dev

\# or

git switch dev



✔ Verify:



git branch



👉 \* dev should be active



🔹 3) Make changes in dev

echo Dev change >> app.txt

git add app.txt

git commit -m "Change in dev branch"

🔹 4) Switch back to main (or master)

git checkout master

\# or: git switch master

🔹 5) Prove isolation



👉 Open app.txt



✔ You will NOT see dev changes

🎯 This shows:



Changes in dev do not affect master until merged



🔹 6) Compare branches

git diff master dev



✔ Shows differences between branches



🎯 PART 2: Branch Deletion \& Cleanup

🔹 7) Delete local branch

git branch -d dev



✔ Works only if merged



🔹 8) Force delete (if not merged)

git branch -D dev

🔹 9) Delete remote branch (on GitHub)

git push origin --delete dev

🔹 10) Remove merged branches (cleanup)

git branch --merged

git branch -d dev

🔹 11) Clean unused remote branches

git fetch --prune

🔹 12) Verify branch list

git branch        # local

git branch -r     # remote

git branch -a     # all

🎯 FINAL OUTPUT (what examiner checks)



✔ Branch created

✔ Switched correctly

✔ Changes made in dev

✔ master remains unchanged

✔ Branch comparison shown

✔ Local branch deleted

✔ Remote branch deleted

✔ Cleanup performed

✔ Branch list verified



💡 Viva answers (VERY IMPORTANT)

❓ What is branch isolation?



Changes in one branch do not affect another until merged.



❓ Difference between -d and -D?



\-d deletes merged branch, -D force deletes unmerged branch.



❓ What is git fetch --prune?



Removes references to deleted remote branches.

