provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_service" "robertonodeport-service" {
    metadata {
      name = "${var.nodeport-informations.service-name}"
      namespace = "${var.nodeport-informations.namespace}"
      labels = {
        name= "${var.nodeport-informations.service-name}"
      }
    }
    spec {
      type = "NodePort"
        selector = {
            id = "${var.nodeport-informations.id}"
        }
        port {
          node_port = "${var.nodeport-informations.node_port}"
          target_port = "${var.nodeport-informations.target_port}"
          port = "${var.nodeport-informations.port}"
        }
    }
}