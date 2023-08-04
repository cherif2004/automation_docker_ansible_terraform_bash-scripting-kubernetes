
 terraform {
   backend "kubernetes" {
     secret_suffix = "cherif"
    config_path = "~/.kube/config"
    namespace = "rashid"
  }
}


provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_service" "service" {
    metadata {
      name = var.informations_pod.service-name
      namespace = var.informations_pod.namespace
      labels = {
        name = var.informations_pod.service-name
      }
    }
    spec {
      type = "NodePort"
        
        port {
          node_port = var.informations_pod.node_port
          target_port = var.informations_pod.target_port
          port = var.informations_pod.port
        }
    }
}