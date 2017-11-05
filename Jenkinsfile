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
      }
    }
        stage('Test') {
          steps {
            sh 'node -v'
            sh 'npm start'
            sh 'npm test'
            sh 'npm stop'
          }
        }
  }
  environment {
    npm_config_cache = 'npm-cache'
    HOME = '.'
    }
}
