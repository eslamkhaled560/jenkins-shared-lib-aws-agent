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

## 2- What scripting language is Jenkins pipeline syntax based on?

Jenkins Pipeline syntax is based on the Groovy scripting language.

## 3- What are the different ways to trigger pipeline?

- Webhooks: enable automatic triggering of actions in Jenkins whenever certain events occur in the version control systems. These events can include code pushes, pull requests, branch creations, or any other relevant activities.
- Jenkins Organization periodic scan: A feature provided by Jenkins to automatically discover and manage repositories within a version control system. It allows Jenkins to scan the repositories periodically and create or update Jenkins pipelines for each repository.

## 4- What is different between parameter and jenkins env variable?

Environment variables can be overridden or unset, but params is an immutable Map and cannot be changed.       
Environment Variables: These are dynamic-named values that can be used to control the behavior of the pipeline. They can be overridden or unset during the pipeline execution. This allows for a high degree of flexibility and control.        
Parameters : These are used to pass values or settings into a Jenkins pipeline. In Jenkins, parameters are implemented as an immutable Map. This means that once a parameter has been set at the start of a pipeline, it cannot be changed during the pipeline execution. This ensures consistency and predictability, as the same parameter will always have the same value throughout a single pipeline run.

## 5- What is organization folder job and what is used for?

Organization Folders enable Jenkins to monitor an entire GitHub Organization, Bitbucket Team/Project, GitLab organization, or Gitea organization and automatically create new Multibranch Pipelines for repositories which contain branches and pull requests containing a Jenkinsfile. it offers a way to structure and manage your Jenkins jobs in a more organized and manageable manner, making it easier to navigate and maintain a large number of projects within your Jenkins instance.

## 6- 
