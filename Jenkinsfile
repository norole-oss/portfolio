pipeline {
    agent any

    stages {

        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                sh 'docker build -t portfolio-app .'
            }
        }

        stage('Deploy') {
            steps {
                sh '''
                docker rm -f futuristic-site || true
                docker run -d --name futuristic-site -p 80:80 portfolio-app
                '''
            }
        }
    }
}
