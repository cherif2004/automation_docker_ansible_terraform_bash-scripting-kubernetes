variable "resource-informations" {
  type = list(object({
    pod-name = string
    namespace =string
    id =number
    username =string
    container-name= string
    container-image= string
    container-port = number

  }))
    default = [ {
    pod-name = "roberto-presentation-pod-a"
    namespace ="rashid"
    id =1
    username ="root"
    container-name= "roberto-presentation-container-a"
    container-image= "robertolandry/ssh-port4355"
    container-port = 4355
    },
    {
    pod-name = "roberto-presentation-pod-b"
    namespace ="rashid"
    id =2
    username ="user1"
    container-name= "roberto-presentation-container-b"
    container-image= "robertolandry/ssh-port4355"
    container-port = 4355
    },
    {
    pod-name = "roberto-presentation-pod-c"
    namespace ="rashid"
    id =3
    username ="user2"
    container-name= "roberto-presentation-container-c"
    container-image= "robertolandry/ssh-port4355"
    container-port = 4355
    } ]
    


}