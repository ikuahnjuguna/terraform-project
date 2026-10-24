terraform{
     required_providers{
         local = {
            source = "hashicorp/local"
            version = "~>2.0"
         }
     }
}
resource "local_file" "hello_world"{
    content = "Hello, World from Terraform!"
    filename = "${path.module}/hello.txt"
}
resource "local_file" "goodbye_world"{
    content = "Goodbye from Terraform!"
    filename = "${path.module}/goodbye.txt"
}