pipeline {
    agent {
        docker {
        image: 'node:4.8.5-alpine'
        }
    }

        stages {
            stage('Build') {

                steps {
                        echo 'Testing'
                        sh 'npm install'
                }
            }
        }
}
