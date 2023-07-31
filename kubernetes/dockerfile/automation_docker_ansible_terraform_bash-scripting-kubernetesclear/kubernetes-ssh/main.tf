provider "kubernetes" {
  config_path = "~/.kube/config"
}
resource "kubernetes_pod" "roberto-pod" {
   count = length(var.resource-informations)
   metadata {
     name = "${var.resource-informations[count.index].pod-name}"
     namespace = "${var.resource-informations[count.index].namespace}"
     labels = {
       id= "${var.resource-informations[count.index].id}"
       username = "${var.resource-informations[count.index].username}"
     }
   }
    spec {
        container {
          name = "${var.resource-informations[count.index].container-name}"
          image = "${var.resource-informations[count.index].container-image}"
            port {
              container_port = "${var.resource-informations[count.index].container-port}"
            }
        }
    }

 }