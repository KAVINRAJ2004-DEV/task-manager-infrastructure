pipeline {
    agent any

    stages {
        stage('Checkout Infrastructure') {
            steps {
                checkout scm
            }
        }

        stage('Validate Terraform') {
            steps {
                sh 'terraform -chdir=terraform fmt -check'
                sh 'terraform -chdir=terraform init -backend=false'
                sh 'terraform -chdir=terraform validate'
            }
        }

        stage('Validate Kubernetes YAML') {
            steps {
                sh 'test -f kubernetes/namespace.yaml'
                sh 'test -f kubernetes/frontend-deployment.yaml'
                sh 'test -f kubernetes/backend-deployment.yaml'
                sh 'test -f kubernetes/mysql.yaml'
            }
        }
    }
}
