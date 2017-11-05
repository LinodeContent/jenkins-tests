pipeline {
  agent {
    docker {
      image 'keymetrics/pm2:6'
      args '-p 9000:9000'
    }

  }
  stages {
    stage('Build') {
      steps {
        sh 'npm install'
        sh 'npm install pm2 -g'
      }
    }
    stage('Test') {
      parallel {
        stage('Test') {
          steps {
            sh 'node -v'
            sh 'npm start'
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
