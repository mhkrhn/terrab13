pipeline {
  agent any
  stages {
    stage('Build Image') {
       steps {
        script {
          sh 'docker build -t jenktest .'
          }
       }
  }
    stage('Login') {
       steps {
        script {
          sh 'docker login -u mhkrhn -p karahan2364'
          }
       }
  }
    stage('Tag Image') {
       steps {
        script {
          sh 'docker image tag jenktest:latest mhkrhn/jenktest:latest' 
          }
       }
  }
    stage('Push') {
       steps {
        script {
          sh 'docker image push mhkrhn/jenktest:latest'
          }
       }
  }
  }
}
  node {
                 def remote = [:]
                 remote.name = 'mkvm1'
                 remote.host = '20.199.21.137'
                 remote.user = 'azureuser'
                 remote.password = 'Karahan507144'
                 remote.allowAnyHosts = true
                 stage('Remote SSH') {
                 sshCommand remote: remote, command: "docker run -d -p 1137:1337 mhkrhn/jenktest"
  }
}

 
