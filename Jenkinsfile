pipeline {
    environment {
        registry = "kishorekannan23/dev"
        registryCredential = 'docker-hub-credentials' // Replace with your Jenkins credentials ID
    }
    agent any
    stages {
        stage('Building Docker Image') {
            steps {
                sh './build.sh'
            }
        }
        stage('Pushing Image to Docker Hub') {
            steps {
                script {
                    docker.withRegistry('https://registry.hub.docker.com', 'docker-hub-credentials') {
                        // Push the image with BUILD_NUMBER tag
                        sh "docker tag ${registry}:${env.BUILD_NUMBER} ${registry}:dev"
                        sh "docker push ${registry}:${env.BUILD_NUMBER}"
                        sh "docker push ${registry}:dev"
                    }
                }
            }
        }
    }
}

