pipeline {
    agent any

    environment {
        DOCKERFILE_PATH = 'Dockerfile'
        GIT_REPO = 'https://github.com/sasidharan3112/my_jenkins.git'
        IMAGE_TAG = 'my-html-image:latest'  // Tag for your Docker image
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main', url: env.GIT_REPO
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    // Check if Dockerfile exists in the repository
                    def dockerfileExists = fileExists(env.DOCKERFILE_PATH)
                    if (!dockerfileExists) {
                        error "Dockerfile not found at ${env.DOCKERFILE_PATH}"
                    }

                    // Build Docker image
                    sh "docker build -t ${env.IMAGE_TAG} ."
                }
            }
        }
    }
}
