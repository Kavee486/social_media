pipeline {
  agent any

  stages {
    stage('Clone Repo') {
      steps {
        git branch: 'main', url: 'https://github.com/Kavee486/social_media.git'
      }
    }

    stage('Terraform Init & Apply') {
      steps {
        dir('infrastructure/terraform'){
          bat 'terraform init'
          bat 'terraform apply -auto-approve'
        }
      }
    }

    stage('Ansible Provisioning') {
      steps {
        dir('infrastructure/ansible') {
          sh 'ansible-playbook -i inventory setup.yml'
        }
      }
    }

    stage('Install Dependencies') {
      steps {
        sh 'npm install'
      }
    }

    stage('Run App') {
      steps {
        sh 'npm run dev'
      }
    }
  }
}
