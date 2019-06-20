# Deploy Key Vault and Access from Bootstrap Container

This template deployed Aure Key Vault, creates a secret, and returns the secret from a script running inside of the bootstrapping container. Authentication is provided by the MSI based identity given to the container.

<a href="https://portal.azure.com/#create/Microsoft.Template/uri/https%3A%2F%2Fraw.githubusercontent.com%2Fneilpeterson%2Fkeyvault-msi-demo%2Fmaster%2Fdeployment-artifacts%2Fazuredeploy.json" target="_blank">
    <img src="http://azuredeploy.net/deploybutton.png"/>
</a>

This is the script that is run inside fo the container:

```
echo "Vault Name: $VAULT_NAME"
echo "Secret Name: $SECRET_NAME"
echo "Secret Value: $(az keyvault secret show --name $SECRET_NAME --vault-name $VAULT_NAME --query value -o tsv)"
```

# Validate test

Fill out the form and click purchase.

![](./images/form.jpg)

Once the deployment has completed, select the **boostrap** container instance > **Containers** > **Logs** > Select the contianer.

![](./images/reslts.jpg)