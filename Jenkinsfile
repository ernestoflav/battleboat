pipeline  {
  agent any
  
  environment {
    registry = "docker-hub-fchauleu/battleboat"
    registryCredential = 'dockerhub'
    dockerImage = 'ngnix'
  }

  agent any

  stages  {
    stage('Cloning repo') {
      steps {
        git 'https://github.com/ernestoflav/battleboat.git'
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
    }
  }
}
  


