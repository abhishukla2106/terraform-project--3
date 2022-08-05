output "filename" {
    value = [for i in var.ins_name:i]
  
}
output "owner" {
    value = [for k,v in  var.loop_name:k]
  
}