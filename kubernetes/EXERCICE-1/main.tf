provider "kubernetes" {
  version = "2.22.0"
  path    = "~/.terraform.d/plugins/terraform-provider-kubernetes_v2.22.0"
}

module "module-kubernetes-ssh" {
  source = "./Kubernetes/kubernetes-ssh"
}
module "module-service-nodeport" {
   source = "./Kubernetes/kubernetes-ssh/nodeportservice"
 }