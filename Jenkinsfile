pipeline {
    agent any
  
  environment {
    registry = 'fchauleu/battleboat'						
  }
   registryCredential = 'fchauleu'
    dockerimage = 'battleboat'
   
   stages {
        stage('Checkout'){
            steps{
                git branch: 'main', url: 'https://github.com/ernestoflav/battleboat.git'
            }
         }

        stage('Build Image') {
            steps {
                script{
                    dockerImage = docker.build registry + ":$BUILD_NUMBER"
                } 
            }
         }

        stage('Deploy image') {
            steps{
                script{ 
                    docker.withRegistry("https://"+registry,"registryUrl 'docker.io:"+registryCredential 'fchauleu') {
                        dockerImage.push()
                    }
                }
            }
        }  
    }
}

  
  


