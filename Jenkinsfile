pipeline {
    agent {
        label 'docker-agent'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Code checked out from GitHub'
            }
        }

        stage('Build') {
            steps {
                echo 'Building AI Resume Analyzer'
            }
        }

        stage('Test') {
            steps {
                echo 'Running tests'
            }
        }

        stage('Docker Build') {
            steps {
                bat 'docker build -t kruthikargowdar/ai-resume-analyzer:v3 .'
            }
        }
    }
}