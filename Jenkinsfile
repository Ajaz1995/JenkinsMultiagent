pipeline {
    agent {label 'agent-test'}
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
        stage('Retrieve Artifact') {
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
