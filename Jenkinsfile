pipeline {
agent any

    stages {
        stage('Checkout') {
            steps {
               checkout changelog: false, poll: false, scm: [$class: 'GitSCM', branches: [[name: '*/main']], extensions: [], userRemoteConfigs: [[credentialsId: 'bhutaigit', url: 'https://github.com/adityac90/google-container-test-sample.git']]]
            }
        }
        stage('Build Image') {
            steps {
                echo 'Starting to build docker image'

                script {
                    def customImage = docker.build("my-image:new","-f ./Dockerfile . ")
                }
            }
                 
        }
        stage('Test image') {
            steps {
                echo 'Starting to run container structure test against the docker image'

                script {
                   bat 'run.bat'
                }
            }
        }
    }
}
