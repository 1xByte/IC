pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                // Build the Spring Boot project using Maven
                sh 'mvn clean package'
            }
        }

        stage('SonarQube Analysis') {
            steps {
                // Run SonarQube analysis
                withSonarQubeEnv('SonarQubeServer') {
                    sh 'mvn sonar:sonar'
                }
            }
        }
    }

    post {
        success {
            echo 'The pipeline has been successfully executed!'
        }
        failure {
            echo 'The pipeline has failed!'
        }
    }
}
