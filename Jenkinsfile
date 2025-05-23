pipeline {
    agent any

    environment {
        DOCKER_IMAGE = "myapp:latest"
        KUBECTL_CMD = "minikube kubectl --"
    }

    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package'  
            }
        }
        stage('Build Docker Image') {
            steps {
                sh "docker build -t ${DOCKER_IMAGE} ."
            }
        }
        stage('Deploy to Kubernetes') {
            steps {
                // Aplicar deployment y service en Kubernetes
                sh "${KUBECTL_CMD} apply -f deployment.yaml"
                sh "${KUBECTL_CMD} apply -f service.yaml"
            }
        }
    }
}
