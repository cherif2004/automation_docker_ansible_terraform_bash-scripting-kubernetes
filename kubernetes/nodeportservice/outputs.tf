output "roberto-single_pod_porta" {
  value = kubernetes_service.robertonodeport-service.spec[0].port[0].node_port
}
output "roberto-single_pod_portb" {
  value = kubernetes_service.robertonodeport-service.spec[0].port[0].node_port
}
output "roberto-single_pod_portc" {
  value = kubernetes_service.robertonodeport-service.spec[0].port[0].node_port
}