pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git 'https://github.com/Kavee486/social_media.git'
      }
    }

    stage('Install Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Run App') {
      steps {
        sh 'npm start'
      }
    }
  }
}

