# Creating a personal repository with the correct .gitignore and simple README.MD 

# Repository

A repository is where you store your code and make changes to it. Your changes are tracked with version control.
Each project contains a repository.
## Create a repository

To create a repository, you can:
Create a project or
Fork an existing project.
[Creeation](https://sbercloud.ru/ru/warp/gitlab-about)
![Creeation](https://cdn.sbercloud.ru/backend/images/pages/warp/gitlab-about/repo-gitlab.jpeg)

## Add files to a repository

You can add files to a repository:
When you create a project.
After you create a project:
By using the web editor.
From the command line.
## Commit changes to a repository

You can commit your changes, to a branch in the repository. When you use the command line, you can commit multiple times before you push.

## Clone a repository

You can clone a repository by using the command line.
Alternatively, you can clone directly into a code editor.
## Clone and open in Apple Xcode

Projects that contain a .xcodeproj or .xcworkspace directory can be cloned into Xcode on macOS.
From the GitLab UI, go to the project’s overview page.
Select Clone.
Select Xcode.

## Correct .gitignore

1. Navigate to the folder that contains the files for your project.
2. If you have not yet created a .git file, run the git commit command.
3. Create a .gitignore file by running touch .gitignore. The file name ".gitignore" is case sensitive and the name of the file matters. Git will look for a file with that name and will not stage (add) or commit files that is is told to ignore.
4. Use vim to open the file by running vim .gitignore. This will open a text editor called "Vim" inside your console.
5. Press the escape key to enter and exit text-entry mode.
6. Once you have updated your .gitignore files you can save and exit vim by pressing escape, entering :wq, and pressing return/enter

# Creating develop and master branches
 ![Creeation dev and master br](https://i.stack.imgur.com/F00b8.png)
 
_Creating a git develop branch_

You can list all of your current branches like this:

>git branch -a

This shows all of the local and remote branches. Assuming you only have a single master branch, you'd see the following:

* master
  remotes/origin/master
The * means the current branch.

To create a new branch named develop, use the following command:

>git checkout -b develop

The -b flag creates the branch. Listing the branches now should show:

* develop
  master
  remotes/origin/master
Changing branches

You shouldn't commit anything directly to the master branch. Instead do all your work on the develop branch and then merge develop into master whenever you have a new public release.

You are already in your develop branch, but if you weren't, the way to switch is as follows:

>git checkout develop

That's the same way you create a branch but without the -b.

# Setting the develop branch as the default

![set dev as default](https://docs.microsoft.com/en-us/azure/devops/repos/git/media/pull-requests/set-default-branch-in-product.png)

1. Under your project repo, select Branches.
2. On the Branches page, select More options next to the new default branch you want, and choose Set as default branch.
3. After you set the new default branch, you can delete the previous default if you want.

# Creating an issue for creating the current manual, 
When you create an issue, you are prompted to enter the fields of the issue. If you know the values you want to assign to an issue, you can use quick actions to enter them.
You can create an issue in many ways in GitLab:
1. From a project
2. From a group
3. From another issue or incident
4. From an issue board
5. By sending an email
6. Using a URL with prefilled values
7. Using Service Desk

__From a project__

_Prerequisites:_
You must have at least the Guest role for the project.
To create an issue:
1. On the top bar, select Menu > Projects and find your project.
Either:
2. On the left sidebar, select Issues, and then, in the top right corner, select New issue.
3. On the top bar, select the plus sign () and then, under This project, select New issue.
4. Complete the fields.
5. Select Create issue.
5. Creating a branch for the issue,
![issue](https://docs.gitlab.com/ee/user/project/img/issue_boards_premium_v14_1.png)
# Creating a merge request on the develop branch

 ![merge](https://i.stack.imgur.com/tGARj.png)

__Creating merge requests__

_There are many different ways to create a merge request._

__From the merge request list__

You can create a merge request from the list of merge requests.
1. On the top bar, select Menu > Projects and find your project.
2. On the left menu, select Merge requests.
3. In the top right, select New merge request.
4. Select a source and target branch and then Compare branches and continue.
5. Fill out the fields and select Create merge request.
# Commenting and accepting the request 
__Commenting on a pull request__

The most important aspect of a pull request is the discussion it generates. You can comment on the entire pull request, a particular file, or on specific lines of code in a file to generate discussion relevant to your code review. You can also create a task or convert any comment to a task, so actions identified during the review can be easily tracked and resolved. Another efficient way to collaborate is to start a review, allowing you to leave multiple comments or tasks without sending them off to the author until you are ready to publish them. 
For more on what you can do in a pull request and an overview to the code review workflow itself, see Reviewing a pull request.

__Comments__

Places in Bitbucket Data Center and Server where you can make comments:
1. Overview tab - you can add a comment on the Overview tab (just under 'Activity'), or reply to a previous comment. Use mentions to alert another Bitbucket user to your comment, and use Markdown to add formatting, for example, headings or lists. 
2. Diff view tab - display and create comments for a file directly on lines of code for commits and pull requests.

__Accepting__

1. Under your repository name, click Pull requests.
2. In the list of pull requests, click the pull request you'd like to review.
3. On the pull request, click Files changed.
4. Review the changes in the pull request, and optionally, comment on specific lines.

# Creating a stable version in the master with a tag 
__Create Git Tag__

In order to create a new tag, you have to use the “git tag” command and specify the tag name that you want to create.

>git tag <tag_name>

As an example, let’s say that you want to create a new tag on the latest commit of your master branch.

To achieve that, execute the “git tag” command and specify the tagname.

> git tag v2.0

Usually, you want to name your tag following the successive versions of your software.

Using this command, the latest commit (also called HEAD) of your current branch will be tagged.

__Create Tag with Message__

Creating tags is great but you will need to add a description to your tag in order for other contributors to understand why you created it.

You would not create a commit without a commit message, you would not create a Git tag without a message.
 
To create a Git tag with a message, use the “git tag” command with the “-a” option for “annotated” and the “-m” option for message.

> git tag -a <tag_name> -m "message"

Note : if you don’t provide the “-m” option, your default text editor will open in order for you to type the tag message.

As an example, let’s say that you want to create a new annotated tag on your master branch with the message “New release for v3.0”

To achieve that, you would run the following command

> git tag -a v3.0 -m "New release for v3.0"

You can verify that your Git tag was successfully created by running the “git tag” command with the “-n” option.

> git tag -n

# Working with wiki for the project

__View a project wiki__

To access a project wiki:
1. On the top bar, select Menu > Projects and find your project.
2. To display the wiki, either:
  On the left sidebar, select Wiki.
  On any page in the project, use the g + w wiki keyboard shortcut.

_If Wiki is not listed in the left sidebar of your project, a project administrator has disabled it._
