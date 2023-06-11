pipeline {
    agent any
    
    stages {
        stage ('test'){
            steps {
                echo "test"
                sh '''
                echo from term.
                echo ${BUILD_NUMBER}
                
                '''
            }
        }
    }
}
