pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git branch: 'main', url: 'https://github.com/Kavee486/social_media.git'
      }
    }

    stage('Install Dependencies') {
      steps {
        bat 'npm install'
      }
    }

    stage('Run App') {
      steps {
        bat 'npm start'
      }
    }
  }
}
