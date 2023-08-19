# Pushing Code to GitHub: A Guide for New Software Developers

### 1. Prerequisites:

- Install Git on your system. Instructions can be found [here](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git).
- Create a GitHub account if you haven't already.
- Setup ssh for your account. Instructions can be found [here](https://docs.github.com/en/authentication/connecting-to-github-with-ssh)
- Set up your Git credentials locally using `git config`.

### 2. Initializing a New Repository:

- Create a new repository on GitHub.
- Add README.md in the main branch.
  - Add a brief description of the project.
- Now create a release branch.
  - Click on the branch button on the top left corner of the repository page.
  - Type in the name of the branch you want to create.
  - Select the main branch as the source.
  - Click on the Create Branch button.
- Now create a dev branch.
  - Click on the branch button on the top left corner of the repository page.
  - Type in the name of the branch you want to create.
  - Select the created feature branch as the source.
  - Click on the Create Branch button.
- `Add a git hook that will increment the version number in a file and every time you commit code. This will be shown in the production logs when the code is deployed.`

### 3. Adding Changes:

- After making changes to your code, run `git status` to view the changed files.
- Run `git add [filename]` to stage individual files or `git add .` to stage all changes.

### 4. Committing Changes:

- Run `git commit -m "Your meaningful commit message here"` to commit your changes.

### 5. Pushing Changes:

- Ensure you have the latest version from the main branch by running `git pull origin main` (or the branch you're working on).
- Run `git push origin main` (or the name of your branch) to push your committed changes to GitHub.

## The Importance of Pushing Code to GitHub

- **Version Control:** Git provides a comprehensive history of your project, allowing developers to track changes, revert to previous versions, and resolve conflicts more effectively.
- **Collaboration:** GitHub simplifies collaboration. Multiple developers can work on a project concurrently without overriding each other's changes.
- **Backup and Security:** Pushing to GitHub means there's an online backup of your code. GitHub also offers security features like vulnerability scanning to ensure your code is safe.
- **Continuous Integration and Deployment:** GitHub can be integrated with various CI/CD tools. As soon as you push your code, these tools can automatically build, test, and deploy your application.
- **Documentation:** The GitHub platform offers features like Wikis and READMEs, allowing developers to document their code, dependencies, and usage guidelines.

## Hacklab Specific Rules For Software Development Team

### Key Branches:

- **master:** Always production-ready.
- **dev:** Acts as an integration branch for feature branches. Contains code for the next release.
- **feat:** For new features, branched off develop and merged back into develop. All feature branches should follow the pattern with `feat/<feature-name>`
- **release:** Branched off develop when it's feature complete for a release. This branch prepares the code for production by making necessary adjustments and bug fixes. Once ready, it's merged to master and develop. All release branches should follow the pattern `release/<release-version>`
- **hotfix:** Emergency fixes directly branched from master and merged back to both master and dev. All hotfix branches should follow the pattern `hotfix/<issue-number or name>`

### Branching Strategy:

<img src="https://i.ibb.co/bL81NLh/Add-a-subheading.png" alt="Add-a-subheading" border="0"/> <br>
<img href="https://ibb.co/d2PndGN"><img src="https://i.ibb.co/0MCPgh0/git-fork-flow.png" alt="git-fork-flow" border="0"/> <br/>

## Step-by-Step Development Instructions

1. **Fork the repo you want to work on**

   - Fork the repository.
     - Click on the Fork button on the top right corner of the repository page.
     - Select your account as the destination.

2. **Setting up Your Local Environment:**

   - Clone the forked repository to your local machine.
   - Ensure you have the latest version of both the dev and master branches.

3. **Creating a New Branch for Development:**

   - From the dev branch, create a new feature or bugfix branch: `git checkout -b feat/<your-feature-name>`.

4. **Making Code Changes:**

   - Develop your feature or fix the bug in your branch.
   - Regularly commit your changes with meaningful commit messages.

5. **Once development is completed:**

   - Pull merge the latest changes from the dev branch of central repo to your dev branch.
     - Run `git checkout dev` to switch to the dev branch.
     - Run `git pull origin dev` to pull the latest changes from the dev branch of central repo to your local dev branch.
   - Merge the latest changes from your feature branch to your dev branch.
     - Run `git merge feat/<your-feature-name> --no-ff` to merge the latest changes from your feature branch to the dev branch.
     - Fix any merge conflicts that may arise.
   - Push your changes to the remote repository.
     - Run `git push origin dev` to push your changes to the remote repository.
   - Create a pull request from your dev branch to the dev branch of central repo.

6. **Ensure Code Passes GitHub Actions:**

   - Before submitting a pull request, make sure your code passes all GitHub Actions set up for the branch.

7. **Resolve Conflicts:**

   - If there are any merge conflicts between your branch and the dev or master branch, resolve them locally.
   - Ensure there are 0 merge conflicts before proceeding.

8. **Create a Pull Request:**

   - Push your branch to the remote repository: git push origin your-feature-name.
   - On GitHub, create a pull request from your branch to the target branch (either dev or master).
   - Notify the team about the pull request so they are aware and can review.

9. **Request for Review:**

   - Once your pull request is up, and you've ensured the above conditions are met, request a review from the appropriate team members or maintainers.

10. **Address Reviewer Feedback:**

    - Carefully consider the feedback from the reviewer.
    - Make necessary changes in your branch based on the suggestions.
    - Commit and push these new changes to your branch.

11. **Repeat Review Steps:**

    - The reviewer will look at your updated code.
    - Repeat steps 8 and 9 until the reviewer is satisfied with your changes.

12. **Final Approval and Merge:**

    - Once the reviewer approves the code, they (or someone with the appropriate permissions) will merge it back to the respective target branch (dev or master).

    <br>

**Make sure to follow these steps diligently for every feature or bugfix. This process ensures code quality, seamless integration, and efficient collaboration among team members.**

## Do's and Don'ts for Development

### Do's:

- `Use git merge --no-ff to merge your feature branch to dev branch.`
- Name your branch meaningfully, indicating the purpose or feature.
- Commit often with clear and concise commit messages.
- Frequently pull changes from the remote repository to stay updated.
- Make sure to run all tests and ensure they pass before submitting a pull request.
- Resolve all conflicts locally, ensuring your code integrates seamlessly.
- Provide a detailed description in your pull request of the changes made.
- Tag the appropriate team members for review.
- Respectfully consider all feedback and make necessary changes.
- Stay engaged and responsive as the review progresses.
- Ensure your code has been reviewed and approved before merging.
- Regularly prune and manage your local and remote branches to keep things tidy.

### Don'ts:

- `Start work without first ensuring you're working off the latest codebase.`
- Work directly on dev or master.
- Mix multiple features or fixes in a single commit.
- Ignore merge conflicts or changes in the remote repository.
- Submit code that doesn't pass tests or GitHub Actions.
- `Merge conflicted code into the dev or master branches.`
- Create a pull request without a clear description or without notifying the team.
- Push through with merges without a proper review.
- Disregard reviewer feedback or engage in unconstructive arguments.
- Assume one round of feedback is enough; be prepared for multiple iterations.
- `Merge without proper approval or without ensuring all CI checks have passed.`

## Conclusion

In the dynamic landscape of software development, establishing and adhering to structured processes is not just beneficial—it's essential. By following the outlined Do's and consciously avoiding the Don'ts, we safeguard the integrity of our codebase, foster collaboration, and ensure the consistent delivery of high-quality software. Remember, these guidelines are not just rules but the collective wisdom distilled from many development cycles. They serve as our roadmap, ensuring that every team member can navigate the challenges of software development with clarity and confidence. Let's commit to upholding these standards and continually seeking ways to refine our practices for the betterment of our projects and our team.
