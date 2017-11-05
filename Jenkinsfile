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
            sh 'node ./node_modules/forever/bin/forever start --minUptime 1000 --spinSleepTime 1000 app.js'
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
