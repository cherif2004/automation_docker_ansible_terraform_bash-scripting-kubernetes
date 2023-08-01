variable "nodeport-informations" {
  type = object({
    namespace = string
    service-name =string
    type = string
    id = number
    node_port =number
    target_port= number
    port =number
  })
  default =  {
    namespace = "rashid"
    service-name ="roberto-nodeport-a"
    type = "NodePort"
    id = 1
    node_port = 30455
    target_port =3455
    port = 3455
  } 
}
