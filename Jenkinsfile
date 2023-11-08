pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent {label 'master'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'ls'
                stash name: 'my-artifact', includes: '**'
                sh 'rm -f HelloWorld.jar'
            }
        }
        stage('Retrieve Artifact') {
            agent { label 'agent1'}
            steps {
                unstash 'my-artifact'
                sh 'ls'
            }
        }
        stage('Execute Hello World') {
            agent any
            steps {
                sh 'java -jar HelloWorld.jar' 
            }
        }
    }
}
