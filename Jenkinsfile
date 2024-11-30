pipeline {

agent any

environment {

    AWS_CREDENTIALS = credentials("AWS_credentials_id")
}

stages {

stage ("Terraform") {

steps {
    dir ('/mnt/Terraform') {
        
      sh """ terraform init
             terraform plan
             terraform apply --auto-approve"""
}
}
}
}
}
