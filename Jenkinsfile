pipeline {
    agent any

    environment { 
        AWS_CREDENTIALS = credentials('awscreds')
    }

    stages {
        stage('CheckOut') {
            steps {
                checkout scm
            }
        }
        stage('Init') {
            steps {
                terraform init
            }
        }
        stage('plan') {
            steps {
                terraform plan
            }
        }        
        stage('Apply') {
            when {
                branch 'main'
            }
            steps {
                terraform apply --auto-approve
            }
        }
    }
}