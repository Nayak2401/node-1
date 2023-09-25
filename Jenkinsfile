pipeline {
    agent "node-2"

    stages {
        stage('Build') {
            steps {
                script {
                    git branch: 'practice', url: 'https://github.com/Nayak2401/node-1.git'
                    sh clone_build.sh
                }
            }
        }
        
