
pipeline {
    agent any

    stages {
        stage('Git Checkout') {
            steps {
                echo 'Source code checkout stage'
            }
        }

        stage('Maven Build') {
            steps {
                sh 'mvn clean package'
            }
        }

        stage('Docker Build') {
            steps {
                sh 'docker build -t complete-build .'
            }
        }

        stage('Run Application') {
            steps {
                sh 'docker run --rm complete-build'
            }
        }
    }

    post {
        success {
            echo 'Build completed successfully!'
        }
        failure {
            echo 'Build failed. Check the console output.'
        }
    }
}
