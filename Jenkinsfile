pipeline {
    agent none
    stages {
        stage('Build Java Project') {
            agent {label 'agent1'}
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfm HelloWorld.jar Manifest.txt HelloWorld.class'
                sh 'ls'
                stash name: 'my-artifact', includes: '**'
            }
        }
        stage('Retrieve Artifact') {
            agent { label 'agent1'}
            steps {
                unstash 'my-artifact'
                //sh 'ls'
            }
        }
        stage('Execute Hello World') {
            agent { label 'master' }
            steps {
                sh 'java -jar HelloWorld.jar' 
            }
        }
    }
}
