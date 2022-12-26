az group create `
    --location francecentral `
    --name alexeirg

az deployment group create `
    --resource-group alexeirg `
    --template-file 'arm.json' `
    --parameters `
        planName=alexeiappserviceplan `
        webAppName=alexeiwebapp-dev 


az deployment group create `
    --resource-group alexeirg `
    --template-file 'arm.json' `
    --parameters `
        planName=alexeiappserviceplan `
        webAppName=alexeiwebapp-test


az deployment group create `
    --resource-group alexeirg `
    --template-file 'arm.json' `
    --parameters `
        planName=alexeiappserviceplan `
        webAppName=alexeiwebapp-prod