pipeline {
  agent {
    docker {
      image 'node:6-alpine'
      args '-p 9000:9000'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
      }
    }
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh 'node -v'
            sh 'npm cache clean'
            sh 'node app.js'
          }
        }
        stage('Test 2') {
          steps {
            sh 'npm test'
          }
          
        }

      }
    }
  }
  environment {
    npm_config_cache = 'npm-cache'
  }
}
