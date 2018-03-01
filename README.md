# openshift-chef-automation
Automating basic tasks on Openshift using Chef

In order to make an HTTP request to an OpenShift Cluster, you need the self signed certificates that openshift uses.

To do this you can use `openssl s_client -connect <masterIP/masterHostname>:8443 -debug -showcerts | less` and add those certificates to your `.chef/trusted_certs` with the file extention `.crt`

You also need to have a service account or user account with a valid token in order to make an API call.

You can use `oc create sa <sa name> -n <project name>` to create a service account. 

Once the service account is created, you can use `oc sa get-token <sa name> -n <project name>` to view the token created for your service account.

Then, appropriate cluster or user roles can be added to the service account.

For example, to allow the creation of a project request from the API, add the `self-provisioner` cluster role to your service account.

This can be done with:  
`oc adm policy add-cluster-role-to-user self-provisioner system:serviceaccount:projectname:serviceaccountname`
