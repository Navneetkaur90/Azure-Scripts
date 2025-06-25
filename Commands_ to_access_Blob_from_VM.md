# Commands to access Blob from the Virtual Machine
Enable managed identity in vm. With this, vm will be registered in MS EntraID. Once registered, it can be granted role/permission to access other resources managed by EntraID
### Fetch the access token of managed identity 

```
access_token=$(curl 'http://169.254.169.254/metadata/identity/oauth2/token?api-version=2018-02-01&resource=https%3A%2F%2Fstorage.azure.com%2F' -H Metadata:true | jq -r '.access_token')
```


### Access the blob from Virtual Machine

storage_account_name=""
container_name=""
blob_name=""

```
curl "https://$storage_account_name.blob.core.windows.net/$container_name/$blob_name" -H "x-ms-version: 2017-11-09" -H "Authorization: Bearer $access_token"
```
