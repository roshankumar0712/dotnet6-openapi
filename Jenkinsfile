pipeline {
    agent any

    environment {
        DOCKER_CREDENTIALS = 'Dockerhub_Credentials'
        DOCKER_IMAGE = 'sasidharan31/my_test:latest'
    }  
    

    stages {
        stage('Clone Repository') {
            steps {
                checkout([$class: 'GitSCM', branches: [[name: 'main']], userRemoteConfigs: [[url: 'https://github.com/sasidharan3112/dotnet_app.git']]])
            }
        }
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
