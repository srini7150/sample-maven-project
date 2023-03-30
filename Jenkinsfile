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
        stage ('build & sonarscan') {
            steps {
                sh 'mvn sonar:sonar'
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
