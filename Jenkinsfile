pipeline {
    
    agent any
  
    stages {

        stage('initialise build') {
            steps {
                echo "this is stage 1"
            }
        }
        
        stage('NPM install') {
            steps {
                sh 'npm install'
            }
        }
      
        stage('npm run') {
            steps {
                echo "this is stage 3"
            }
        }
        
    }
}
