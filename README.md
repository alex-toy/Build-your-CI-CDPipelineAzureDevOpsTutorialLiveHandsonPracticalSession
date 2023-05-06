# Build your CI-CD Pipeline Azure DevOps

Continuous integration/continuous delivery (CI/CD) pipelines will improve software’s frequent delivery by adapting Azure DevOps services. A CI/CD pipeline will perform automated monitoring and controlling over the application’s delivery to improve its integration and testing phases. 

Continuous Integration(CI) is an automated process that allows any code changes in code to an application to be regularly developed, tested, and merged to a shared repository. Continuous Delivery(CD) represents the deployment of artifacts into the production environment. This will automatically test the bug and upload it to a repository.

This hands-on practical session explains the building and executing procedure of the CI/CD pipeline in a real-time working environment system. Through this project, we will see the complete lifecycle of the application at a high level.

## Start project

### Create project 
- go under \src
```
dotnet new sln --name "HelloWorldApp"
dotnet new mvc -n HelloWorldApp.Web
dotnet sln HelloWorldApp.sln add HelloWorldApp.Web\HelloWorldApp.Web.csproj
```

### Tie project to Azure Devops
```
git remote add origindevops https://alexviseo@dev.azure.com/alexviseo/BuildYourCICDPipelineAzureDevOps/_git/BuildYourCICDPipelineAzureDevOps
git push -u origindevops --all --force
```


### Create Pipeline

- use classic editor :
<img src="/pictures/initial_pipeline.png" title="initial pipeline"  width="500">
<img src="/pictures/initial_pipeline2.png" title="initial pipeline"  width="500">
 
- select **ASP.NET Core** Template
<img src="/pictures/initial_pipeline3.png" title="initial pipeline"  width="900">

- Hit **Save and Run** (pick defaults)
<img src="/pictures/initial_pipeline4.png" title="initial pipeline"  width="900">

- You can see the artifact produced at the end of the pipeline
<img src="/pictures/artifact.png" title="artifact"  width="900">


### Create App services for dev, prod and 

- for prod, add a staging deployment slot :
<img src="/pictures/app_services.png" title="app services"  width="900">


### Create Release Pipeline

- choose **App Service Deployment** :
<img src="/pictures/release_pipeline.png" title="release pipeline"  width="900">

- set up development stage :
<img src="/pictures/dev_stage.png" title="release pipeline dev stage"  width="900">

- set up QA stage :
<img src="/pictures/qa_stage.png" title="release pipeline QA stage"  width="900">

- set up production stage :
<img src="/pictures/prod_stage.png" title="release pipeline production stage"  width="900">
<img src="/pictures/prod_stage2.png" title="release pipeline production stage"  width="900">
<img src="/pictures/prod_stage3.png" title="release pipeline production stage"  width="900">

- Add post deployment approval :
<img src="/pictures/approval.png" title="post deployment approval"  width="900">

- Add artifact :
<img src="/pictures/add_artifact.png" title="add artifact"  width="900">

- final pipeline :
<img src="/pictures/final_pipeline.png" title="final pipeline"  width="900">

- create release pipeline :
<img src="/pictures/create_new_release.png" title="create new release"  width="900">
<img src="/pictures/create_new_release2.png" title="create new release"  width="900">
