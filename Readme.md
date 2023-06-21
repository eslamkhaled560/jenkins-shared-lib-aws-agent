# Jenkins Task 2 - Configuring Pipeline and Multibranch Pipeline

**Presented to:**    
_Mohamed Swelam_    

**Presented by:**   
_Islam Khaled_    

21 June 2023

-----------------------------------------
## 1- What is Jenkins pipeline?

- Jenkins pipeline is a powerful feature of Jenkins that allows you to define and manage your build process.
- It enables you to define a series of steps or stages that describe how the software is built, tested, and deployed.

-----------------------------------------
## 2- What scripting language is Jenkins pipeline syntax based on?

Jenkins Pipeline syntax is based on the Groovy scripting language.

-----------------------------------------
## 3- What are the different ways to trigger pipeline?

- Webhooks: Enables automatic triggering of actions in Jenkins whenever certain events occur in the version control systems. These events can include code pushes, pull requests, branch creations, or any other relevant activities.
- Jenkins Organization periodic scan: A feature provided by Jenkins to automatically discover and manage repositories within a version control system. It allows Jenkins to scan the repositories periodically and create or update Jenkins pipelines for each repository.

-----------------------------------------
## 4- What is different between parameter and jenkins env variable?

Environment variables can be overridden or unset, but params is an immutable Map and cannot be changed.     

__Environment Variables:__ These are dynamic-named values that can be used to control the behavior of the pipeline. They can be overridden or unset during the pipeline execution. This allows for a high degree of flexibility and control.     

__Parameters:__ These are used to pass values or settings into a Jenkins pipeline. In Jenkins, parameters are implemented as an immutable Map. This means that once a parameter has been set at the start of a pipeline, it cannot be changed during the pipeline execution. This ensures consistency and predictability, as the same parameter will always have the same value throughout a single pipeline run.

-----------------------------------------
## 5- What is organization folder job and what is used for?

Organization Folders enable Jenkins to monitor an entire GitHub Organization, Bitbucket Team/Project, GitLab organization, or Gitea organization and automatically create new Multibranch Pipelines for repositories which contain branches and pull requests containing a Jenkinsfile. it offers a way to structure and manage your Jenkins jobs in a more organized and manageable manner, making it easier to navigate and maintain a large number of projects within your Jenkins instance.

-----------------------------------------
## 6- Create jenkins pipeline for your repo and use script file (jenkinsfile) to write pipeline syntax, include parameter functions and env variable in it

- I used this repository, dockerized a simple python app and pushed it on my docker hub.
- Code Links: [Jenkinsfile](https://github.com/eslamkhaled560/simple-app/blob/test/Jenkinsfile) , [Dockerfile](https://github.com/eslamkhaled560/simple-app/blob/test/Dockerfile)  ,  [app.py](https://github.com/eslamkhaled560/simple-app/blob/main/app.py)

- Pipeline git configuration

![1](https://github.com/eslamkhaled560/simple-app/assets/54172897/1a80dbb9-16a0-431a-b72e-98d74708cc6b)
![2](https://github.com/eslamkhaled560/simple-app/assets/54172897/500ad20c-cc62-4c16-893a-2eb51f34f3a5)

- Final successfuul build 

![3](https://github.com/eslamkhaled560/simple-app/assets/54172897/46a26898-230e-4350-ab67-f38c25b4cc37)
![4](https://github.com/eslamkhaled560/simple-app/assets/54172897/0972003d-2661-4bb8-9d23-b36eb79bb5b8)

- My docker hub
  > Notice that I used $BUILD_NUMBER as the tag first, but I changed for $BRANCH_NAME in the multibranch task

![5](https://github.com/eslamkhaled560/simple-app/assets/54172897/443f2117-1f7b-4bad-bc29-41b684e2fea4)

- Console output

![pipeline-output](https://github.com/eslamkhaled560/simple-app/assets/54172897/2060e63e-ac72-495e-a304-7efb5496df29)

-----------------------------------------
## 7- Create another multibranch pipeline and filter branches to contain only (master , dev , test )

- Multibranch git configuration

![6](https://github.com/eslamkhaled560/simple-app/assets/54172897/f9ee0e1e-0945-4ef8-8b36-65c458623e41)
![7](https://github.com/eslamkhaled560/simple-app/assets/54172897/e1f8ab07-7e92-43c8-9488-d080ff0bd5e1)
![8](https://github.com/eslamkhaled560/simple-app/assets/54172897/76ae6890-3927-46af-b17d-70bab7ec55af)

- Scan logs

![9](https://github.com/eslamkhaled560/simple-app/assets/54172897/1c61eb71-f229-416b-bd29-71a56b4e1056)

- Branches status

![10](https://github.com/eslamkhaled560/simple-app/assets/54172897/e9b17dae-1a08-4a80-9bb5-d5f6696fe16c)

- My docker hub
  > Tags ${BRANCH_NAME}

![11](https://github.com/eslamkhaled560/simple-app/assets/54172897/b68e9067-5c6f-4eee-8c71-87b2477bc494)

-----------------------------------------
