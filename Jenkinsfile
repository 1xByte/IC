pipeline {
    agent any
    
    options {
        // Skip default checkout to manually configure git checkout
        skipDefaultCheckout()
    }
    
    environment {
        // Define tool installations and environment variables
        JAVA_HOME = tool 'JDK17'
        MAVEN_HOME = tool 'maven-3'
        PATH = "${env.PATH}:${MAVEN_HOME}/bin"
    }
    
    stages {
        stage('Git Checkout') {
            steps {
                // Checkout the source code from Git repository
                git branch: 'main', url: 'https://github.com/1xByte/IC.git'
            }
        }
        
        stage('Maven Build Package') {
            steps {
                // Build the project using Maven
                sh 'mvn clean package'
            }
        }
        
        // stage('SonarQube Analysis') {
        //     steps {
        //         // Run SonarQube analysis
        //         withSonarQubeEnv('sonar-test') {
        //             sh '''mvn sonar:sonar \
        //                 -Dsonar.projectKey=project_test_sonar \
        //                 -Dsonar.host.url=http://localhost:9000 \
        //                 -Dsonar.login=8196235fa8c852c6fe9e04523ccdc096c1c952b0'''
        //         }
        //     }
        // }
        
        stage('Docker Image Creation') {
            steps {
                // Build Docker image
                sh 'docker build -t myimage .'
                
                // Push Docker image to registry (optional)
                // sh 'docker push myimage'
            }
        }
    }
    
    post {
        success {
            echo 'Pipeline completed successfully!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}
