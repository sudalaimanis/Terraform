terraform { 
  cloud { 
    
    organization = "demo-organizations" 

    workspaces { 
      name = "test-workspace" 
    } 
  } 
}

resource "random_string" "random" {
  length  = 16

}