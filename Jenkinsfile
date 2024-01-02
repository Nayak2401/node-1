pipeline {
    environment {
        registry = "nayak2401/myimage"
        registryCredential = 'docker-hub'
        dockerImage = ''
    }
    agent { label 'slave-1' }
    stages {
        stage('Cloning our Git') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/Nayak2401/node-1.git'
                }
            }
        }
        stage('Building our image') {
            steps {
                script {
                    sh "echo Nayak@1234 | sudo -S docker build -t ${registry}:${BUILD_NUMBER} ."
                }
            }
        }
        stage('Deploy our image') {
            steps {
                script {
                    withCredentials([usernamePassword(credentialsId: 'docker-hub', passwordVariable: 'dockerPWD', usernameVariable: 'dockerUSER')]) {
                        // sudo  docker.withRegistry('', registryCredential) {
                        //   sudo  dockerImage.push()
                        // }
                        sh "echo Nayak@1234 | sudo -S docker login -u=${dockerUSER} -p=${dockerPWD}"
                        sh "echo Nayak@1234 | sudo -S docker push ${registry}:${BUILD_NUMBER}"
                    }
                }
            }
        }
    }
}


