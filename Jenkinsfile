pipeline {
    agent 'ubuntu-slave-1'

    stages {
        stage('scm') {
            steps {
                script {
                    git branch: 'main', url: 'https://github.com/Nayak2401/node-1.git'
                }
            }
        }
    stages {
        stage('Install Maven') {
            steps {
                // Use the 'sh' step to run shell commands on the slave
                script {
                    // Specify the desired Maven version and download URL
                    def mavenVersion = '3.8.4'
                    def mavenBaseUrl = 'https://downloads.apache.org/maven/maven-3'

                    // Construct the Maven download URL
                    def mavenDownloadUrl = "${mavenBaseUrl}/${mavenVersion}/binaries/apache-maven-${mavenVersion}-bin.tar.gz"

                    // Define the installation directory
                    def installationDir = "/path/to/install/maven"

                    // Create the installation directory if it doesn't exist
                    sh "mkdir -p ${installationDir}"

                    // Download and extract Maven
                    sh "curl -L ${mavenDownloadUrl} | tar -xz -C ${installationDir}"

                    // Set environment variables to use the installed Maven
                    env.PATH = "${installationDir}/apache-maven-${mavenVersion}/bin:${env.PATH}"
                    env.M2_HOME = "${installationDir}/apache-maven-${mavenVersion}"
                }
            }
        }
    }
    
    post {
        success {
            // Print Maven version to verify installation
            script {
                sh "mvn --version"
            }
        }
    }
 }
}
