pipeline  {
  environment {
    registry = "docker-hub-fchauleu/battleboat"
    registryCredential = 'dockerhub'
    dockerImage = 'ngnix'
  }

  agent any

  stages  {
    stage('Cloning repo') {
      steps {
        git 'https://github.com/roc41d/spring-boot-ci-cd-with-jenkins.git'
      }
    }
    stage('Building image') {
      steps {
        script  {
          dockerImage = docker.build registry + ":$BUILD_NUMBER"
        }
      }
    }
    stage('Deploying image')  {
      steps {
        script {
          docker.withRegistry( "", registryCredential ) {
            dockerImage.push()
          }
        }
      }
       stage('push image') 
    }
  }
}
  


