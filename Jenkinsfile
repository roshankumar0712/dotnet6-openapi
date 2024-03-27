pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS = 'Dockerhub_Credentials'
        DOCKER_IMAGE = 'roshankumar07/test1:latest'
    }  
    
    stages {
        stage('Build Docker Image') {
            steps {
                script {
                    docker.build(env.DOCKER_IMAGE, '.')
                }
            }
        }
        stage('Push Docker Image') {
            steps {
                script {
                    docker.withRegistry('https://index.docker.io/v1/', env.DOCKER_CREDENTIALS) {
                        docker.image(env.DOCKER_IMAGE).push()
                    }
                }
            }
        }
    }
}
