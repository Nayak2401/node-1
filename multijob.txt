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
        stage('Create Text File') {
            steps {
                script {
                    echo 'my life'
                }
            }
        }
        stage('checkin') {
            steps {
                script {
                 sh 'cat hello11.sh'
                }
            }
        }
    }
}

