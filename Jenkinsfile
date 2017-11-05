pipeline {
    agent {
        docker { image 'node:7-alpine' }
    }
    stages {
        stage('Test') {
            steps {
                sh 'node --version'
                sh 'node ./node_modules/.bin/mocha tests/**'
            }
        }
    }
}
