# a10-terraform-tkc
Terrafrom files needed to substantiate demo of A10's Thunder Kubernetes Connector

These files make use of two proviers: " kubernetes" and A10's "thunder".  Both can be easily downloaded off the Internet.

Place all these files in a directory, then run 'terraform init' to get the provider code.

Change the 'vars.tf' file to reflect your A10 Thunder environment, then you can run 'terraform apply'.

The output should looks similar to this:

```
$ terraform apply --auto-approve
kubernetes_cluster_role_binding.rbac: Creating...
kubernetes_secret.thunder-secret: Creating...
kubernetes_cluster_role_binding.rbac: Creation complete after 0s [id=th-secret-rbac]
kubernetes_secret.thunder-secret: Creation complete after 0s [id=default/thunder-access-creds]
thunder_virtual_server.ws-vip: Creating...
thunder_virtual_server.ws-vip: Creation complete after 0s [id=ws-vip]
kubernetes_namespace.cyan: Creating...
kubernetes_namespace.cyan: Creation complete after 0s [id=cyan]
kubernetes_config_map.ws-config: Creating...
kubernetes_config_map.ws-index: Creating...
kubernetes_config_map.ws-config: Creation complete after 0s [id=cyan/ws-conf-file]
kubernetes_config_map.ws-index: Creation complete after 0s [id=cyan/ws-index-file]
kubernetes_deployment.webservers: Creating...
kubernetes_deployment.webservers: Creation complete after 4s [id=cyan/webserver]
kubernetes_service.webserverSvc: Creating...
kubernetes_service.webserverSvc: Creation complete after 0s [id=cyan/webserver-svc]
kubernetes_ingress.tkcIngress: Creating...
kubernetes_ingress.tkcIngress: Creation complete after 0s [id=cyan/ingress-resource]
kubernetes_deployment.tkc: Creating...
kubernetes_deployment.tkc: Creation complete after 4s [id=default/thunder-kubernetes-connector]

Apply complete! Resources: 10 added, 0 changed, 0 destroyed. 
```


