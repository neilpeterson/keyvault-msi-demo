echo "Vault Name: $VAULT_NAME"
echo "Secret Name: $SECRET_NAME"
echo "Secret Value: $(az keyvault secret show --name $SECRET_NAME --vault-name $VAULT_NAME --query value -o tsv)"