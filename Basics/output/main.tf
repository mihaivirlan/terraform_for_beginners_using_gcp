resource "random_string" "rand_name" {
  length  = 20
}

output name {
  value = random_string.rand_name.id 
}

