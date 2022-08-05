##count
ins_name = [ "abhi","abhishek" ]
ami = [ "ami-068257025f72f470d","ami-076e3a557efe1aa9c" ]


##for each(map)
 loop_name = {
  "owner1" = "abhi1"
  "owner2" = "abhi2"
}


# ###nested map
 loop_name1 = {
  "owner1" ={ "ami"="ami-068257025f72f470d",
    "instance_type"="t2.micro",
    "name" ={
        "my_name"="abhi1"
    }
  }
  
    
    "owner2" = {"ami"="ami-076e3a557efe1aa9c",
    "instance_type"="t2.micro",
    "name" ={
        "my_name"="abhi2"
    }
 }
 }

# for each (set)
set1= [ "abc","def" ]

# for s3
set = ["bucket1"]
