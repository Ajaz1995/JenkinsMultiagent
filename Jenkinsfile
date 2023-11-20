pipeline {
    agent {label 'agent1'}
    stages {
        stage('Build Java Project') {
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'ls'
                stash name: 'my-artifact', includes: '**'
                sh 'rm -f HelloWorld.jar'
            }
        }
        stage('List Files') {
            steps {
                sh 'ls'
            }
        }
        stage('Execute Hello World') {
            steps {
                unstash 'my-artifact'
                sh 'java -jar HelloWorld.jar' 
            }
        }
    }
}
