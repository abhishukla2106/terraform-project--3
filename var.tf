## count
variable "ins_name" {
    type = list(string)
    description = "give instance name"
  
}
variable "ami" {
    type = list(string)
    description = "give ami"
  
 }

##for each(map)
 variable "loop_name" {
    type = map(string)
    description = "provide name for tags"
}


### nested map
variable "loop_name1" {
    type = map(any)
    description = "give instance ami"
}


## for each(set)
variable "set1" {
    type = set(string)
    description = "give instance ami"
}


variable "set"{
  type = set(any)
  description = "bucket created"

}
