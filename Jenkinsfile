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
        stage('Docker Check') {
    steps {
        bat '"C:\\Users\\kruth\\AppData\\Local\\Programs\\DockerDesktop\\resources\\bin\\docker.exe" version'
    }
}
    }
}

