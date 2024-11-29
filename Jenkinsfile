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
                sh '''
                terraform init
                '''
            }
        }
        stage('plan') {
            steps {
                sh '''
                terraform plan
                '''
            }
        }        
        stage('Apply') {
            steps {
                sh '''
                terraform apply --auto-approve
                '''
            }
        }
    }
}