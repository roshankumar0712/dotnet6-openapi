pipeline {
    agent any

    environment {
        DOCKER_IMAGE = 'sasidharan31/my_test:latest'
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
                    docker.withRegistry('https://hub.docker.com/repository/docker/sasidharan31/my_test/general', 'dockerhub_credentials') {
                        docker.image(env.sasidharan_31/latest).push()
                    }
                }
            }
        }
    }
}
