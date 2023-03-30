pipeline {
    agent any
    tools {
        maven '3.9.1'
    }
    stages {
        stage ('environment test') {
            steps {
                sh 'docker version'
                sh 'mvn --version'
                sh 'java --version'
            }
        }
        stage ("build & SonarQube analysis") {
            steps {
                withSonarQubeEnv('sonarqube') {
                    sh 'mvn clean package sonar:sonar'
                }
            }
        }
        stage ('building docker image') {
            steps {
                sh 'echo building docker image....'
            }
        }
        stage ('push') {
            steps {
                sh 'echo pushing docker image to docker hub...'
            }
        }
    }
}
