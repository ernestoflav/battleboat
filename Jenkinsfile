pipeline  {
  agent any
  environment {
    registry = "docker-hub-fchauleu/battleboat"
    registryCredential = 'fchauleu'
    dockerImage = ''
  }

  stages  {
    stage('Cloning repo') {
      steps {
        git branch: 'main', url:'https://github.com/ernestoflav/battleboat.git'
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
          docker.withRegistry('https://registry-1.docker.io/v2/','fchauleu') {
            dockerImage.push()
          }
        }
      }
    }
  }
}
  


