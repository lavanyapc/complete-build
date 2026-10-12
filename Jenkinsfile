pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                sh 'export PATH="/opt/homebrew/bin:$PATH" && mvn clean package'
            }
        }

        stage('Test Feature Branch') {
            steps {
                echo "Building branch: ${env.BRANCH_NAME}"
            }
        }
    }

    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed. Check the console output.'
        }
    }
}
