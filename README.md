# Azure
Azure scripts with arm templates and powershell scripts that perform automatic deployment of resources for both Pass and Iaas

## Get started

Login to azure account, from powershell run the command

```sh
Login-AzureRmAccount
```

You can set you subscription via powershell using the command

```sh
 Set-AzureRmContext -SubscriptionID {subscription-id}
 ```
 
 If you do not know the subscription id you can list all your subscription, using the command
 
 ```sh
 Get-AzureRmSubscription
 ```
 
 - To create Pass run the script `Deploy-SimplePaasTemplate.ps1`, this sample script will create a server farm, and iis server ready to host asp.net site
 
 - To create Iass run the script `Deploy-SimpleIaasTemplate.ps1`, the sample script will create virtual networks with its own subnets storage and vms
