pipeline {
    agent any
  
    stages {
        stage('Git checkout') {
           steps{
                git branch: 'main', credentialsId: 'MK', url: 'https://github.com/mhkrhn/terrab13'
            }
        }
        stage('terraform format check') {
            steps{
                sh 'terraform fmt'
            }
        }
        stage('terraform Init') {
            steps{
                sh 'terraform init'
            }
        }
        stage('terraform apply') {
            steps{
                sh 'terraform apply --auto-approve'
            }
        }
    }
}
 
