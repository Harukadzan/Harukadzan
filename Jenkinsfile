pipeline {
    agent any

    stages {
        stage('Check Out Code') {
            steps {
                echo 'Getting code from GitHub...'
                checkout scm
            }
        }

        stage('Build Docker Image') {
            steps {
                echo 'Building Docker image...'
                sh 'docker build -t proapp:latest .'
            }
        }

        stage('Run Tests / Script') {
            steps {
                echo 'Running application container...'
                sh 'docker run proapp:latest'
            }
        }
    }
}
