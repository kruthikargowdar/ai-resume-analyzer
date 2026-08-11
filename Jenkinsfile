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

        stage('Docker Push') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'dockerhub-creds',
                    usernameVariable: 'DOCKER_USERNAME',
                    passwordVariable: 'DOCKER_PASSWORD'
                )]) {
                    bat 'echo %DOCKER_PASSWORD%| docker login -u "%DOCKER_USERNAME%" --password-stdin'
                    bat 'docker push kruthikargowdar/ai-resume-analyzer:v3'
                }
            }
        }
    }
}