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
            when { 
                branch 'feature-2'
            }
            steps {
                echo "this is stage 3"
            }
        }
        
    }
}
