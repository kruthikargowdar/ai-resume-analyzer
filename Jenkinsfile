pipeline {
    agent any

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
            bat 'docker build -t ai-resume-analyzer:%BUILD_NUMBER% .'
    }
}
    }
}

