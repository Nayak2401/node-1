pipeline {
    agent any

    stages {
        stage('scm') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/Nayak2401/node-1.git'
                }
            }
        }
        stage('checkin') {
            steps {
                script {
                 sh 'maven.sh'
                }
            }
        }
    }
}

