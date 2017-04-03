﻿### Define variables
{
Clear;
$location = 'North Europe'
$resourceGroupName = 'org-arm-iaas'
$resourceDeploymentName = 'org-arm-iaas-template-deployment'
$templatePath = 'C:\Workspace\azure-arm\deploy'
$templateFile = 'simpleIaas.json'
$template = $templatePath + '\' + $templateFile
}

### Create Resource Group
{
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $Location `
    -Verbose -Force
}

### Deploy Resources
{
New-AzureRmResourceGroupDeployment `
    -Name $resourceDeploymentName `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile $template `
    -Verbose -Force
}

### Remove the test resource group
{
Remove-AzureRmResourceGroup `
    -Name $resourceGroupName
}